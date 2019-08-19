library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 



entity i2c_master_controller is
	port(
		rst_n : in std_logic;
		clk	  : in std_logic;
		addr  : in std_logic_vector(7 downto 0);
		data  : inout std_logic_vector(7 downto 0);
		scl      : inout std_logic;			-- to connect hardware pin from top level
		sda      : inout std_logic;			-- to connect hardware pin from top level
		rdy	  : out std_logic
	);
end i2c_master_controller;



architecture beh_i2c_master_controller of i2c_master_controller is
	
--/***********************************************************************
 --*                                                                     *
 --* WISHBONE INTERFACE SIGNAL                                           *
 --*                                                                     *
 --***********************************************************************/
signal wb_dat_i : std_logic_vector(7 downto 0) := ( others=>'0') ;
signal wb_stb_i : std_logic := '0';
signal wb_cyc_i : std_logic := '0' ;
signal wb_adr_i : std_logic_vector(7 downto 0) := ( others=>'0');
signal wb_we_i  : std_logic := '0';
signal wb_dat_o : std_logic_vector(7 downto 0) := ( others=>'0');
signal wb_ack_o : std_logic := '0';
signal i2c1_irqo: std_logic := 'Z';
signal rst_p : std_logic := '0';

--/***********************************************************************
 --*                                                                     *
 --* I2C REGISTER DESCRIPTION                                            *
 --*                                                                     *
 --***********************************************************************/
 constant I2C1_CR : std_logic_vector (7 downto 0) := x"40";		-- Control register
 constant I2C1_CMDR : std_logic_vector (7 downto 0) := x"41";	-- Command register
 constant I2C1_TXDR : std_logic_vector (7 downto 0) := x"44";	-- Transmit data register
 constant I2C1_SR : std_logic_vector (7 downto 0) := x"45";		-- Status register
 constant I2C1_RXDR : std_logic_vector (7 downto 0) := x"47";	-- Receive Data register
 
 --/***********************************************************************
 --*                                                                      *
 --* I2C REGISTER MASKS                                            		  *
 --*                                                                      *
 --***********************************************************************/
 
 

-- parameterized module component declaration
component efb_i2c_VHDL
    port (wb_clk_i: in  std_logic; wb_rst_i: in  std_logic; 
        wb_cyc_i: in  std_logic; wb_stb_i: in  std_logic; 
        wb_we_i: in  std_logic; 
        wb_adr_i: in  std_logic_vector(7 downto 0); 
        wb_dat_i: in  std_logic_vector(7 downto 0); 
        wb_dat_o: out  std_logic_vector(7 downto 0); 
        wb_ack_o: out  std_logic; i2c1_scl: inout  std_logic; 
        i2c1_sda: inout  std_logic; i2c1_irqo: out  std_logic);
end component;
	
begin

-- parameterized module component instance
efb_i2c_Inst0 : efb_i2c_VHDL
    port map (wb_clk_i=>clk, wb_rst_i=>rst_p, wb_cyc_i=>wb_cyc_i, wb_stb_i=>wb_stb_i, 
        wb_we_i=>wb_we_i, wb_adr_i(7 downto 0)=>wb_adr_i, wb_dat_i(7 downto 0)=>wb_dat_i, 
        wb_dat_o(7 downto 0)=>wb_dat_o, wb_ack_o=>wb_ack_o, i2c1_scl=>scl, i2c1_sda=>sda, 
        i2c1_irqo=>i2c1_irqo);

rst_p <= not(rst_n);

end beh_i2c_master_controller;