library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity timeout_tb is
end timeout_tb;


architecture timeout_tb_rtl of timeout_tb is

	constant CLK_PERIOD : time := 100ns ;
	signal clk, en, rst, timeout : std_logic := '0';

begin

	uut : entity work.timeout port map
	(
		clk => clk,
		rst => rst,
		en => en,
		timeout => timeout
	);
	
	
	clk_gen : process
	begin
		clk <= '1';
		wait for CLK_PERIOD/2;
		clk <= '0';
		wait for CLK_PERIOD/2;
	end process clk_gen;
	
	
	stimuli_gen : process
	begin
		rst <= '1';
		wait for CLK_PERIOD;
		rst <= '0';
		wait for CLK_PERIOD/2;
		en <= '1';
		wait until timeout = '1';
		en <= '0';
		rst <= '1';
		wait for CLK_PERIOD;
		rst <= '0';
		wait;
	end process stimuli_gen;
	
	

end;