library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 


entity top_module is 
	port(
		rst_n 			: in std_logic;
		scl      		: inout std_logic;
		sda      		: inout std_logic;
		usb_osc			: in std_logic;
		enI2C			: out std_logic;
		heart_beat 		: out std_logic
	);
end top_module;


architecture sample_arch of top_module is

	
	signal stdby, sys_clk, stdby_sed : std_logic;
	signal addr_i, data_io, status, option : std_logic_vector(7 downto 0) := (others => '0');
	signal rdy_o : std_logic;
	
	
	COMPONENT OSCH 
	GENERIC  (NOM_FREQ: string := "133.00");
	PORT (STDBY:IN std_logic; OSC:OUT std_logic; SEDSTDBY:OUT std_logic); 
	END COMPONENT; 
	
	COMPONENT HeartBeat 
	GENERIC (SPEED: integer := 20 );
	PORT ( RST_n : IN std_logic; CLK	:IN std_logic; LED : OUT std_logic);
	END COMPONENT; 
	
	COMPONENT wb_manager 
	PORT(
		clk_i		: in std_logic;
		rst_n_i		: in std_logic;
		data_io 	: inout std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		option_reg	: in std_logic_vector(7 downto 0);
		status_reg	: out std_logic_vector(7 downto 0);
		scl      : inout std_logic;			
		sda      : inout std_logic
	);
	END COMPONENT;
	
	--COMPONENT i2c_master_controller 
	--PORT(
		--rst_n 	: in std_logic;
		--clk	  	: in std_logic;
		--addr  	: in std_logic_vector(7 downto 0);
		--data  	: inout std_logic_vector(7 downto 0);
		--scl     : inout std_logic;			-- to connect hardware pin from top level
		--sda     : inout std_logic;			-- to connect hardware pin from top level
		--rdy	  	: out std_logic
	--);
	--END COMPONENT;
	
	
begin
	OSCInst0: OSCH 
	GENERIC MAP( NOM_FREQ  => "133.00" )    
	PORT MAP (STDBY=>  stdby, OSC =>  sys_clk, SEDSTDBY =>  stdby_sed);
	
	HeartBeatInst0 :HeartBeat
	PORT MAP (RST_n=>  rst_n, CLK =>  sys_clk, LED =>  heart_beat);
	
	wb_manager0 : wb_manager
	PORT MAP(
			clk_i => sys_clk,
			rst_n_i => rst_n,
			data_io => data_io,
			addr_i => addr_i,
			option_reg => option,
			status_reg => status,
			scl => scl,		
			sda=> sda	
		);
	
	--i2c_master_controller_Inst0 : i2c_master_controller
	--PORT MAP (
		--rst_n=>rst_n,
		--clk=>sys_clk,
		--addr=>addr_i,
		--data=>data_io,
		--scl=>scl,
		--sda=>sda,
		--rdy=>rdy_o
	
	--);
	
	stdby <= '0';
	enI2C <= '1';
	
main : process
	
	begin
		addr_i <=  x"44";
		data_io <= x"F3";
		option <= x"03";
		wait until (status(5) = '1');
		option <= x"00";
		addr_i <=  x"41";
		data_io <= x"94";
		option <= x"03";
		wait until (status(5) = '1');
		option <= x"00";
		addr_i <=  x"41";
		data_io <= x"44";
		option <= x"03";
		wait until (status(5) = '1');
		option <= x"00";
	
end process main;
	
end sample_arch;