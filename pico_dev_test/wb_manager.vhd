library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 




entity wb_manager is
	port(
			clk_i		: in std_logic;
			rst_n_i		: in std_logic;
			data_i 		: in std_logic_vector(7 downto 0);
			addr_i 		: in std_logic_vector(7 downto 0);
			status_reg	: out std_logic_vector(7 downto 0);
			option_reg	: out std_logic_vector(7 downto 0);
			data_o 		: out std_logic_vector(7 downto 0);
			-- interface port (e.g i2c, spi etc)
			scl      : inout std_logic;			-- to connect hardware pin from top level
			sda      : inout std_logic			-- to connect hardware pin from top level
	);
end wb_manager;



architecture mix_arc of wb_manager is

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

	-- internal signal
	signal wb_active : std_logic :=  '0';

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
		port map (
				wb_clk_i=>clk_i, 
				wb_rst_i=>rst_p, 
				wb_cyc_i=>wb_cyc_i, 
				wb_stb_i=>wb_stb_i, 
				wb_we_i=>wb_we_i, 
				wb_adr_i(7 downto 0)=>wb_adr_i, 
				wb_dat_i(7 downto 0)=>wb_dat_i, 
				wb_dat_o(7 downto 0)=>wb_dat_o,
				wb_ack_o=>wb_ack_o,
				i2c1_scl=>scl, 
				i2c1_sda=>sda, 
				i2c1_irqo=>i2c1_irqo
		);
		
	rst_p <= not(rst_n_i);
	wb_dat_i <= data_i when wb_active = '1' else (others =>'0');
	wb_adr_i <= addr_i when wb_active ='1' else (others =>'0');
	data_o <= wb_dat_o when wb_active = '1' else (others =>'0');
	
		
	process(clk_i, rst_n_i)
		-- declare veriables here 
	begin
		if( rst_n_i = '0') then
		-- reset logic here
		else
			if(rising_edge(clk_i)) then
			
			end if;
		end if;

	end process;

end mix_arc;