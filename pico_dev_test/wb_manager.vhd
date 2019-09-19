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
			option		: in std_logic_vector(7 downto 0);
			status		: out std_logic_vector(7 downto 0);
			data_o 		: out std_logic_vector(7 downto 0);
			scl      	: inout std_logic;			-- to connect hardware pin from top level
			sda      	: inout std_logic			-- to connect hardware pin from top level
	);
end wb_manager;



architecture rtl of wb_manager is

	--***********************************************************************
	--	CONSTANT
	--***********************************************************************
	constant wb_busy_bit 				: integer := 7;
	constant wb_read_complete_bit 		: integer := 6;
	constant wb_write_complete_bit 		: integer := 5;
	constant wb_timeout_bit 			: integer := 4;
	constant wb_we_cmd_bit 				: integer := 1;
	constant wb_init_cmd_bit 			: integer := 0;

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
	signal rst_p 	: std_logic := '0';
	
	--**********************************************************
	--
	--	Time out Interface Signal
	--
	--**********************************************************
	signal timeout_rst	: std_logic := '1';
	signal enTimeout	: std_logic := '0';	
	signal isTimeOut	: std_logic := '0';
	
	-- Enumerated type declaration and state signal declaration
	type state_t is (IDLE, ACTIVE_WB, ASSERT_CTRL, WAIT_ACK, UPDATE_STATUS_FLAG, TIMEOUT_ACK);
	signal cState : state_t := IDLE; -- current state variable
	signal nState : state_t := IDLE;
	
	-- internal signal
	signal wb_active : std_logic :=  '0';
	signal wb_busy 	 : std_logic :=  '0';
	signal wb_read_complete : std_logic :=  '0';
	signal wb_write_complete : std_logic := '0';
	signal wb_timeout_err : std_logic := '0';

	-- parameterized module component declaration
	component efb_i2c_VHDL
    port (
			wb_clk_i: in  std_logic; wb_rst_i: in  std_logic; 
			wb_cyc_i: in  std_logic; wb_stb_i: in  std_logic; 
			wb_we_i: in  std_logic; 
			wb_adr_i: in  std_logic_vector(7 downto 0); 
			wb_dat_i: in  std_logic_vector(7 downto 0); 
			wb_dat_o: out  std_logic_vector(7 downto 0); 
			wb_ack_o: out  std_logic; i2c1_scl: inout  std_logic; 
			i2c1_sda: inout  std_logic; i2c1_irqo: out  std_logic);
	end component;
	
	-- timeout component
	component timeout
	generic  (
		DEFAULT: integer := 10 
	);
	port(
		clk 		: in std_logic;
		rst			: in std_logic;
		en			: in std_logic;
		timeout 	: out std_logic
	);
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
		
	-- timeout instance
	timeoutIns : timeout
	generic map( DEFAULT => 50 )
	port map(
		clk => clk_i,
		rst => timeout_rst,
		en => enTimeout,
		timeout => isTimeout
	);
		
	rst_p <= not(rst_n_i);
	wb_dat_i <= data_i when wb_active = '1' and option(wb_we_cmd_bit) = '1' else (others =>'Z');
	wb_adr_i <= addr_i when wb_active ='1' else (others =>'Z');
	data_o  <= wb_dat_o when wb_active = '1' and option(wb_we_cmd_bit) = '0' else (others =>'Z');
	
		
	reset_block : process(rst_n_i, clk_i)
		-- declare veriables here 
	begin
		if( rst_n_i = '0') then
			-- reset logic here
			cState <= IDLE;
			status <= ( others=> '0');
		else
			if rising_edge(clk_i) then
				cState <= nState;
				status <= ( wb_busy_bit => wb_busy, wb_read_complete_bit =>wb_read_complete, wb_write_complete_bit => wb_write_complete, wb_timeout_bit => wb_timeout_err,others=> '0');
			end if;
		end if;
	end process reset_block;
	
	next_state_logic : process(cState, option(0),option(1),option(2), wb_ack_o, isTimeout) 
			begin
		case (cState) is
			when IDLE =>
					if option(wb_init_cmd_bit) = '1' then
						nState <= ACTIVE_WB;
					else
						nState <= IDLE;
					end if;
			when ACTIVE_WB =>
					nState <= ASSERT_CTRL;
			when ASSERT_CTRL =>
					nState <= WAIT_ACK;
			when WAIT_ACK =>
						if wb_ack_o = '1' then 
							nState <= UPDATE_STATUS_FLAG;
						else
							if isTimeout = '1' then
								nState <= TIMEOUT_ACK;
							end if;
						end if;
			when UPDATE_STATUS_FLAG =>
						if option(wb_we_cmd_bit) = '0' then
							nState <= UPDATE_STATUS_FLAG;
						else
							if option(2) = '1' then 
								nState <= ACTIVE_WB;
							else
								nState <= IDLE;
							end if;
						end if;
			when TIMEOUT_ACK =>
					nState <= IDLE;	
		end case; 

	end process next_state_logic;

	output_logic : process(cState, option(wb_we_cmd_bit))
	begin
		wb_active <= '0';
		wb_cyc_i <= '0';
		wb_stb_i <= '0';
		wb_we_i <= '0';
		wb_busy <= '0';
		wb_we_i <= '0';
		wb_read_complete <= '0';
		wb_write_complete <= '0';
		wb_timeout_err <= '0';
		enTimeout <= '0';
		timeout_rst <= '1';
		
		
		case (cState) is
			when IDLE =>
			when ACTIVE_WB =>
						wb_busy <= '1';
						wb_active <= '1';
			when ASSERT_CTRL =>
						wb_busy <= '1'; 
						wb_active <= '1';
						if option(wb_we_cmd_bit) = '0' then 
							wb_we_i <= '0';
						else
							wb_we_i <= '1';
						end if;
						wb_cyc_i <= '1';
						wb_stb_i <= '1';
						timeout_rst <= '0';
						enTimeout <='1';
			when WAIT_ACK =>
						wb_busy <= '1';
						wb_active <= '1';
						wb_cyc_i <= '1';
						wb_stb_i <= '1';
						timeout_rst <= '0';
						enTimeout <='1';
			when UPDATE_STATUS_FLAG =>
						wb_busy <= '1';
						if option(wb_we_cmd_bit) = '0' then 
							wb_read_complete <= '1';
						else
							wb_write_complete <= '1';
						end if;
			when TIMEOUT_ACK =>
						wb_busy <= '1';
						wb_timeout_err <= '1';
		end case; 
		
	end process output_logic;
	

end rtl;