# Project Description

Target of the project is the technology development of Ka-band satellite communication antennas for aeronautical applications based on the knowledge obtained during previous SANTANA and SAMOA projects. Central to the TUHH's approach is the Rx/Tx integration in a single aperture and the use of two circular polarizations.

# Wishbone Manager

This ip block is responsible to manage access to the common wisbone interface for multi master configaration. In order to do so it provides two register **option_reg** and **status_reg** along with other conmmon bus **e.g** data_io, addr. Entity interface is shown below
```vhdl
entity wb_manager is
	port(
			clk_i		: in std_logic;
			rst_n_i		: in std_logic;
			data_io 	: inout std_logic_vector(7 downto 0);
			addr_i 		: in std_logic_vector(7 downto 0);
			option_reg	: in std_logic_vector(7 downto 0);
			status_reg	: out std_logic_vector(7 downto 0);
			scl         : inout std_logic;	
			sda         : inout std_logic
	);
end wb_manager;
```

It also provide two **inout**  signal to connect  connect hardware pins for serial data and clock for **i2c** interface from top level. 

## Status register

This is 8-bit status register for wishbone manager. Each bit represent individual status of the manager. Bit definition given below

# Project Description

Target of the project is the technology development of Ka-band satellite communication antennas for aeronautical applications based on the knowledge obtained during previous SANTANA and SAMOA projects. Central to the TUHH's approach is the Rx/Tx integration in a single aperture and the use of two circular polarizations.

# Wishbone Manager

This ip block is responsible to manage access to the common wisbone interface for multi master configaration. In order to do so it provides two register **option_reg** and **status_reg** along with other conmmon bus **e.g** data_io, addr. Entity interface is shown below
```vhdl
entity wb_manager is
	port(
			clk_i		: in std_logic;
			rst_n_i		: in std_logic;
			data_io 	: inout std_logic_vector(7 downto 0);
			addr_i 		: in std_logic_vector(7 downto 0);
			option_reg	: in std_logic_vector(7 downto 0);
			status_reg	: out std_logic_vector(7 downto 0);
			scl         : inout std_logic;	
			sda         : inout std_logic
	);
end wb_manager;
```

It also provide two **inout**  signal to connect  connect hardware pins for serial data and clock for **i2c** interface from top level. 

## Status register

This is 8-bit status register for wishbone manager. Each bit represent individual status of the manager. Bit definition given below

BIT7|BIT6|BIT5|BIT4|BIT3|BIT2|BIT1|BIT0 
--------|---------|-------|-------|-------|-------|-------|-------
**wb_busy** | **wb_read_complete** | **wb_write_complete** | **timeout_flag** | **reserved** | **reserved** | **reserved** | **reserved**

- ##### wb_busy
    This bit  Indicate that wishbone manager is currently performing an operation. Before every write to wishbone manager check this bit. If the bit is **Zero** it means that wishbone manager is idle and **One** means wishbone is busy wait until this bit turn to **zero**.
- ##### wb_read_complete
    This bit  Indicate that wishbone manager is completed current read command.
- ##### wb_write_complete
    This bit  Indicate that wishbone manager is completed current write command.
- ##### timeout_flag
    This bit  Indicate that current is timeouted. (slave does not response)

## Option register 

This is a 8-bit control signal for wishbone manager. Bits defination are given below:
BIT7|BIT6|BIT5|BIT4|BIT3|BIT2|BIT1|BIT0 
--------|---------|-------|-------|-------|-------|-------|-------
**reserved** | **reserved** | **reserved** | **reserved** | **reserved** | **reserved** | **wb_we_cmd** | **wb_init_cmd**
 
- ##### wb_init_cmd
    Assert this bit to initiate a wishbone operation (**NOTE** please check the `wb_busy` bit in status register before initiating an operation). Updated values for the operation should be written into the **data_io** and **addr_i** bus before asserting this bit.

- ##### wb_we_cmd
   - **'0'** write enable. (Write through wishbone interface)
   - **'1'** read enable. (read through wishbone interface)

















- ##### wb_busy
    This bit  Indicate that wishbone manager is currently performing an operation. Before every write to wishbone manager check this bit. If the bit is **Zero** it means that wishbone manager is idle and **One** means wishbone is busy wait until this bit turn to **zero**.
- ##### wb_read_complete
    This bit  Indicate that wishbone manager is completed current read command.
- ##### wb_write_complete
    This bit  Indicate that wishbone manager is completed current write command.
- ##### timeout_flag
    This bit  Indicate that current is timeouted. (slave does not response)

## Option register 

This is a 8-bit control signal for wishbone manager. Bits defination are given below:
BIT7 | BIT6 | BIT5 | BIT4 | BIT3 | BIT2 | BIT1 | BIT0
--- | --- | --- | --- | --- | --- | --- | ---
**reserved** | **reserved** | **reserved** | **reserved** | **reserved** | **reserved** | **wb_we_cmd** | **wb_init_cmd**
 
- ##### wb_init_cmd
    Assert this bit to initiate a wishbone operation (**NOTE** please check the `wb_busy` bit in status register before initiating an operation). Updated values for the operation should be written into the **data_io** and **addr_i** bus before asserting this bit.

- ##### wb_we_cmd
   - **'0'** write enable. (Write through wishbone interface)
   - **'1'** read enable. (read through wishbone interface)















