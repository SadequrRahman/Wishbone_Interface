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
		heart_beat 		: out std_logic
	);
end top_module;


architecture sample_arch of top_module is

	
	signal stdby, sys_clk, stdby_sed : std_logic;
	signal addr_i, data_io : std_logic_vector(7 downto 0);
	signal rdy_o : std_logic;
	
	
	COMPONENT OSCH 
	GENERIC  (NOM_FREQ: string := "133.00");
	PORT (STDBY:IN std_logic; OSC:OUT std_logic; SEDSTDBY:OUT std_logic); 
	END COMPONENT; 
	
	COMPONENT HeartBeat 
	GENERIC (SPEED: integer := 20 );
	PORT ( RST_n : IN std_logic; CLK	:IN std_logic; LED : OUT std_logic);
	END COMPONENT; 
	
	COMPONENT i2c_master_controller 
	PORT(
		rst_n 	: in std_logic;
		clk	  	: in std_logic;
		addr  	: in std_logic_vector(7 downto 0);
		data  	: inout std_logic_vector(7 downto 0);
		scl     : inout std_logic;			-- to connect hardware pin from top level
		sda     : inout std_logic;			-- to connect hardware pin from top level
		rdy	  	: out std_logic
	);
	END COMPONENT;
	
	
begin
	OSCInst0: OSCH 
	GENERIC MAP( NOM_FREQ  => "133.00" )    
	PORT MAP (STDBY=>  stdby, OSC =>  sys_clk, SEDSTDBY =>  stdby_sed);
	
	HeartBeatInst0 :HeartBeat
	PORT MAP (RST_n=>  rst_n, CLK =>  sys_clk, LED =>  heart_beat);
	
	
	i2c_master_controller_Inst0 : i2c_master_controller
	PORT MAP (
		rst_n=>rst_n,
		clk=>sys_clk,
		addr=>addr_i,
		data=>data_io,
		scl=>scl,
		sda=>sda,
		rdy=>rdy_o
	
	);
	
	stdby <= '0';
	
	
end sample_arch;