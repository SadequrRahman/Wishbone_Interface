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
			data_i,
			data_o, 
			addr_i, 
			status, 
			option, 
			i2c_data_i, 
			i2c_addr, 
			i2c_data_o  
			: std_logic_vector(7 downto 0);
	
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
		wbm_status	: inout std_logic_vector(7 downto 0);
		wbm_option	: inout std_logic_vector(7 downto 0);
		wbm_data_i	: inout std_logic_vector(7 downto 0);
		wbm_data_o 	: inout std_logic_vector(7 downto 0);
		wbm_addr	: inout std_logic_vector(7 downto 0)
		);
	end component;
	

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
		wbm_data_i	=> addr_i,
		wbm_data_o 	=> data_o,
		wbm_addr	=> addr_i
	);
	
	
	stdby <= '0';
	enI2C <= '1';
	
	main : process
	begin
		i2c_enable <= '0';
		i2c_data_i <= x"34";
		i2c_addr <= x"84";
		i2c_enable <= '1';
		wait until i2c_ack = '1';
		i2c_enable <= '0';
		
	end process main;

	
end sample_arch;