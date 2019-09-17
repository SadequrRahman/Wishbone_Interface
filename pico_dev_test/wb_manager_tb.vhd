LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY wb_manager_tb IS
END wb_manager_tb;

ARCHITECTURE behavior OF wb_manager_tb IS 


	COMPONENT OSCH 
	GENERIC  (NOM_FREQ: string := "133.00");
	PORT (
		STDBY:IN std_logic; 
		OSC:OUT std_logic; 
		SEDSTDBY:OUT std_logic
		); 
	END COMPONENT; 

	SIGNAL clk_i 		:  std_logic := '0';
	SIGNAL rst_n_i 		:  std_logic;
	SIGNAL data_i 		:  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL data_o 		:  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL addr_i 		:  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL option 		:  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL status 		:  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL scl 			:  std_logic := '1';
	SIGNAL sda 			:  std_logic := '1';
	SIGNAL stdby 		:  std_logic;
	SIGNAL stdby_sed 	: std_logic;
	CONSTANT CLK_PERIOD : time := 50ns ;
	
BEGIN

-- Please check and add your generic clause manually
	uut: entity work.wb_manager 
	PORT MAP(
			clk_i => clk_i,
			rst_n_i => rst_n_i,
			data_i => data_i,
			addr_i => addr_i,
			option => option,
			status => status,
			data_o => data_o,
			scl => scl,
			sda => sda
	);
	-- internal clock generator unit
	OSCInst0: OSCH 
	GENERIC MAP( NOM_FREQ  => "133.00" )    
	PORT MAP (
		STDBY=>stdby, 
		OSC =>clk_i, 
		SEDSTDBY =>stdby_sed
	);
	stdby <= '0';
-- *** Test Bench - User Defined Section ***
	
   stimuli_gen : PROCESS
   BEGIN
   
		rst_n_i <= '0';
		wait for CLK_PERIOD;
		rst_n_i <= '1';
		wait for CLK_PERIOD/2;
		
		addr_i <=  x"44";
		data_i <= x"F3";
		option <= x"03";
		wait until (status(5) = '1');
		option <= x"00";
		addr_i <=  x"41";
		data_i <= x"94";
		option <= x"03";
		wait until (status(5) = '1');
		option <= x"00";
		addr_i <=  x"41";
		data_i <= x"44";
		option <= x"03";
		wait until (status(5) = '1');
		option <= x"00";
		
		wait;
   END PROCESS stimuli_gen;
-- *** End Test Bench - User Defined Section ***

END;
