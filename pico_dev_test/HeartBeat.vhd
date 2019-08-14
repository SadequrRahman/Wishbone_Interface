library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 


entity HeartBeat is 
Port(
		CLK	: in std_logic;
		RST_n : in std_logic;
		LED : out std_logic
	);
end HeartBeat;



architecture beh_arch of HeartBeat is
	signal iCounter : unsigned(27 downto 0);
begin
	LED <= std_logic(iCounter(27));
	
	process(RST_n,CLK)
	begin
	if (RST_n = '0') then
		iCounter <= (others => '0');
	else
		if rising_edge(CLK) then 
			iCounter <= iCounter + 1;
		end if;
	end if;
	end process;


end beh_arch;
		