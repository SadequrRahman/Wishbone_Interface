library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 



entity i2c_master_controller is
	port(
		rst_n 		: in std_logic;
		clk	  		: in std_logic;
		enable		: in std_logic;
		data_i 		: in std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		data_o		: out std_logic_vector(7 downto 0);
		ack_o		: out std_logic;
		-- wishbone ctrl signals
		wbm_status	: in std_logic_vector(7 downto 0);
		wbm_option	: out std_logic_vector(7 downto 0);
		wbm_data_i	: out std_logic_vector(7 downto 0);
		wbm_data_o 	: in std_logic_vector(7 downto 0);
		wbm_addr	: out std_logic_vector(7 downto 0)
	);
end i2c_master_controller;



architecture beh_i2c_master_controller of i2c_master_controller is

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
-- I2C command register mask
constant I2C_CMDR_STA	: std_logic_vector (7 downto 0) := "10000000";  	--generate a start condition
constant I2C_CMDR_STO	: std_logic_vector (7 downto 0) := "01000000";  	--generate a stop condition
constant I2C_CMDR_RD	: std_logic_vector (7 downto 0) := "00100000";  	--indicate read from slave
constant I2C_CMDR_WR	: std_logic_vector (7 downto 0) := "00010000";  	--indicate write to slave
constant I2C_CMDR_ACK	: std_logic_vector (7 downto 0) := "00001000";  	--acknowledge Option
																			--( 0: send ack, 1: send nack)
constant I2C_CMDR_CKSDIS: std_logic_vector (7 downto 0) := "00000100";		-- clock stretching disable (must write 1 for every transition)

-- I2C status register mask
constant I2C_SR_TIP	: std_logic_vector (7 downto 0) := "10000000";  		--Transmit in progress 
																			--( 1: byte transfer in progress, 0: byte transfer complete)
constant I2C_SR_BUSY : std_logic_vector (7 downto 0) := "01000000";  		--i2c bus is busy
																			--(0: not busy, 1: busy)		
constant I2C_SR_RARC : std_logic_vector (7 downto 0) := "00100000";			-- Recevice acknowladge
																			--(0: No ack receive, 1: ack receive)
constant I2C_SR_SRW : std_logic_vector (7 downto 0) := "00010000";			--slave Read/write. Indicate transmit or receive mode
																			--(1: Master receiving/ slave transmiting, 0: Master transmitting/slave receiving)
constant I2C_SR_ARBL : std_logic_vector (7 downto 0) := "00001000";			-- Arbitration lost
constant I2C_SR_TRRDY : std_logic_vector (7 downto 0) := "00000100";		-- Transmitter or receiver is ready
constant I2C_SR_TROE : std_logic_vector (7 downto 0) := "00000010";			-- Transmitter or receiver overrun error
constant I2C_SR_HGC : std_logic_vector (7 downto 0) := "00000001";			-- Hardware general call receive


-- Enumerated type declaration and state signal declaration
type state_t is (IDLE, LOAD_ADDR, SEND_ADDR, STOP_ADDR, LOAD_DATA, SEND_DATA, STOP_DATA, LOAD_ADDR_OPT_CLR, SEND_ADDR_OPT_CLR, STOP_ADDR_OPT_CLR
				, LOAD_DATA_OPT_CLR, SEND_DATA_OPT_CLR);
signal cState : state_t := IDLE;
signal nState : state_t := IDLE;
signal we	  : std_logic := '0';

begin
	
	
	process(clk, rst_n)
	begin
		if rst_n = '0' then 
			cState <= IDLE;
		else
			if rising_edge(clk) then
				cState <= nState; 
			end if;
		end if;
	end process;
	
	we <= addr_i(0);
	
	output_logic : process(cState)	
	begin
		wbm_addr <= (others => '0');
		wbm_data_i <= (others => '0');
		wbm_option <= (others => '0');
		case (cState) is
			when IDLE =>
			when LOAD_ADDR =>
				wbm_addr <= I2C1_TXDR;
				wbm_data_i <= addr_i;
				wbm_option <= x"03";
			when LOAD_ADDR_OPT_CLR =>
			when SEND_ADDR =>
				wbm_addr <= I2C1_CMDR;
				wbm_data_i <= x"94";
				wbm_option <= x"03";
			when SEND_ADDR_OPT_CLR =>
			when STOP_ADDR =>
				wbm_addr <= I2C1_CMDR;
				wbm_data_i <= x"44";
				wbm_option <= x"03";
			when STOP_ADDR_OPT_CLR =>
			when LOAD_DATA =>
				wbm_addr <= I2C1_TXDR;
				wbm_data_i <= data_i;
				wbm_option <= x"03";
			when LOAD_DATA_OPT_CLR =>
				wbm_addr <= I2C1_TXDR;
				wbm_data_i <= data_i;
			when SEND_DATA =>
				wbm_addr <= I2C1_CMDR;
				wbm_data_i <= x"94";
				wbm_option <= x"03";
			when SEND_DATA_OPT_CLR =>
			when STOP_DATA =>
				wbm_addr <= I2C1_CMDR;
				wbm_data_i <= x"44";
				wbm_option <= x"03";
		end case; 
	end process output_logic;
	
	
	next_state_logic : process(cState, wbm_status(5), enable)
	begin
		ack_o <= '0';
		case (cState) is
			when IDLE =>
				if enable = '1' then
					nState <= LOAD_ADDR;
				end if;
			when LOAD_ADDR =>
				if wbm_status(5) = '1' then 
					nState <= LOAD_ADDR_OPT_CLR;
				end if;
			when LOAD_ADDR_OPT_CLR =>
				nState <= SEND_ADDR;
			when SEND_ADDR =>
				if wbm_status(5) = '1' then 
					nState <= SEND_ADDR_OPT_CLR;
				end if;
			when SEND_ADDR_OPT_CLR =>
				nState <= STOP_ADDR;
			when STOP_ADDR =>
				if wbm_status(5) = '1' then 
					nState <= STOP_ADDR_OPT_CLR;
				end if;
			when STOP_ADDR_OPT_CLR =>
				nState <= LOAD_DATA;
			when LOAD_DATA =>
				if wbm_status(5) = '1' then 
					nState <= LOAD_DATA_OPT_CLR;
				end if;
			when LOAD_DATA_OPT_CLR =>
				nState <= SEND_DATA;
			when SEND_DATA =>
				if wbm_status(5) = '1' then 
					nState <= SEND_DATA_OPT_CLR;
				end if;
			when SEND_DATA_OPT_CLR =>
				nState <= STOP_DATA;
			when STOP_DATA =>
				if wbm_status(5) = '1' then 
					ack_o <= '1';
					nState <= IDLE;
				end if;
		end case; 
	end process next_state_logic;
	
	
end beh_i2c_master_controller;