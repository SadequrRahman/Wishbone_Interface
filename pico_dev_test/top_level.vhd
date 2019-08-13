library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity top is 
	port(
		led : out std_logic
	);
end top;


architecture sample_arch of top is
	signal osc_clk, stdby, stdby_sed : std_logic;
	signal myCounter : unsigned( 18 downto 0) := (others => '0') ;
	
	
	COMPONENT OSCH 
	GENERIC  (NOM_FREQ: string := "133.00");
	PORT (STDBY:IN std_logic; OSC:OUT std_logic; SEDSTDBY:OUT std_logic); 
	END COMPONENT; 
	

begin
	OSCInst0: OSCH 
	GENERIC MAP( NOM_FREQ  => "133.00" )    
	PORT MAP (STDBY=>  stdby, OSC =>  osc_clk, SEDSTDBY =>  stdby_sed);
	
	led <= '1' when myCounter(4) = '1' else '0';
	
	counter : process(osc_clk)
	begin
	if(rising_edge(osc_clk)) then
		myCounter <= myCounter + '1';
	end if;
	
	end process;
	

end sample_arch;