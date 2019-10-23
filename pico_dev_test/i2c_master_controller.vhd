library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 



entity i2c_master_controller is
	port(
		rst_n 		: in std_logic;
		clk	  		: in std_logic;
		data_i 		: in std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		scl      	: inout std_logic;			
		sda      	: inout std_logic;
		data_o		: out std_logic_vector(7 downto 0);
		ack_o		: out std_logic
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
type state_t is (IDLE, LD_ADDR, START_0, START_1, WAIT_ACK_0, R_DATA, W_DATA, STOP_0, STOP_1, WAIT_ACK_1, WAIT_ACK_2, WAIT_ACK_3, SEND_ACK);
signal cState : state_t := LD_ADDR;
signal nState : state_t;
signal data, addr, status, option : std_logic_vector(7 downto 0);

COMPONENT wb_manager 
	PORT(
		clk_i		: in std_logic;
		rst_n_i		: in std_logic;
		data_io 	: inout std_logic_vector(7 downto 0);
		addr_i 		: in std_logic_vector(7 downto 0);
		option		: in std_logic_vector(7 downto 0);
		status		: out std_logic_vector(7 downto 0);
		scl      	: inout std_logic;			
		sda      	: inout std_logic
	);
END COMPONENT;

	
begin
	
	wb_manager0 : wb_manager
	PORT MAP(
			clk_i => clk,
			rst_n_i => rst_n,
			data_io => data,
			addr_i => addr,
			option => option,
			status => status,
			scl => scl,		
			sda=> sda	
		);


	process(clk, rst_n)
	begin
		if rst_n = '0' then 
			cState <= LD_ADDR;
		else
			if rising_edge(clk) then
				cState <= nState; 
			end if;
		end if;
	end process;
	
	
	
	output_logic : process(cState)
		
	begin
		ack_o <= '0';
		option <= x"00";
		addr <= x"00";
		data <= x"00";
		
		case (cState) is
			when IDLE =>
			when LD_ADDR =>	
				addr <= I2C1_TXDR;
				data <= addr_i;
				option <= x"03";
			when START_0 =>
				addr <= I2C1_CMDR;
				data <= x"94";
				option <= x"03";
			when WAIT_ACK_0 =>
			when STOP_0 =>
				addr <= I2C1_CMDR;
				data <= x"44";
				option <= x"03";
			when WAIT_ACK_1 =>
			when R_DATA =>
			when W_DATA =>
				addr <= I2C1_TXDR;
				data <= data_i;
				option <= x"03";
			when START_1 =>
				addr <= I2C1_CMDR;
				data <= x"94";
				option <= x"03";
			when WAIT_ACK_2 =>	
			when STOP_1 =>
				addr <= I2C1_CMDR;
				data <= x"44";
				option <= x"03";
			when WAIT_ACK_3 =>	
			when SEND_ACK =>
				ack_o <= '1';
		end case; 
	
	end process output_logic;
	
	
	next_state_logic : process(cState,status,addr_i,data_i)
	begin
		case (cState) is
			when IDLE =>
				--if status(7) = '0' then
					nState <= LD_ADDR;
				--end if;	
			when LD_ADDR =>
				nState <= START_0;
			when START_0 =>
				nState <= WAIT_ACK_0;
			when WAIT_ACK_0 =>
				if status(5) = '1' then 
					nState <= STOP_0;
				end if;
			when STOP_0 =>
				nState <= WAIT_ACK_1;
			when WAIT_ACK_1 =>
				if status(5) = '1' then 
					--if addr_i(7) = '1' then
						--nState <= R_DATA;
					--else
						nState <= W_DATA;
					--end if;
				end if;
			when R_DATA =>
			when W_DATA =>
				nState <= START_1;
			when START_1 =>
				nState <= WAIT_ACK_2;
			when WAIT_ACK_2 =>
				if status(5) = '1' then
					nState <= STOP_1;
				end if;
			when STOP_1 =>
				nState <= WAIT_ACK_3;
			when WAIT_ACK_3 =>	
				if status(5) = '1' then
					nState <= SEND_ACK;
				end if;
			when SEND_ACK =>
				nState <= IDLE;
		end case; 

	end process next_state_logic;
	
	
end beh_i2c_master_controller;