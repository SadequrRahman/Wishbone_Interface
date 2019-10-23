library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 


entity top_level_tb is
end entity;

architecture rtl of top_level_tb is

	signal rst_n, enI2C, heart_beat : std_logic;
	signal scl, sda : std_logic := 'H';

begin 
	
	uut : entity work.top_module port map
	(
		rst_n 			=> rst_n,
		enI2C			=> enI2C,
		heart_beat 		=> heart_beat,
		scl      		=> scl,
		sda      		=> sda
	);
	
	process
	begin
		rst_n <= '0';
		wait for 10ns;
		rst_n <= '1';
		
		
	
		wait;
	end process;
	

end rtl;