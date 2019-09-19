library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity timeout is
generic  (
		DEFAULT: integer := 10  -- number of clock cycle 
	);
port(
		clk 		: in std_logic;
		rst			: in std_logic;
		en			: in std_logic;
		timeout 	: out std_logic
	);
end entity;


architecture rtl_timeout of timeout is

signal clk_counter : unsigned ( 15 downto 0) := (others => '0');

begin

	timeout <= '1' when (clk_counter >= DEFAULT ) else '0';
	
	main : process(clk)
	begin
		if rst = '1' then
			clk_counter <= (others=>'0');
		else
			if rising_edge(clk) and en = '1' then
				clk_counter <= clk_counter + 1;
			end if;
		end if;
	end process main;
end rtl_timeout;