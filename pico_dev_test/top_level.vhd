library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 


entity top_module is 
	port(
		rst_n 			: in std_logic;
		enI2C			: out std_logic;
		heart_beat 		: out std_logic;
		scl      		: inout std_logic;
		sda      		: inout std_logic
	);
end top_module;


architecture sample_arch of top_module is
	
	signal 
			stdby, 
			sys_clk, 
			stdby_sed, 
			i2c_enable, 
			i2c_ack 
			: std_logic;
	signal 
			data_o,
			status, 
			i2c_data_i, 
			i2c_addr, 
			i2c_data_o  
			: std_logic_vector(7 downto 0);
			
	signal option, data_i, addr_i : std_logic_vector( 7 downto 0) := (others => '0');
			
	component OSCH 
	generic  (NOM_FREQ: string := "133.00");
	port (
		STDBY:IN std_logic; 
		OSC:OUT std_logic; 
		SEDSTDBY:OUT std_logic
		); 
	end component;
	
	component HeartBeat 
	generic (SPEED: integer := 3 );
	port ( 
		RST_n : IN std_logic; 
		CLK	:IN std_logic; 
		LED : OUT std_logic
		);
	end component;
	
	component wb_manager 
	port ( 
		clk_i		: in std_logic;
		rst_n_i		: in std_logic;
		data_i 		: in std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		option		: in std_logic_vector(7 downto 0);
		status		: out std_logic_vector(7 downto 0);
		data_o 		: out std_logic_vector(7 downto 0);
		scl      	: inout std_logic;			-- to connect hardware pin from top level
		sda      	: inout std_logic			-- to connect hardware pin from top level
		);
	end component;
	
	component i2c_master_controller 
	port ( 
		rst_n 		: in std_logic;
		clk	  		: in std_logic;
		enable		: in std_logic;
		data_i 		: in std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		data_o		: out std_logic_vector(7 downto 0);
		ack_o		: out std_logic;
		-- wishbone ctrl signals
		wbm_status	: in std_logic_vector(7 downto 0);  --output from wb manager input for master controller
		wbm_option	: out std_logic_vector(7 downto 0); --input for wb manager output for master controller
		wbm_data_i	: out std_logic_vector(7 downto 0); --input for wb manager output for master controller
		wbm_data_o 	: in std_logic_vector(7 downto 0); --output from wb manager input for master controller
		wbm_addr	: out std_logic_vector(7 downto 0) --input for wb manager output for master controller
		);
	end component;
	
	type state_t is (S0, S1, S2);
	signal cState, nState : state_t := S0;
	

begin
	OSCInst0: OSCH 
	generic map( NOM_FREQ  => "133.00" )    
	port map (
		STDBY=>stdby, 
		OSC =>sys_clk, 
		SEDSTDBY =>stdby_sed
	);
	
	HeartBeatInst0 :HeartBeat
	port map (
		RST_n=>rst_n, 
		CLK =>sys_clk, 
		LED =>heart_beat
	);
	
	wb_manager_inst : wb_manager
	port map(
		clk_i		=> sys_clk,
		rst_n_i		=> rst_n,
		data_i 		=> data_i,
		addr_i 		=> addr_i,
		option		=> option,
		status		=> status,
		data_o 		=> data_o,
		scl      	=> scl,
		sda      	=> sda
	);
	
	i2c_controller_inst : i2c_master_controller
	port map (
		rst_n 		=> rst_n,
		clk	  		=> sys_clk,
		enable		=> i2c_enable,
		data_i 		=> i2c_data_i,
		addr_i 		=> i2c_addr,
		data_o		=> i2c_data_o,
		ack_o		=> i2c_ack,
		-- wishbone ctrl signals
		wbm_status	=> status,
		wbm_option	=> option,
		wbm_data_i	=> data_i,
		wbm_data_o 	=> data_o,
		wbm_addr	=> addr_i
	);
	
	
	stdby <= '0';
	enI2C <= '1';
	
	process(sys_clk)
	begin
		if rst_n = '0' then
			cState <= S0;
		else
			if rising_edge(sys_clk) then
				cState <= nState;
			end if;
		end if;
	end process;
	
	-- state output logic
	process(cState)
	begin
		i2c_enable <= '0';
		i2c_data_i <= x"00";
		i2c_addr <= x"00";
		case cState is
			when S0 =>
			when S1 =>
				i2c_data_i <= x"F4";
				i2c_addr <= x"84";
				i2c_enable <= '1';
			when S2 =>
			end case;
	end process;
	
	-- next state logic
	process(cState, i2c_ack)
	begin
		case cState is
			when S0 =>
				nState <= S1;
			when S1 =>
				if i2c_ack = '1' then
					nState <= S2;
				end if;
			when S2 =>
				nState <= S0;
		end case;
	end process;
	
	

	
end sample_arch;