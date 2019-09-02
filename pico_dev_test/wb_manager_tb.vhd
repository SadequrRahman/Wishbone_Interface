
-- VHDL Test Bench Created from source file wb_manager.vhd -- Tue Aug 27 11:10:23 2019

--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
-- 3) VHDL simulations will produce errors if there are Lattice FPGA library 
-- elements in your design that require the instantiation of GSR, PUR, and
-- TSALL and they are not present in the testbench. For more information see
-- the How To section of online help.  
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT wb_manager
	PORT(
		clk_i : IN std_logic;
		rst_n_i : IN std_logic;
		addr_i : IN std_logic_vector(7 downto 0);
		option_reg : IN std_logic_vector(7 downto 0);    
		data_io : INOUT std_logic_vector(7 downto 0);
		scl : INOUT std_logic;
		sda : INOUT std_logic;      
		status_reg : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	SIGNAL clk_i :  std_logic := '0';
	SIGNAL rst_n_i :  std_logic;
	SIGNAL data_io :  std_logic_vector(7 downto 0);
	SIGNAL addr_i :  std_logic_vector(7 downto 0);
	SIGNAL option_reg :  std_logic_vector(7 downto 0);
	SIGNAL status_reg :  std_logic_vector(7 downto 0);
	SIGNAL scl :  std_logic;
	SIGNAL sda :  std_logic;
	CONSTANT time CLK_PERIOD = 100ns ;
	
BEGIN

-- Please check and add your generic clause manually
	uut: wb_manager PORT MAP(
		clk_i => clk_i,
		rst_n_i => rst_n_i,
		data_io => data_io,
		addr_i => addr_i,
		option_reg => option_reg,
		status_reg => status_reg,
		scl => scl,
		sda => sda
	);


-- *** Test Bench - User Defined Section ***
	clk_gen : process
	begin
	clk_i <= not clk_i wait for CLK_PERIOD/2;
	end process clk_gen;

   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
