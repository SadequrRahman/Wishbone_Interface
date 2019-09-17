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

	
	signal stdby, sys_clk, stdby_sed, i2c_ack_o : std_logic;
	signal addr_i, i2c_data_i, i2c_data_o, status, option : std_logic_vector(7 downto 0) := (others => '0');
	
	
	COMPONENT OSCH 
		GENERIC  (NOM_FREQ: string := "133.00");
		PORT (
			STDBY:IN std_logic; 
			OSC:OUT std_logic; 
			SEDSTDBY:OUT std_logic
			); 
	END COMPONENT; 
	
	COMPONENT HeartBeat 
		GENERIC (SPEED: integer := 20 );
		PORT ( 
			RST_n : IN std_logic; 
			CLK	:IN std_logic; 
			LED : OUT std_logic
			);
	END COMPONENT; 

	COMPONENT i2c_master_controller 
	PORT(
		rst_n 		: in std_logic;
		clk	  		: in std_logic;
		data_i 		: in std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		scl      	: inout std_logic;			
		sda      	: inout std_logic;
		data_o		: out std_logic_vector(7 downto 0);
		ack_o		: out std_logic
	);
	END COMPONENT;
	
	
begin
	OSCInst0: OSCH 
	GENERIC MAP( NOM_FREQ  => "133.00" )    
	PORT MAP (
		STDBY=>stdby, 
		OSC =>sys_clk, 
		SEDSTDBY =>stdby_sed
	);
	
	HeartBeatInst0 :HeartBeat
	PORT MAP (
		RST_n=>rst_n, 
		CLK =>sys_clk, 
		LED =>heart_beat
		);

	--i2c_master_controller_Inst0 : i2c_master_controller
	--PORT MAP (
		--rst_n=>rst_n,
		--clk=>sys_clk,
		--data_i=>i2c_data_i,
		--addr_i=>addr_i,
		--scl=>scl,		
		--sda=>sda,
		--data_o=>i2c_data_o,
		--ack_o=>i2c_ack_o
	--);
	
	stdby <= '0';
	enI2C <= '1';
	
	main : process
	
	begin
		addr_i <= x"F5";
		i2c_data_i <= x"F4";
		wait until (i2c_ack_o = '1' );
	end process main;
	
--main : process
	
	--begin
		--addr_i <=  x"44";
		--data_io <= x"F3";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"94";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"44";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		
		
		
		--addr_i <=  x"44";
		--data_io <= "11001010";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"94";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"44";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		
		--addr_i <=  x"44";
		--data_io <= x"01";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"94";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"44";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		
		
		--addr_i <=  x"44";
		--data_io <= "01100001";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"94";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		--addr_i <=  x"41";
		--data_io <= x"44";
		--option <= x"03";
		--wait until (status(5) = '1');
		--option <= x"00";
		
		--wait;
		
	
--end process main;
	
end sample_arch;