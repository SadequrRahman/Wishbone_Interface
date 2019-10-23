library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 


entity top_module_tb is
end entity;



architecture testbanch of top_module_tb is
	
	signal rst_n_tb, led_tb : std_logic;
	signal scl_tb, sda_tb : std_logic;
	
	component top_module
	port(
		rst_n 			: in std_logic;
		scl      		: inout std_logic;
		sda      		: inout std_logic;
		heart_beat 		: out std_logic
		);
	end component;

begin 
	
	uut : top_module 
	port map (
			rst_n => rst_n_tb,
			scl => scl_tb,
			sda => sda_tb,
			heart_beat => led_tb
			
	);
	
	process
	begin 
	wait for 100ns;
	rst_n_tb <= '1';
	wait for 500ns;
	rst_n_tb <= '0';
	wait for 1ms;
	end process;


end testbanch;