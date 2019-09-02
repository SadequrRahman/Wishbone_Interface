
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.10.3.144

-- ldbanno -n VHDL -o pico_i2c_i2c_interface_vho.vho -w -neg -gui -msgset D:/WorkingDir/Fpga/pico_dev_test/promote.xml pico_i2c_i2c_interface.ncd 
-- Netlist created on Tue Aug 27 13:33:02 2019
-- Netlist written on Tue Aug 27 13:33:42 2019
-- Design is for device LCMXO2-1200ZE
-- Design is for package TQFP144
-- Design is for performance grade 1

-- entity vmuxregsre
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre : ENTITY IS TRUE;

  end vmuxregsre;

  architecture Structure of vmuxregsre is
  begin
    INST01: FL1P3DX
      generic map (GSR => "ENABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity vcc
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity ccu2B0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ccu2B0 is
    port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
          D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
          C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ccu2B0 : ENTITY IS TRUE;

  end ccu2B0;

  architecture Structure of ccu2B0 is
  begin
    inst1: CCU2D
      generic map (INIT0 => X"000A", INIT1 => X"300A", INJECT1_0 => "NO", 
                   INJECT1_1 => "NO")
      port map (CIN=>CI, A0=>A0, B0=>B0, C0=>C0, D0=>D0, A1=>A1, B1=>B1, 
                C1=>C1, D1=>D1, S0=>S0, S1=>S1, COUT=>CO1);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; DI1: in Std_logic; M0: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_0: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_cState_3: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_0: ccu2B0
      port map (A0=>GNDI, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>GNDI, S0=>open, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, DI1_dly, M0_dly, CLK_dly, Q0_out, F1_out, 
      Q1_out, FCO_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ccu20001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ccu20001 is
    port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
          D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
          C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ccu20001 : ENTITY IS TRUE;

  end ccu20001;

  architecture Structure of ccu20001 is
  begin
    inst1: CCU2D
      generic map (INIT0 => X"300A", INIT1 => X"5002", INJECT1_0 => "NO", 
                   INJECT1_1 => "NO")
      port map (CIN=>CI, A0=>A0, B0=>B0, C0=>C0, D0=>D0, A1=>A1, B1=>B1, 
                C1=>C1, D1=>D1, S0=>S0, S1=>S1, COUT=>CO1);
  end Structure;

-- entity HeartBeatInst0_SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_1";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_1 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_1;

  architecture Structure of HeartBeatInst0_SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20001
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_20: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_19: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_19: ccu20001
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>open);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ccu20002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ccu20002 is
    port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
          D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
          C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ccu20002 : ENTITY IS TRUE;

  end ccu20002;

  architecture Structure of ccu20002 is
  begin
    inst1: CCU2D
      generic map (INIT0 => X"300A", INIT1 => X"300A", INJECT1_0 => "NO", 
                   INJECT1_1 => "NO")
      port map (CIN=>CI, A0=>A0, B0=>B0, C0=>C0, D0=>D0, A1=>A1, B1=>B1, 
                C1=>C1, D1=>D1, S0=>S0, S1=>S1, COUT=>CO1);
  end Structure;

-- entity HeartBeatInst0_SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_2";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_2 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_2;

  architecture Structure of HeartBeatInst0_SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_18: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_17: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_17: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_3";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_3 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_3;

  architecture Structure of HeartBeatInst0_SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_16: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_15: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_15: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_4";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_4 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_4;

  architecture Structure of HeartBeatInst0_SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_14: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_13: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_13: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_5";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_5 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_5;

  architecture Structure of HeartBeatInst0_SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_12: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_11: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_11: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_6";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_6 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_6;

  architecture Structure of HeartBeatInst0_SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_10: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_9: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_9: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_7";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_7 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_7;

  architecture Structure of HeartBeatInst0_SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_8: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_7: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_7: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_8
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_8 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_8";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_8 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_8;

  architecture Structure of HeartBeatInst0_SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_6: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_5: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_5: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_9";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_9 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_9;

  architecture Structure of HeartBeatInst0_SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_4: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_3: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_3: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity HeartBeatInst0_SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity HeartBeatInst0_SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HeartBeatInst0_SLICE_10";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF HeartBeatInst0_SLICE_10 : ENTITY IS TRUE;

  end HeartBeatInst0_SLICE_10;

  architecture Structure of HeartBeatInst0_SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    HeartBeatInst0_iCounter_2: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    HeartBeatInst0_iCounter_1: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    HeartBeatInst0_iCounter_cry_0_1: ccu20002
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"00FF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0003 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0003 : ENTITY IS TRUE;

  end vmuxregsre0003;

  architecture Structure of vmuxregsre0003 is
  begin
    INST01: FL1P3DX
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity SLICE_11
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_11 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_11";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D0: in Std_logic; DI0: in Std_logic; M1: in Std_logic; 
          CE: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_11 : ENTITY IS TRUE;

  end SLICE_11;

  architecture Structure of SLICE_11 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0003
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    addr_i_RNO_0: lut4
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    addr_i_2: vmuxregsre0003
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    addr_i_0: vmuxregsre0003
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, DI0_dly, M1_dly, CE_dly, CLK_dly, F0_out, 
      Q0_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"4040")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"AAEA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_12
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_12 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_12";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_12 : ENTITY IS TRUE;

  end SLICE_12;

  architecture Structure of SLICE_12 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0003
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    wb_manager0_status_reg_1_RNI75G51_5: lut40004
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    addr_i_RNO_6: lut40005
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    addr_i_6: vmuxregsre0003
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FAFA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40007 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40007 : ENTITY IS TRUE;

  end lut40007;

  architecture Structure of lut40007 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"5050")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_13
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_13 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_13";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
          A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
          CE: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_13 : ENTITY IS TRUE;

  end SLICE_13;

  architecture Structure of SLICE_13 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0003
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    data_io_0_6: lut40006
      port map (A=>A1_ipd, B=>GNDI, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    data_io_1_4: lut40007
      port map (A=>A0_ipd, B=>GNDI, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    data_io_6: vmuxregsre0003
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    data_io_4: vmuxregsre0003
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, A1_ipd, C0_ipd, A0_ipd, DI1_dly, DI0_dly, 
      CE_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40008 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40008 : ENTITY IS TRUE;

  end lut40008;

  architecture Structure of lut40008 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1111")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_15
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_15 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_15";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B0: in Std_logic; A0: in Std_logic; DI0: in Std_logic; 
          M1: in Std_logic; CE: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_15 : ENTITY IS TRUE;

  end SLICE_15;

  architecture Structure of SLICE_15 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0003
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40008
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    main_un6_RNO_2: lut40008
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    main_un6_0: vmuxregsre0003
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    main_un6_2: vmuxregsre0003
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, DI0_dly, M1_dly, CE_dly, CLK_dly, 
      F0_out, Q0_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity vmuxregsre0009
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0009 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0009 : ENTITY IS TRUE;

  end vmuxregsre0009;

  architecture Structure of vmuxregsre0009 is
    signal GATE: Std_logic;
  begin
    INST50: AND2
      port map (A=>SP, B=>CK, Z=>GATE);
    INST01: FL1S1B
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, CK=>GATE, SD=>SD, PD=>LSR, Q=>Q);
  end Structure;

-- entity wb_manager0_SLICE_21
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity wb_manager0_SLICE_21 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "wb_manager0_SLICE_21";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
          Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF wb_manager0_SLICE_21 : ENTITY IS TRUE;

  end wb_manager0_SLICE_21;

  architecture Structure of wb_manager0_SLICE_21 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0009
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    wb_manager0_nState_2: vmuxregsre0009
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_nState_3: vmuxregsre0009
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40010
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40010 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40010 : ENTITY IS TRUE;

  end lut40010;

  architecture Structure of lut40010 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40011
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40011 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40011 : ENTITY IS TRUE;

  end lut40011;

  architecture Structure of lut40011 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0050")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_22
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_22 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_22";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D0: in Std_logic; C0: in Std_logic; A0: in Std_logic; 
          M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_22 : ENTITY IS TRUE;

  end SLICE_22;

  architecture Structure of SLICE_22 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCIS: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0009
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40011
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    VCCI: lut40010
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_wb_adr_i_6: lut40011
      port map (A=>A0_ipd, B=>GNDI, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    wb_manager0_nState_1: vmuxregsre0009
      port map (D0=>M1_dly, D1=>VCCIS, SD=>GNDI, SP=>VCCIS, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCIS);
    wb_manager0_nState_5: vmuxregsre0009
      port map (D0=>M0_dly, D1=>VCCIS, SD=>GNDI, SP=>VCCIS, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, C0_ipd, A0_ipd, M1_dly, M0_dly, CLK_dly, 
      F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1 	<= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40012
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40012 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40012 : ENTITY IS TRUE;

  end lut40012;

  architecture Structure of lut40012 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1010")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40013
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40013 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40013 : ENTITY IS TRUE;

  end lut40013;

  architecture Structure of lut40013 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0500")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity wb_manager0_SLICE_23
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity wb_manager0_SLICE_23 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "wb_manager0_SLICE_23";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; A0: in Std_logic; 
          M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF wb_manager0_SLICE_23 : ENTITY IS TRUE;

  end wb_manager0_SLICE_23;

  architecture Structure of wb_manager0_SLICE_23 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40012
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40013
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    wb_manager0_wb_adr_i_0: lut40012
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_wb_dat_i_6: lut40013
      port map (A=>A0_ipd, B=>GNDI, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    wb_manager0_cState_2: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    wb_manager0_cState_1: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, A0_ipd, 
      M1_dly, M0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40014
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40014 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40014 : ENTITY IS TRUE;

  end lut40014;

  architecture Structure of lut40014 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1100")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity wb_manager0_SLICE_24
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity wb_manager0_SLICE_24 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "wb_manager0_SLICE_24";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          M0: in Std_logic; CE: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF wb_manager0_SLICE_24 : ENTITY IS TRUE;

  end wb_manager0_SLICE_24;

  architecture Structure of wb_manager0_SLICE_24 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0003
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40014
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    wb_manager0_wb_adr_i_2: lut40014
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>D1_ipd, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_wb_dat_i_4: lut40014
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    wb_manager0_status_reg_1_5: vmuxregsre0003
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, B1_ipd, A1_ipd, D0_ipd, B0_ipd, A0_ipd, 
      M0_dly, CE_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40015
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40015 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40015 : ENTITY IS TRUE;

  end lut40015;

  architecture Structure of lut40015 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"F0FF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40016
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40016 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40016 : ENTITY IS TRUE;

  end lut40016;

  architecture Structure of lut40016 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFF0")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_25
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_25 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_25";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; D0: in Std_logic; 
          C0: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_25 : ENTITY IS TRUE;

  end SLICE_25;

  architecture Structure of SLICE_25 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0003
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40015
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    wb_manager0_nState_1_sqmuxa_2_i: lut40015
      port map (A=>GNDI, B=>GNDI, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_cState_RNIVEMT_2: lut40016
      port map (A=>GNDI, B=>GNDI, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    main_un6_1: vmuxregsre0003
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, D0_ipd, C0_ipd, M0_dly, CE_dly, 
      CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity vmuxregsre0017
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0017 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0017 : ENTITY IS TRUE;

  end vmuxregsre0017;

  architecture Structure of vmuxregsre0017 is
  begin
    INST01: FL1P3BX
      generic map (GSR => "ENABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, PD=>LSR, Q=>Q);
  end Structure;

-- entity wb_manager0_SLICE_28
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity wb_manager0_SLICE_28 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "wb_manager0_SLICE_28";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
          Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF wb_manager0_SLICE_28 : ENTITY IS TRUE;

  end wb_manager0_SLICE_28;

  architecture Structure of wb_manager0_SLICE_28 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0017
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    wb_manager0_cState_4: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    wb_manager0_cState_5: vmuxregsre0017
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity wb_manager0_SLICE_30
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity wb_manager0_SLICE_30 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "wb_manager0_SLICE_30";

      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M0: in Std_logic; CLK: in Std_logic; Q0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF wb_manager0_SLICE_30 : ENTITY IS TRUE;

  end wb_manager0_SLICE_30;

  architecture Structure of wb_manager0_SLICE_30 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre0009
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    wb_manager0_nState_4: vmuxregsre0009
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M0_dly, CLK_dly, Q0_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity enI2CB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity enI2CB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "enI2CB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_enI2CS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; enI2CS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF enI2CB : ENTITY IS TRUE;

  end enI2CB;

  architecture Structure of enI2CB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal enI2CS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    enI2C_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>enI2CS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, enI2CS_out)
    VARIABLE enI2CS_zd         	: std_logic := 'X';
    VARIABLE enI2CS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    enI2CS_zd 	:= enI2CS_out;

    VitalPathDelay01 (
      OutSignal => enI2CS, OutSignalName => "enI2CS", OutTemp => enI2CS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_enI2CS,
                           PathCondition => TRUE)),
      GlitchData => enI2CS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0018
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0018 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0018 : ENTITY IS TRUE;

  end xo2iobuf0018;

  architecture Structure of xo2iobuf0018 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity rst_nB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity rst_nB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "rst_nB";

      tipd_rstn  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_rstn_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_rstn 	: VitalDelayType := 0 ns;
      tpw_rstn_posedge	: VitalDelayType := 0 ns;
      tpw_rstn_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; rstn: in Std_logic);

    ATTRIBUTE Vital_Level0 OF rst_nB : ENTITY IS TRUE;

  end rst_nB;

  architecture Structure of rst_nB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal rstn_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    rst_n_pad: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>rstn_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(rstn_ipd, rstn, tipd_rstn);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, rstn_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_rstn_rstn          	: x01 := '0';
    VARIABLE periodcheckinfo_rstn	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => rstn_ipd,
        TestSignalName => "rstn",
        Period => tperiod_rstn,
        PulseWidthHigh => tpw_rstn_posedge,
        PulseWidthLow => tpw_rstn_negedge,
        PeriodData => periodcheckinfo_rstn,
        Violation => tviol_rstn_rstn,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => rstn_ipd'last_event,
                           PathDelay => tpd_rstn_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0019
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0019 is
    port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
          PAD: out Std_logic; PADI: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0019 : ENTITY IS TRUE;

  end xo2iobuf0019;

  architecture Structure of xo2iobuf0019 is
  begin
    INST1: IBPD
      port map (I=>PADI, O=>Z);
    INST2: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity sclB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sclB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sclB";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_sclS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDT_sclS	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns);
      tpd_PADDO_sclS	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns);
      tpd_sclS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sclS 	: VitalDelayType := 0 ns;
      tpw_sclS_posedge	: VitalDelayType := 0 ns;
      tpw_sclS_negedge	: VitalDelayType := 0 ns;
      tpd_sclS_sclS	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns));

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          sclS: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF sclB : ENTITY IS TRUE;

  end sclB;

  architecture Structure of sclB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal sclS_ipd 	: std_logic := 'X';
    signal sclS_out 	: std_logic := 'Z';

    component xo2iobuf0019
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
  begin
    wb_manager0_efb_i2c_Inst0_BB1_scl: xo2iobuf0019
      port map (I=>PADDO_ipd, T=>PADDT_ipd, Z=>PADDI_out, PAD=>sclS_out, 
                PADI=>sclS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(sclS_ipd, sclS, tipd_sclS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, sclS_ipd, 
      sclS_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE sclS_zd         	: std_logic := 'X';
    VARIABLE sclS_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sclS_sclS          	: x01 := '0';
    VARIABLE periodcheckinfo_sclS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sclS_ipd,
        TestSignalName => "sclS",
        Period => tperiod_sclS,
        PulseWidthHigh => tpw_sclS_posedge,
        PulseWidthLow => tpw_sclS_negedge,
        PeriodData => periodcheckinfo_sclS,
        Violation => tviol_sclS_sclS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    sclS_zd 	:= sclS_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sclS_ipd'last_event,
                           PathDelay => tpd_sclS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => sclS, OutSignalName => "sclS", OutTemp => sclS_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_sclS,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_sclS,
                           PathCondition => TRUE)),
      GlitchData => sclS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sdaB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sdaB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sdaB";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_sdaS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDT_sdaS	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns);
      tpd_PADDO_sdaS	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns);
      tpd_sdaS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sdaS 	: VitalDelayType := 0 ns;
      tpw_sdaS_posedge	: VitalDelayType := 0 ns;
      tpw_sdaS_negedge	: VitalDelayType := 0 ns;
      tpd_sdaS_sdaS	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns));

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          sdaS: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF sdaB : ENTITY IS TRUE;

  end sdaB;

  architecture Structure of sdaB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal sdaS_ipd 	: std_logic := 'X';
    signal sdaS_out 	: std_logic := 'Z';

    component xo2iobuf0019
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
  begin
    wb_manager0_efb_i2c_Inst0_BB1_sda: xo2iobuf0019
      port map (I=>PADDO_ipd, T=>PADDT_ipd, Z=>PADDI_out, PAD=>sdaS_out, 
                PADI=>sdaS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(sdaS_ipd, sdaS, tipd_sdaS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, sdaS_ipd, 
      sdaS_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE sdaS_zd         	: std_logic := 'X';
    VARIABLE sdaS_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sdaS_sdaS          	: x01 := '0';
    VARIABLE periodcheckinfo_sdaS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sdaS_ipd,
        TestSignalName => "sdaS",
        Period => tperiod_sdaS,
        PulseWidthHigh => tpw_sdaS_posedge,
        PulseWidthLow => tpw_sdaS_negedge,
        PeriodData => periodcheckinfo_sdaS,
        Violation => tviol_sdaS_sdaS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    sdaS_zd 	:= sdaS_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sdaS_ipd'last_event,
                           PathDelay => tpd_sdaS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => sdaS, OutSignalName => "sdaS", OutTemp => sdaS_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_sdaS,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_sdaS,
                           PathCondition => TRUE)),
      GlitchData => sdaS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity heart_beatB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity heart_beatB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "heart_beatB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_heartbeat	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; heartbeat: out Std_logic);

    ATTRIBUTE Vital_Level0 OF heart_beatB : ENTITY IS TRUE;

  end heart_beatB;

  architecture Structure of heart_beatB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal heartbeat_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    heart_beat_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>heartbeat_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, heartbeat_out)
    VARIABLE heartbeat_zd         	: std_logic := 'X';
    VARIABLE heartbeat_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    heartbeat_zd 	:= heartbeat_out;

    VitalPathDelay01 (
      OutSignal => heartbeat, OutSignalName => "heartbeat", OutTemp => heartbeat_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_heartbeat,
                           PathCondition => TRUE)),
      GlitchData => heartbeat_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity OSCHB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity OSCHB is
    port (STDBY: in Std_logic; OSC: out Std_logic; SEDSTDBY: out Std_logic);

    ATTRIBUTE Vital_Level0 OF OSCHB : ENTITY IS TRUE;

  end OSCHB;

  architecture Structure of OSCHB is
  begin
    INST10: OSCH
      generic map (NOM_FREQ => "133.00")
      port map (STDBY=>STDBY, OSC=>OSC, SEDSTDBY=>SEDSTDBY);
  end Structure;

-- entity OSCInst0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity OSCInst0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "OSCInst0");

    port (OSC: out Std_logic);

    ATTRIBUTE Vital_Level0 OF OSCInst0 : ENTITY IS TRUE;

  end OSCInst0;

  architecture Structure of OSCInst0 is
    signal OSC_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component OSCHB
      port (STDBY: in Std_logic; OSC: out Std_logic; SEDSTDBY: out Std_logic);
    end component;
  begin
    OSCInst0_OSCH: OSCHB
      port map (STDBY=>GNDI, OSC=>OSC_out, SEDSTDBY=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (OSC_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OSC 	<= OSC_out;


    END PROCESS;

  end Structure;

-- entity EFB_Buffer_Block
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity EFB_Buffer_Block is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "EFB_Buffer_Block";

      tipd_WBCLKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBRSTIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBCYCIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBSTBIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBWEIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0ACKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1ACKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SCLIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SDAIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SCLIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SDAIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMISOIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMOSIIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCSNin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCCLKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCRSTNin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCICin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_UFMSNin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBACKOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLCLKOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLRSTOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0STBOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1STBOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLWEOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SCLOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SCLOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SDAOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SDAOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SCLOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SCLOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SDAOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SDAOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1IRQOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2IRQOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCKOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCKENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMISOOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMISOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMOSIOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMOSIENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPICSNENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIIRQOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCINTin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCOCin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBCUFMIRQin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CFGWAKEin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CFGSTDBYin  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_WBCLKIin_WBACKOout	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_I2C1SCLOin_I2C1SDAOENout	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_I2C1SCLOin_I2C1SDAOout	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_I2C1SCLOin_I2C1SCLOENout	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_I2C1SCLIin_I2C1SDAOENout	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_I2C1SCLIin_I2C1SDAOout	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_WBCLKIin	: VitalDelayType := 0 ns;
      tisd_WBRSTIin_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBRSTIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBRSTIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBCYCIin_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBCYCIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBCYCIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBSTBIin_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBSTBIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBSTBIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBWEIin_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBWEIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBWEIin_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBADRI0in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBADRI0in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBADRI0in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBADRI2in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBADRI2in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBADRI2in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBADRI6in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBADRI6in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBADRI6in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBDATI1in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBDATI1in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBDATI1in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBDATI2in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBDATI2in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBDATI2in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBDATI3in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBDATI3in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBDATI3in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBDATI4in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBDATI4in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBDATI4in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBDATI6in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBDATI6in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBDATI6in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WBDATI7in_WBCLKIin	: VitalDelayType := 0 ns;
      tsetup_WBDATI7in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WBDATI7in_WBCLKIin_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_I2C1SCLIin	: VitalDelayType := 0 ns;
      tisd_I2C1SDAIin_I2C1SCLIin	: VitalDelayType := 0 ns;
      tsetup_I2C1SDAIin_I2C1SCLIin_noedge_posedge	: VitalDelayType := 0 ns;
      thold_I2C1SDAIin_I2C1SCLIin_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_WBCLKIin 	: VitalDelayType := 0 ns;
      tpw_WBCLKIin_posedge	: VitalDelayType := 0 ns;
      tpw_WBCLKIin_negedge	: VitalDelayType := 0 ns;
      tperiod_I2C1SCLOin 	: VitalDelayType := 0 ns;
      tpw_I2C1SCLOin_posedge	: VitalDelayType := 0 ns;
      tpw_I2C1SCLOin_negedge	: VitalDelayType := 0 ns;
      tperiod_I2C1SCLIin 	: VitalDelayType := 0 ns;
      tpw_I2C1SCLIin_posedge	: VitalDelayType := 0 ns;
      tpw_I2C1SCLIin_negedge	: VitalDelayType := 0 ns);

    port (WBCLKIin: in Std_logic; WBCLKIout: out Std_logic; 
          WBRSTIin: in Std_logic; WBRSTIout: out Std_logic; 
          WBCYCIin: in Std_logic; WBCYCIout: out Std_logic; 
          WBSTBIin: in Std_logic; WBSTBIout: out Std_logic; 
          WBWEIin: in Std_logic; WBWEIout: out Std_logic; 
          WBADRI7in: in Std_logic; WBADRI7out: out Std_logic; 
          WBADRI6in: in Std_logic; WBADRI6out: out Std_logic; 
          WBADRI5in: in Std_logic; WBADRI5out: out Std_logic; 
          WBADRI4in: in Std_logic; WBADRI4out: out Std_logic; 
          WBADRI3in: in Std_logic; WBADRI3out: out Std_logic; 
          WBADRI2in: in Std_logic; WBADRI2out: out Std_logic; 
          WBADRI1in: in Std_logic; WBADRI1out: out Std_logic; 
          WBADRI0in: in Std_logic; WBADRI0out: out Std_logic; 
          WBDATI7in: in Std_logic; WBDATI7out: out Std_logic; 
          WBDATI6in: in Std_logic; WBDATI6out: out Std_logic; 
          WBDATI5in: in Std_logic; WBDATI5out: out Std_logic; 
          WBDATI4in: in Std_logic; WBDATI4out: out Std_logic; 
          WBDATI3in: in Std_logic; WBDATI3out: out Std_logic; 
          WBDATI2in: in Std_logic; WBDATI2out: out Std_logic; 
          WBDATI1in: in Std_logic; WBDATI1out: out Std_logic; 
          WBDATI0in: in Std_logic; WBDATI0out: out Std_logic; 
          PLL0DATI7in: in Std_logic; PLL0DATI7out: out Std_logic; 
          PLL0DATI6in: in Std_logic; PLL0DATI6out: out Std_logic; 
          PLL0DATI5in: in Std_logic; PLL0DATI5out: out Std_logic; 
          PLL0DATI4in: in Std_logic; PLL0DATI4out: out Std_logic; 
          PLL0DATI3in: in Std_logic; PLL0DATI3out: out Std_logic; 
          PLL0DATI2in: in Std_logic; PLL0DATI2out: out Std_logic; 
          PLL0DATI1in: in Std_logic; PLL0DATI1out: out Std_logic; 
          PLL0DATI0in: in Std_logic; PLL0DATI0out: out Std_logic; 
          PLL0ACKIin: in Std_logic; PLL0ACKIout: out Std_logic; 
          PLL1DATI7in: in Std_logic; PLL1DATI7out: out Std_logic; 
          PLL1DATI6in: in Std_logic; PLL1DATI6out: out Std_logic; 
          PLL1DATI5in: in Std_logic; PLL1DATI5out: out Std_logic; 
          PLL1DATI4in: in Std_logic; PLL1DATI4out: out Std_logic; 
          PLL1DATI3in: in Std_logic; PLL1DATI3out: out Std_logic; 
          PLL1DATI2in: in Std_logic; PLL1DATI2out: out Std_logic; 
          PLL1DATI1in: in Std_logic; PLL1DATI1out: out Std_logic; 
          PLL1DATI0in: in Std_logic; PLL1DATI0out: out Std_logic; 
          PLL1ACKIin: in Std_logic; PLL1ACKIout: out Std_logic; 
          I2C1SCLIin: in Std_logic; I2C1SCLIout: out Std_logic; 
          I2C1SDAIin: in Std_logic; I2C1SDAIout: out Std_logic; 
          I2C2SCLIin: in Std_logic; I2C2SCLIout: out Std_logic; 
          I2C2SDAIin: in Std_logic; I2C2SDAIout: out Std_logic; 
          SPISCKIin: in Std_logic; SPISCKIout: out Std_logic; 
          SPIMISOIin: in Std_logic; SPIMISOIout: out Std_logic; 
          SPIMOSIIin: in Std_logic; SPIMOSIIout: out Std_logic; 
          SPISCSNin: in Std_logic; SPISCSNout: out Std_logic; 
          TCCLKIin: in Std_logic; TCCLKIout: out Std_logic; 
          TCRSTNin: in Std_logic; TCRSTNout: out Std_logic; 
          TCICin: in Std_logic; TCICout: out Std_logic; UFMSNin: in Std_logic; 
          UFMSNout: out Std_logic; WBDATO7out: out Std_logic; 
          WBDATO7in: in Std_logic; WBDATO6out: out Std_logic; 
          WBDATO6in: in Std_logic; WBDATO5out: out Std_logic; 
          WBDATO5in: in Std_logic; WBDATO4out: out Std_logic; 
          WBDATO4in: in Std_logic; WBDATO3out: out Std_logic; 
          WBDATO3in: in Std_logic; WBDATO2out: out Std_logic; 
          WBDATO2in: in Std_logic; WBDATO1out: out Std_logic; 
          WBDATO1in: in Std_logic; WBDATO0out: out Std_logic; 
          WBDATO0in: in Std_logic; WBACKOout: out Std_logic; 
          WBACKOin: in Std_logic; PLLCLKOout: out Std_logic; 
          PLLCLKOin: in Std_logic; PLLRSTOout: out Std_logic; 
          PLLRSTOin: in Std_logic; PLL0STBOout: out Std_logic; 
          PLL0STBOin: in Std_logic; PLL1STBOout: out Std_logic; 
          PLL1STBOin: in Std_logic; PLLWEOout: out Std_logic; 
          PLLWEOin: in Std_logic; PLLADRO4out: out Std_logic; 
          PLLADRO4in: in Std_logic; PLLADRO3out: out Std_logic; 
          PLLADRO3in: in Std_logic; PLLADRO2out: out Std_logic; 
          PLLADRO2in: in Std_logic; PLLADRO1out: out Std_logic; 
          PLLADRO1in: in Std_logic; PLLADRO0out: out Std_logic; 
          PLLADRO0in: in Std_logic; PLLDATO7out: out Std_logic; 
          PLLDATO7in: in Std_logic; PLLDATO6out: out Std_logic; 
          PLLDATO6in: in Std_logic; PLLDATO5out: out Std_logic; 
          PLLDATO5in: in Std_logic; PLLDATO4out: out Std_logic; 
          PLLDATO4in: in Std_logic; PLLDATO3out: out Std_logic; 
          PLLDATO3in: in Std_logic; PLLDATO2out: out Std_logic; 
          PLLDATO2in: in Std_logic; PLLDATO1out: out Std_logic; 
          PLLDATO1in: in Std_logic; PLLDATO0out: out Std_logic; 
          PLLDATO0in: in Std_logic; I2C1SCLOout: out Std_logic; 
          I2C1SCLOin: in Std_logic; I2C1SCLOENout: out Std_logic; 
          I2C1SCLOENin: in Std_logic; I2C1SDAOout: out Std_logic; 
          I2C1SDAOin: in Std_logic; I2C1SDAOENout: out Std_logic; 
          I2C1SDAOENin: in Std_logic; I2C2SCLOout: out Std_logic; 
          I2C2SCLOin: in Std_logic; I2C2SCLOENout: out Std_logic; 
          I2C2SCLOENin: in Std_logic; I2C2SDAOout: out Std_logic; 
          I2C2SDAOin: in Std_logic; I2C2SDAOENout: out Std_logic; 
          I2C2SDAOENin: in Std_logic; I2C1IRQOout: out Std_logic; 
          I2C1IRQOin: in Std_logic; I2C2IRQOout: out Std_logic; 
          I2C2IRQOin: in Std_logic; SPISCKOout: out Std_logic; 
          SPISCKOin: in Std_logic; SPISCKENout: out Std_logic; 
          SPISCKENin: in Std_logic; SPIMISOOout: out Std_logic; 
          SPIMISOOin: in Std_logic; SPIMISOENout: out Std_logic; 
          SPIMISOENin: in Std_logic; SPIMOSIOout: out Std_logic; 
          SPIMOSIOin: in Std_logic; SPIMOSIENout: out Std_logic; 
          SPIMOSIENin: in Std_logic; SPIMCSN0out: out Std_logic; 
          SPIMCSN0in: in Std_logic; SPIMCSN1out: out Std_logic; 
          SPIMCSN1in: in Std_logic; SPIMCSN2out: out Std_logic; 
          SPIMCSN2in: in Std_logic; SPIMCSN3out: out Std_logic; 
          SPIMCSN3in: in Std_logic; SPIMCSN4out: out Std_logic; 
          SPIMCSN4in: in Std_logic; SPIMCSN5out: out Std_logic; 
          SPIMCSN5in: in Std_logic; SPIMCSN6out: out Std_logic; 
          SPIMCSN6in: in Std_logic; SPIMCSN7out: out Std_logic; 
          SPIMCSN7in: in Std_logic; SPICSNENout: out Std_logic; 
          SPICSNENin: in Std_logic; SPIIRQOout: out Std_logic; 
          SPIIRQOin: in Std_logic; TCINTout: out Std_logic; 
          TCINTin: in Std_logic; TCOCout: out Std_logic; TCOCin: in Std_logic; 
          WBCUFMIRQout: out Std_logic; WBCUFMIRQin: in Std_logic; 
          CFGWAKEout: out Std_logic; CFGWAKEin: in Std_logic; 
          CFGSTDBYout: out Std_logic; CFGSTDBYin: in Std_logic);

    ATTRIBUTE Vital_Level0 OF EFB_Buffer_Block : ENTITY IS TRUE;

  end EFB_Buffer_Block;

  architecture Structure of EFB_Buffer_Block is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal WBCLKIin_ipd 	: std_logic := 'X';
    signal WBCLKIin_dly 	: std_logic := 'X';
    signal WBCLKIout_out 	: std_logic := 'X';
    signal WBRSTIin_ipd 	: std_logic := 'X';
    signal WBRSTIin_dly 	: std_logic := 'X';
    signal WBRSTIout_out 	: std_logic := 'X';
    signal WBCYCIin_ipd 	: std_logic := 'X';
    signal WBCYCIin_dly 	: std_logic := 'X';
    signal WBCYCIout_out 	: std_logic := 'X';
    signal WBSTBIin_ipd 	: std_logic := 'X';
    signal WBSTBIin_dly 	: std_logic := 'X';
    signal WBSTBIout_out 	: std_logic := 'X';
    signal WBWEIin_ipd 	: std_logic := 'X';
    signal WBWEIin_dly 	: std_logic := 'X';
    signal WBWEIout_out 	: std_logic := 'X';
    signal WBADRI7in_ipd 	: std_logic := 'X';
    signal WBADRI7out_out 	: std_logic := 'X';
    signal WBADRI6in_ipd 	: std_logic := 'X';
    signal WBADRI6in_dly 	: std_logic := 'X';
    signal WBADRI6out_out 	: std_logic := 'X';
    signal WBADRI5in_ipd 	: std_logic := 'X';
    signal WBADRI5out_out 	: std_logic := 'X';
    signal WBADRI4in_ipd 	: std_logic := 'X';
    signal WBADRI4out_out 	: std_logic := 'X';
    signal WBADRI3in_ipd 	: std_logic := 'X';
    signal WBADRI3out_out 	: std_logic := 'X';
    signal WBADRI2in_ipd 	: std_logic := 'X';
    signal WBADRI2in_dly 	: std_logic := 'X';
    signal WBADRI2out_out 	: std_logic := 'X';
    signal WBADRI1in_ipd 	: std_logic := 'X';
    signal WBADRI1out_out 	: std_logic := 'X';
    signal WBADRI0in_ipd 	: std_logic := 'X';
    signal WBADRI0in_dly 	: std_logic := 'X';
    signal WBADRI0out_out 	: std_logic := 'X';
    signal WBDATI7in_ipd 	: std_logic := 'X';
    signal WBDATI7in_dly 	: std_logic := 'X';
    signal WBDATI7out_out 	: std_logic := 'X';
    signal WBDATI6in_ipd 	: std_logic := 'X';
    signal WBDATI6in_dly 	: std_logic := 'X';
    signal WBDATI6out_out 	: std_logic := 'X';
    signal WBDATI5in_ipd 	: std_logic := 'X';
    signal WBDATI5out_out 	: std_logic := 'X';
    signal WBDATI4in_ipd 	: std_logic := 'X';
    signal WBDATI4in_dly 	: std_logic := 'X';
    signal WBDATI4out_out 	: std_logic := 'X';
    signal WBDATI3in_ipd 	: std_logic := 'X';
    signal WBDATI3in_dly 	: std_logic := 'X';
    signal WBDATI3out_out 	: std_logic := 'X';
    signal WBDATI2in_ipd 	: std_logic := 'X';
    signal WBDATI2in_dly 	: std_logic := 'X';
    signal WBDATI2out_out 	: std_logic := 'X';
    signal WBDATI1in_ipd 	: std_logic := 'X';
    signal WBDATI1in_dly 	: std_logic := 'X';
    signal WBDATI1out_out 	: std_logic := 'X';
    signal WBDATI0in_ipd 	: std_logic := 'X';
    signal WBDATI0out_out 	: std_logic := 'X';
    signal PLL0DATI7in_ipd 	: std_logic := 'X';
    signal PLL0DATI7out_out 	: std_logic := 'X';
    signal PLL0DATI6in_ipd 	: std_logic := 'X';
    signal PLL0DATI6out_out 	: std_logic := 'X';
    signal PLL0DATI5in_ipd 	: std_logic := 'X';
    signal PLL0DATI5out_out 	: std_logic := 'X';
    signal PLL0DATI4in_ipd 	: std_logic := 'X';
    signal PLL0DATI4out_out 	: std_logic := 'X';
    signal PLL0DATI3in_ipd 	: std_logic := 'X';
    signal PLL0DATI3out_out 	: std_logic := 'X';
    signal PLL0DATI2in_ipd 	: std_logic := 'X';
    signal PLL0DATI2out_out 	: std_logic := 'X';
    signal PLL0DATI1in_ipd 	: std_logic := 'X';
    signal PLL0DATI1out_out 	: std_logic := 'X';
    signal PLL0DATI0in_ipd 	: std_logic := 'X';
    signal PLL0DATI0out_out 	: std_logic := 'X';
    signal PLL0ACKIin_ipd 	: std_logic := 'X';
    signal PLL0ACKIout_out 	: std_logic := 'X';
    signal PLL1DATI7in_ipd 	: std_logic := 'X';
    signal PLL1DATI7out_out 	: std_logic := 'X';
    signal PLL1DATI6in_ipd 	: std_logic := 'X';
    signal PLL1DATI6out_out 	: std_logic := 'X';
    signal PLL1DATI5in_ipd 	: std_logic := 'X';
    signal PLL1DATI5out_out 	: std_logic := 'X';
    signal PLL1DATI4in_ipd 	: std_logic := 'X';
    signal PLL1DATI4out_out 	: std_logic := 'X';
    signal PLL1DATI3in_ipd 	: std_logic := 'X';
    signal PLL1DATI3out_out 	: std_logic := 'X';
    signal PLL1DATI2in_ipd 	: std_logic := 'X';
    signal PLL1DATI2out_out 	: std_logic := 'X';
    signal PLL1DATI1in_ipd 	: std_logic := 'X';
    signal PLL1DATI1out_out 	: std_logic := 'X';
    signal PLL1DATI0in_ipd 	: std_logic := 'X';
    signal PLL1DATI0out_out 	: std_logic := 'X';
    signal PLL1ACKIin_ipd 	: std_logic := 'X';
    signal PLL1ACKIout_out 	: std_logic := 'X';
    signal I2C1SCLIin_ipd 	: std_logic := 'X';
    signal I2C1SCLIin_dly 	: std_logic := 'X';
    signal I2C1SCLIout_out 	: std_logic := 'X';
    signal I2C1SDAIin_ipd 	: std_logic := 'X';
    signal I2C1SDAIin_dly 	: std_logic := 'X';
    signal I2C1SDAIout_out 	: std_logic := 'X';
    signal I2C2SCLIin_ipd 	: std_logic := 'X';
    signal I2C2SCLIout_out 	: std_logic := 'X';
    signal I2C2SDAIin_ipd 	: std_logic := 'X';
    signal I2C2SDAIout_out 	: std_logic := 'X';
    signal SPISCKIin_ipd 	: std_logic := 'X';
    signal SPISCKIout_out 	: std_logic := 'X';
    signal SPIMISOIin_ipd 	: std_logic := 'X';
    signal SPIMISOIout_out 	: std_logic := 'X';
    signal SPIMOSIIin_ipd 	: std_logic := 'X';
    signal SPIMOSIIout_out 	: std_logic := 'X';
    signal SPISCSNin_ipd 	: std_logic := 'X';
    signal SPISCSNout_out 	: std_logic := 'X';
    signal TCCLKIin_ipd 	: std_logic := 'X';
    signal TCCLKIout_out 	: std_logic := 'X';
    signal TCRSTNin_ipd 	: std_logic := 'X';
    signal TCRSTNout_out 	: std_logic := 'X';
    signal TCICin_ipd 	: std_logic := 'X';
    signal TCICout_out 	: std_logic := 'X';
    signal UFMSNin_ipd 	: std_logic := 'X';
    signal UFMSNout_out 	: std_logic := 'X';
    signal WBDATO7out_out 	: std_logic := 'X';
    signal WBDATO7in_ipd 	: std_logic := 'X';
    signal WBDATO6out_out 	: std_logic := 'X';
    signal WBDATO6in_ipd 	: std_logic := 'X';
    signal WBDATO5out_out 	: std_logic := 'X';
    signal WBDATO5in_ipd 	: std_logic := 'X';
    signal WBDATO4out_out 	: std_logic := 'X';
    signal WBDATO4in_ipd 	: std_logic := 'X';
    signal WBDATO3out_out 	: std_logic := 'X';
    signal WBDATO3in_ipd 	: std_logic := 'X';
    signal WBDATO2out_out 	: std_logic := 'X';
    signal WBDATO2in_ipd 	: std_logic := 'X';
    signal WBDATO1out_out 	: std_logic := 'X';
    signal WBDATO1in_ipd 	: std_logic := 'X';
    signal WBDATO0out_out 	: std_logic := 'X';
    signal WBDATO0in_ipd 	: std_logic := 'X';
    signal WBACKOout_out 	: std_logic := 'X';
    signal WBACKOin_ipd 	: std_logic := 'X';
    signal PLLCLKOout_out 	: std_logic := 'X';
    signal PLLCLKOin_ipd 	: std_logic := 'X';
    signal PLLRSTOout_out 	: std_logic := 'X';
    signal PLLRSTOin_ipd 	: std_logic := 'X';
    signal PLL0STBOout_out 	: std_logic := 'X';
    signal PLL0STBOin_ipd 	: std_logic := 'X';
    signal PLL1STBOout_out 	: std_logic := 'X';
    signal PLL1STBOin_ipd 	: std_logic := 'X';
    signal PLLWEOout_out 	: std_logic := 'X';
    signal PLLWEOin_ipd 	: std_logic := 'X';
    signal PLLADRO4out_out 	: std_logic := 'X';
    signal PLLADRO4in_ipd 	: std_logic := 'X';
    signal PLLADRO3out_out 	: std_logic := 'X';
    signal PLLADRO3in_ipd 	: std_logic := 'X';
    signal PLLADRO2out_out 	: std_logic := 'X';
    signal PLLADRO2in_ipd 	: std_logic := 'X';
    signal PLLADRO1out_out 	: std_logic := 'X';
    signal PLLADRO1in_ipd 	: std_logic := 'X';
    signal PLLADRO0out_out 	: std_logic := 'X';
    signal PLLADRO0in_ipd 	: std_logic := 'X';
    signal PLLDATO7out_out 	: std_logic := 'X';
    signal PLLDATO7in_ipd 	: std_logic := 'X';
    signal PLLDATO6out_out 	: std_logic := 'X';
    signal PLLDATO6in_ipd 	: std_logic := 'X';
    signal PLLDATO5out_out 	: std_logic := 'X';
    signal PLLDATO5in_ipd 	: std_logic := 'X';
    signal PLLDATO4out_out 	: std_logic := 'X';
    signal PLLDATO4in_ipd 	: std_logic := 'X';
    signal PLLDATO3out_out 	: std_logic := 'X';
    signal PLLDATO3in_ipd 	: std_logic := 'X';
    signal PLLDATO2out_out 	: std_logic := 'X';
    signal PLLDATO2in_ipd 	: std_logic := 'X';
    signal PLLDATO1out_out 	: std_logic := 'X';
    signal PLLDATO1in_ipd 	: std_logic := 'X';
    signal PLLDATO0out_out 	: std_logic := 'X';
    signal PLLDATO0in_ipd 	: std_logic := 'X';
    signal I2C1SCLOout_out 	: std_logic := 'X';
    signal I2C1SCLOin_ipd 	: std_logic := 'X';
    signal I2C1SCLOENout_out 	: std_logic := 'X';
    signal I2C1SCLOENin_ipd 	: std_logic := 'X';
    signal I2C1SDAOout_out 	: std_logic := 'X';
    signal I2C1SDAOin_ipd 	: std_logic := 'X';
    signal I2C1SDAOENout_out 	: std_logic := 'X';
    signal I2C1SDAOENin_ipd 	: std_logic := 'X';
    signal I2C2SCLOout_out 	: std_logic := 'X';
    signal I2C2SCLOin_ipd 	: std_logic := 'X';
    signal I2C2SCLOENout_out 	: std_logic := 'X';
    signal I2C2SCLOENin_ipd 	: std_logic := 'X';
    signal I2C2SDAOout_out 	: std_logic := 'X';
    signal I2C2SDAOin_ipd 	: std_logic := 'X';
    signal I2C2SDAOENout_out 	: std_logic := 'X';
    signal I2C2SDAOENin_ipd 	: std_logic := 'X';
    signal I2C1IRQOout_out 	: std_logic := 'X';
    signal I2C1IRQOin_ipd 	: std_logic := 'X';
    signal I2C2IRQOout_out 	: std_logic := 'X';
    signal I2C2IRQOin_ipd 	: std_logic := 'X';
    signal SPISCKOout_out 	: std_logic := 'X';
    signal SPISCKOin_ipd 	: std_logic := 'X';
    signal SPISCKENout_out 	: std_logic := 'X';
    signal SPISCKENin_ipd 	: std_logic := 'X';
    signal SPIMISOOout_out 	: std_logic := 'X';
    signal SPIMISOOin_ipd 	: std_logic := 'X';
    signal SPIMISOENout_out 	: std_logic := 'X';
    signal SPIMISOENin_ipd 	: std_logic := 'X';
    signal SPIMOSIOout_out 	: std_logic := 'X';
    signal SPIMOSIOin_ipd 	: std_logic := 'X';
    signal SPIMOSIENout_out 	: std_logic := 'X';
    signal SPIMOSIENin_ipd 	: std_logic := 'X';
    signal SPIMCSN0out_out 	: std_logic := 'X';
    signal SPIMCSN0in_ipd 	: std_logic := 'X';
    signal SPIMCSN1out_out 	: std_logic := 'X';
    signal SPIMCSN1in_ipd 	: std_logic := 'X';
    signal SPIMCSN2out_out 	: std_logic := 'X';
    signal SPIMCSN2in_ipd 	: std_logic := 'X';
    signal SPIMCSN3out_out 	: std_logic := 'X';
    signal SPIMCSN3in_ipd 	: std_logic := 'X';
    signal SPIMCSN4out_out 	: std_logic := 'X';
    signal SPIMCSN4in_ipd 	: std_logic := 'X';
    signal SPIMCSN5out_out 	: std_logic := 'X';
    signal SPIMCSN5in_ipd 	: std_logic := 'X';
    signal SPIMCSN6out_out 	: std_logic := 'X';
    signal SPIMCSN6in_ipd 	: std_logic := 'X';
    signal SPIMCSN7out_out 	: std_logic := 'X';
    signal SPIMCSN7in_ipd 	: std_logic := 'X';
    signal SPICSNENout_out 	: std_logic := 'X';
    signal SPICSNENin_ipd 	: std_logic := 'X';
    signal SPIIRQOout_out 	: std_logic := 'X';
    signal SPIIRQOin_ipd 	: std_logic := 'X';
    signal TCINTout_out 	: std_logic := 'X';
    signal TCINTin_ipd 	: std_logic := 'X';
    signal TCOCout_out 	: std_logic := 'X';
    signal TCOCin_ipd 	: std_logic := 'X';
    signal WBCUFMIRQout_out 	: std_logic := 'X';
    signal WBCUFMIRQin_ipd 	: std_logic := 'X';
    signal CFGWAKEout_out 	: std_logic := 'X';
    signal CFGWAKEin_ipd 	: std_logic := 'X';
    signal CFGSTDBYout_out 	: std_logic := 'X';
    signal CFGSTDBYin_ipd 	: std_logic := 'X';

  begin
    WBCLKI_buf: BUFBA
      port map (A=>WBCLKIin_dly, Z=>WBCLKIout_out);
    WBRSTI_buf: BUFBA
      port map (A=>WBRSTIin_dly, Z=>WBRSTIout_out);
    WBCYCI_buf: BUFBA
      port map (A=>WBCYCIin_dly, Z=>WBCYCIout_out);
    WBSTBI_buf: BUFBA
      port map (A=>WBSTBIin_dly, Z=>WBSTBIout_out);
    WBWEI_buf: BUFBA
      port map (A=>WBWEIin_dly, Z=>WBWEIout_out);
    WBADRI7_buf: BUFBA
      port map (A=>WBADRI7in_ipd, Z=>WBADRI7out_out);
    WBADRI6_buf: BUFBA
      port map (A=>WBADRI6in_dly, Z=>WBADRI6out_out);
    WBADRI5_buf: BUFBA
      port map (A=>WBADRI5in_ipd, Z=>WBADRI5out_out);
    WBADRI4_buf: BUFBA
      port map (A=>WBADRI4in_ipd, Z=>WBADRI4out_out);
    WBADRI3_buf: BUFBA
      port map (A=>WBADRI3in_ipd, Z=>WBADRI3out_out);
    WBADRI2_buf: BUFBA
      port map (A=>WBADRI2in_dly, Z=>WBADRI2out_out);
    WBADRI1_buf: BUFBA
      port map (A=>WBADRI1in_ipd, Z=>WBADRI1out_out);
    WBADRI0_buf: BUFBA
      port map (A=>WBADRI0in_dly, Z=>WBADRI0out_out);
    WBDATI7_buf: BUFBA
      port map (A=>WBDATI7in_dly, Z=>WBDATI7out_out);
    WBDATI6_buf: BUFBA
      port map (A=>WBDATI6in_dly, Z=>WBDATI6out_out);
    WBDATI5_buf: BUFBA
      port map (A=>WBDATI5in_ipd, Z=>WBDATI5out_out);
    WBDATI4_buf: BUFBA
      port map (A=>WBDATI4in_dly, Z=>WBDATI4out_out);
    WBDATI3_buf: BUFBA
      port map (A=>WBDATI3in_dly, Z=>WBDATI3out_out);
    WBDATI2_buf: BUFBA
      port map (A=>WBDATI2in_dly, Z=>WBDATI2out_out);
    WBDATI1_buf: BUFBA
      port map (A=>WBDATI1in_dly, Z=>WBDATI1out_out);
    WBDATI0_buf: BUFBA
      port map (A=>WBDATI0in_ipd, Z=>WBDATI0out_out);
    PLL0DATI7_buf: BUFBA
      port map (A=>PLL0DATI7in_ipd, Z=>PLL0DATI7out_out);
    PLL0DATI6_buf: BUFBA
      port map (A=>PLL0DATI6in_ipd, Z=>PLL0DATI6out_out);
    PLL0DATI5_buf: BUFBA
      port map (A=>PLL0DATI5in_ipd, Z=>PLL0DATI5out_out);
    PLL0DATI4_buf: BUFBA
      port map (A=>PLL0DATI4in_ipd, Z=>PLL0DATI4out_out);
    PLL0DATI3_buf: BUFBA
      port map (A=>PLL0DATI3in_ipd, Z=>PLL0DATI3out_out);
    PLL0DATI2_buf: BUFBA
      port map (A=>PLL0DATI2in_ipd, Z=>PLL0DATI2out_out);
    PLL0DATI1_buf: BUFBA
      port map (A=>PLL0DATI1in_ipd, Z=>PLL0DATI1out_out);
    PLL0DATI0_buf: BUFBA
      port map (A=>PLL0DATI0in_ipd, Z=>PLL0DATI0out_out);
    PLL0ACKI_buf: BUFBA
      port map (A=>PLL0ACKIin_ipd, Z=>PLL0ACKIout_out);
    PLL1DATI7_buf: BUFBA
      port map (A=>PLL1DATI7in_ipd, Z=>PLL1DATI7out_out);
    PLL1DATI6_buf: BUFBA
      port map (A=>PLL1DATI6in_ipd, Z=>PLL1DATI6out_out);
    PLL1DATI5_buf: BUFBA
      port map (A=>PLL1DATI5in_ipd, Z=>PLL1DATI5out_out);
    PLL1DATI4_buf: BUFBA
      port map (A=>PLL1DATI4in_ipd, Z=>PLL1DATI4out_out);
    PLL1DATI3_buf: BUFBA
      port map (A=>PLL1DATI3in_ipd, Z=>PLL1DATI3out_out);
    PLL1DATI2_buf: BUFBA
      port map (A=>PLL1DATI2in_ipd, Z=>PLL1DATI2out_out);
    PLL1DATI1_buf: BUFBA
      port map (A=>PLL1DATI1in_ipd, Z=>PLL1DATI1out_out);
    PLL1DATI0_buf: BUFBA
      port map (A=>PLL1DATI0in_ipd, Z=>PLL1DATI0out_out);
    PLL1ACKI_buf: BUFBA
      port map (A=>PLL1ACKIin_ipd, Z=>PLL1ACKIout_out);
    I2C1SCLI_buf: BUFBA
      port map (A=>I2C1SCLIin_dly, Z=>I2C1SCLIout_out);
    I2C1SDAI_buf: BUFBA
      port map (A=>I2C1SDAIin_dly, Z=>I2C1SDAIout_out);
    I2C2SCLI_buf: BUFBA
      port map (A=>I2C2SCLIin_ipd, Z=>I2C2SCLIout_out);
    I2C2SDAI_buf: BUFBA
      port map (A=>I2C2SDAIin_ipd, Z=>I2C2SDAIout_out);
    SPISCKI_buf: BUFBA
      port map (A=>SPISCKIin_ipd, Z=>SPISCKIout_out);
    SPIMISOI_buf: BUFBA
      port map (A=>SPIMISOIin_ipd, Z=>SPIMISOIout_out);
    SPIMOSII_buf: BUFBA
      port map (A=>SPIMOSIIin_ipd, Z=>SPIMOSIIout_out);
    SPISCSN_buf: BUFBA
      port map (A=>SPISCSNin_ipd, Z=>SPISCSNout_out);
    TCCLKI_buf: BUFBA
      port map (A=>TCCLKIin_ipd, Z=>TCCLKIout_out);
    TCRSTN_buf: BUFBA
      port map (A=>TCRSTNin_ipd, Z=>TCRSTNout_out);
    TCIC_buf: BUFBA
      port map (A=>TCICin_ipd, Z=>TCICout_out);
    UFMSN_buf: BUFBA
      port map (A=>UFMSNin_ipd, Z=>UFMSNout_out);
    WBDATO7_buf: BUFBA
      port map (A=>WBDATO7in_ipd, Z=>WBDATO7out_out);
    WBDATO6_buf: BUFBA
      port map (A=>WBDATO6in_ipd, Z=>WBDATO6out_out);
    WBDATO5_buf: BUFBA
      port map (A=>WBDATO5in_ipd, Z=>WBDATO5out_out);
    WBDATO4_buf: BUFBA
      port map (A=>WBDATO4in_ipd, Z=>WBDATO4out_out);
    WBDATO3_buf: BUFBA
      port map (A=>WBDATO3in_ipd, Z=>WBDATO3out_out);
    WBDATO2_buf: BUFBA
      port map (A=>WBDATO2in_ipd, Z=>WBDATO2out_out);
    WBDATO1_buf: BUFBA
      port map (A=>WBDATO1in_ipd, Z=>WBDATO1out_out);
    WBDATO0_buf: BUFBA
      port map (A=>WBDATO0in_ipd, Z=>WBDATO0out_out);
    WBACKO_buf: BUFBA
      port map (A=>WBACKOin_ipd, Z=>WBACKOout_out);
    PLLCLKO_buf: BUFBA
      port map (A=>PLLCLKOin_ipd, Z=>PLLCLKOout_out);
    PLLRSTO_buf: BUFBA
      port map (A=>PLLRSTOin_ipd, Z=>PLLRSTOout_out);
    PLL0STBO_buf: BUFBA
      port map (A=>PLL0STBOin_ipd, Z=>PLL0STBOout_out);
    PLL1STBO_buf: BUFBA
      port map (A=>PLL1STBOin_ipd, Z=>PLL1STBOout_out);
    PLLWEO_buf: BUFBA
      port map (A=>PLLWEOin_ipd, Z=>PLLWEOout_out);
    PLLADRO4_buf: BUFBA
      port map (A=>PLLADRO4in_ipd, Z=>PLLADRO4out_out);
    PLLADRO3_buf: BUFBA
      port map (A=>PLLADRO3in_ipd, Z=>PLLADRO3out_out);
    PLLADRO2_buf: BUFBA
      port map (A=>PLLADRO2in_ipd, Z=>PLLADRO2out_out);
    PLLADRO1_buf: BUFBA
      port map (A=>PLLADRO1in_ipd, Z=>PLLADRO1out_out);
    PLLADRO0_buf: BUFBA
      port map (A=>PLLADRO0in_ipd, Z=>PLLADRO0out_out);
    PLLDATO7_buf: BUFBA
      port map (A=>PLLDATO7in_ipd, Z=>PLLDATO7out_out);
    PLLDATO6_buf: BUFBA
      port map (A=>PLLDATO6in_ipd, Z=>PLLDATO6out_out);
    PLLDATO5_buf: BUFBA
      port map (A=>PLLDATO5in_ipd, Z=>PLLDATO5out_out);
    PLLDATO4_buf: BUFBA
      port map (A=>PLLDATO4in_ipd, Z=>PLLDATO4out_out);
    PLLDATO3_buf: BUFBA
      port map (A=>PLLDATO3in_ipd, Z=>PLLDATO3out_out);
    PLLDATO2_buf: BUFBA
      port map (A=>PLLDATO2in_ipd, Z=>PLLDATO2out_out);
    PLLDATO1_buf: BUFBA
      port map (A=>PLLDATO1in_ipd, Z=>PLLDATO1out_out);
    PLLDATO0_buf: BUFBA
      port map (A=>PLLDATO0in_ipd, Z=>PLLDATO0out_out);
    I2C1SCLO_buf: BUFBA
      port map (A=>I2C1SCLOin_ipd, Z=>I2C1SCLOout_out);
    I2C1SCLOEN_buf: BUFBA
      port map (A=>I2C1SCLOENin_ipd, Z=>I2C1SCLOENout_out);
    I2C1SDAO_buf: BUFBA
      port map (A=>I2C1SDAOin_ipd, Z=>I2C1SDAOout_out);
    I2C1SDAOEN_buf: BUFBA
      port map (A=>I2C1SDAOENin_ipd, Z=>I2C1SDAOENout_out);
    I2C2SCLO_buf: BUFBA
      port map (A=>I2C2SCLOin_ipd, Z=>I2C2SCLOout_out);
    I2C2SCLOEN_buf: BUFBA
      port map (A=>I2C2SCLOENin_ipd, Z=>I2C2SCLOENout_out);
    I2C2SDAO_buf: BUFBA
      port map (A=>I2C2SDAOin_ipd, Z=>I2C2SDAOout_out);
    I2C2SDAOEN_buf: BUFBA
      port map (A=>I2C2SDAOENin_ipd, Z=>I2C2SDAOENout_out);
    I2C1IRQO_buf: BUFBA
      port map (A=>I2C1IRQOin_ipd, Z=>I2C1IRQOout_out);
    I2C2IRQO_buf: BUFBA
      port map (A=>I2C2IRQOin_ipd, Z=>I2C2IRQOout_out);
    SPISCKO_buf: BUFBA
      port map (A=>SPISCKOin_ipd, Z=>SPISCKOout_out);
    SPISCKEN_buf: BUFBA
      port map (A=>SPISCKENin_ipd, Z=>SPISCKENout_out);
    SPIMISOO_buf: BUFBA
      port map (A=>SPIMISOOin_ipd, Z=>SPIMISOOout_out);
    SPIMISOEN_buf: BUFBA
      port map (A=>SPIMISOENin_ipd, Z=>SPIMISOENout_out);
    SPIMOSIO_buf: BUFBA
      port map (A=>SPIMOSIOin_ipd, Z=>SPIMOSIOout_out);
    SPIMOSIEN_buf: BUFBA
      port map (A=>SPIMOSIENin_ipd, Z=>SPIMOSIENout_out);
    SPIMCSN0_buf: BUFBA
      port map (A=>SPIMCSN0in_ipd, Z=>SPIMCSN0out_out);
    SPIMCSN1_buf: BUFBA
      port map (A=>SPIMCSN1in_ipd, Z=>SPIMCSN1out_out);
    SPIMCSN2_buf: BUFBA
      port map (A=>SPIMCSN2in_ipd, Z=>SPIMCSN2out_out);
    SPIMCSN3_buf: BUFBA
      port map (A=>SPIMCSN3in_ipd, Z=>SPIMCSN3out_out);
    SPIMCSN4_buf: BUFBA
      port map (A=>SPIMCSN4in_ipd, Z=>SPIMCSN4out_out);
    SPIMCSN5_buf: BUFBA
      port map (A=>SPIMCSN5in_ipd, Z=>SPIMCSN5out_out);
    SPIMCSN6_buf: BUFBA
      port map (A=>SPIMCSN6in_ipd, Z=>SPIMCSN6out_out);
    SPIMCSN7_buf: BUFBA
      port map (A=>SPIMCSN7in_ipd, Z=>SPIMCSN7out_out);
    SPICSNEN_buf: BUFBA
      port map (A=>SPICSNENin_ipd, Z=>SPICSNENout_out);
    SPIIRQO_buf: BUFBA
      port map (A=>SPIIRQOin_ipd, Z=>SPIIRQOout_out);
    TCINT_buf: BUFBA
      port map (A=>TCINTin_ipd, Z=>TCINTout_out);
    TCOC_buf: BUFBA
      port map (A=>TCOCin_ipd, Z=>TCOCout_out);
    WBCUFMIRQ_buf: BUFBA
      port map (A=>WBCUFMIRQin_ipd, Z=>WBCUFMIRQout_out);
    CFGWAKE_buf: BUFBA
      port map (A=>CFGWAKEin_ipd, Z=>CFGWAKEout_out);
    CFGSTDBY_buf: BUFBA
      port map (A=>CFGSTDBYin_ipd, Z=>CFGSTDBYout_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(WBCLKIin_ipd, WBCLKIin, tipd_WBCLKIin);
      VitalWireDelay(WBRSTIin_ipd, WBRSTIin, tipd_WBRSTIin);
      VitalWireDelay(WBCYCIin_ipd, WBCYCIin, tipd_WBCYCIin);
      VitalWireDelay(WBSTBIin_ipd, WBSTBIin, tipd_WBSTBIin);
      VitalWireDelay(WBWEIin_ipd, WBWEIin, tipd_WBWEIin);
      VitalWireDelay(WBADRI7in_ipd, WBADRI7in, tipd_WBADRI7in);
      VitalWireDelay(WBADRI6in_ipd, WBADRI6in, tipd_WBADRI6in);
      VitalWireDelay(WBADRI5in_ipd, WBADRI5in, tipd_WBADRI5in);
      VitalWireDelay(WBADRI4in_ipd, WBADRI4in, tipd_WBADRI4in);
      VitalWireDelay(WBADRI3in_ipd, WBADRI3in, tipd_WBADRI3in);
      VitalWireDelay(WBADRI2in_ipd, WBADRI2in, tipd_WBADRI2in);
      VitalWireDelay(WBADRI1in_ipd, WBADRI1in, tipd_WBADRI1in);
      VitalWireDelay(WBADRI0in_ipd, WBADRI0in, tipd_WBADRI0in);
      VitalWireDelay(WBDATI7in_ipd, WBDATI7in, tipd_WBDATI7in);
      VitalWireDelay(WBDATI6in_ipd, WBDATI6in, tipd_WBDATI6in);
      VitalWireDelay(WBDATI5in_ipd, WBDATI5in, tipd_WBDATI5in);
      VitalWireDelay(WBDATI4in_ipd, WBDATI4in, tipd_WBDATI4in);
      VitalWireDelay(WBDATI3in_ipd, WBDATI3in, tipd_WBDATI3in);
      VitalWireDelay(WBDATI2in_ipd, WBDATI2in, tipd_WBDATI2in);
      VitalWireDelay(WBDATI1in_ipd, WBDATI1in, tipd_WBDATI1in);
      VitalWireDelay(WBDATI0in_ipd, WBDATI0in, tipd_WBDATI0in);
      VitalWireDelay(PLL0DATI7in_ipd, PLL0DATI7in, tipd_PLL0DATI7in);
      VitalWireDelay(PLL0DATI6in_ipd, PLL0DATI6in, tipd_PLL0DATI6in);
      VitalWireDelay(PLL0DATI5in_ipd, PLL0DATI5in, tipd_PLL0DATI5in);
      VitalWireDelay(PLL0DATI4in_ipd, PLL0DATI4in, tipd_PLL0DATI4in);
      VitalWireDelay(PLL0DATI3in_ipd, PLL0DATI3in, tipd_PLL0DATI3in);
      VitalWireDelay(PLL0DATI2in_ipd, PLL0DATI2in, tipd_PLL0DATI2in);
      VitalWireDelay(PLL0DATI1in_ipd, PLL0DATI1in, tipd_PLL0DATI1in);
      VitalWireDelay(PLL0DATI0in_ipd, PLL0DATI0in, tipd_PLL0DATI0in);
      VitalWireDelay(PLL0ACKIin_ipd, PLL0ACKIin, tipd_PLL0ACKIin);
      VitalWireDelay(PLL1DATI7in_ipd, PLL1DATI7in, tipd_PLL1DATI7in);
      VitalWireDelay(PLL1DATI6in_ipd, PLL1DATI6in, tipd_PLL1DATI6in);
      VitalWireDelay(PLL1DATI5in_ipd, PLL1DATI5in, tipd_PLL1DATI5in);
      VitalWireDelay(PLL1DATI4in_ipd, PLL1DATI4in, tipd_PLL1DATI4in);
      VitalWireDelay(PLL1DATI3in_ipd, PLL1DATI3in, tipd_PLL1DATI3in);
      VitalWireDelay(PLL1DATI2in_ipd, PLL1DATI2in, tipd_PLL1DATI2in);
      VitalWireDelay(PLL1DATI1in_ipd, PLL1DATI1in, tipd_PLL1DATI1in);
      VitalWireDelay(PLL1DATI0in_ipd, PLL1DATI0in, tipd_PLL1DATI0in);
      VitalWireDelay(PLL1ACKIin_ipd, PLL1ACKIin, tipd_PLL1ACKIin);
      VitalWireDelay(I2C1SCLIin_ipd, I2C1SCLIin, tipd_I2C1SCLIin);
      VitalWireDelay(I2C1SDAIin_ipd, I2C1SDAIin, tipd_I2C1SDAIin);
      VitalWireDelay(I2C2SCLIin_ipd, I2C2SCLIin, tipd_I2C2SCLIin);
      VitalWireDelay(I2C2SDAIin_ipd, I2C2SDAIin, tipd_I2C2SDAIin);
      VitalWireDelay(SPISCKIin_ipd, SPISCKIin, tipd_SPISCKIin);
      VitalWireDelay(SPIMISOIin_ipd, SPIMISOIin, tipd_SPIMISOIin);
      VitalWireDelay(SPIMOSIIin_ipd, SPIMOSIIin, tipd_SPIMOSIIin);
      VitalWireDelay(SPISCSNin_ipd, SPISCSNin, tipd_SPISCSNin);
      VitalWireDelay(TCCLKIin_ipd, TCCLKIin, tipd_TCCLKIin);
      VitalWireDelay(TCRSTNin_ipd, TCRSTNin, tipd_TCRSTNin);
      VitalWireDelay(TCICin_ipd, TCICin, tipd_TCICin);
      VitalWireDelay(UFMSNin_ipd, UFMSNin, tipd_UFMSNin);
      VitalWireDelay(WBDATO7in_ipd, WBDATO7in, tipd_WBDATO7in);
      VitalWireDelay(WBDATO6in_ipd, WBDATO6in, tipd_WBDATO6in);
      VitalWireDelay(WBDATO5in_ipd, WBDATO5in, tipd_WBDATO5in);
      VitalWireDelay(WBDATO4in_ipd, WBDATO4in, tipd_WBDATO4in);
      VitalWireDelay(WBDATO3in_ipd, WBDATO3in, tipd_WBDATO3in);
      VitalWireDelay(WBDATO2in_ipd, WBDATO2in, tipd_WBDATO2in);
      VitalWireDelay(WBDATO1in_ipd, WBDATO1in, tipd_WBDATO1in);
      VitalWireDelay(WBDATO0in_ipd, WBDATO0in, tipd_WBDATO0in);
      VitalWireDelay(WBACKOin_ipd, WBACKOin, tipd_WBACKOin);
      VitalWireDelay(PLLCLKOin_ipd, PLLCLKOin, tipd_PLLCLKOin);
      VitalWireDelay(PLLRSTOin_ipd, PLLRSTOin, tipd_PLLRSTOin);
      VitalWireDelay(PLL0STBOin_ipd, PLL0STBOin, tipd_PLL0STBOin);
      VitalWireDelay(PLL1STBOin_ipd, PLL1STBOin, tipd_PLL1STBOin);
      VitalWireDelay(PLLWEOin_ipd, PLLWEOin, tipd_PLLWEOin);
      VitalWireDelay(PLLADRO4in_ipd, PLLADRO4in, tipd_PLLADRO4in);
      VitalWireDelay(PLLADRO3in_ipd, PLLADRO3in, tipd_PLLADRO3in);
      VitalWireDelay(PLLADRO2in_ipd, PLLADRO2in, tipd_PLLADRO2in);
      VitalWireDelay(PLLADRO1in_ipd, PLLADRO1in, tipd_PLLADRO1in);
      VitalWireDelay(PLLADRO0in_ipd, PLLADRO0in, tipd_PLLADRO0in);
      VitalWireDelay(PLLDATO7in_ipd, PLLDATO7in, tipd_PLLDATO7in);
      VitalWireDelay(PLLDATO6in_ipd, PLLDATO6in, tipd_PLLDATO6in);
      VitalWireDelay(PLLDATO5in_ipd, PLLDATO5in, tipd_PLLDATO5in);
      VitalWireDelay(PLLDATO4in_ipd, PLLDATO4in, tipd_PLLDATO4in);
      VitalWireDelay(PLLDATO3in_ipd, PLLDATO3in, tipd_PLLDATO3in);
      VitalWireDelay(PLLDATO2in_ipd, PLLDATO2in, tipd_PLLDATO2in);
      VitalWireDelay(PLLDATO1in_ipd, PLLDATO1in, tipd_PLLDATO1in);
      VitalWireDelay(PLLDATO0in_ipd, PLLDATO0in, tipd_PLLDATO0in);
      VitalWireDelay(I2C1SCLOin_ipd, I2C1SCLOin, tipd_I2C1SCLOin);
      VitalWireDelay(I2C1SCLOENin_ipd, I2C1SCLOENin, tipd_I2C1SCLOENin);
      VitalWireDelay(I2C1SDAOin_ipd, I2C1SDAOin, tipd_I2C1SDAOin);
      VitalWireDelay(I2C1SDAOENin_ipd, I2C1SDAOENin, tipd_I2C1SDAOENin);
      VitalWireDelay(I2C2SCLOin_ipd, I2C2SCLOin, tipd_I2C2SCLOin);
      VitalWireDelay(I2C2SCLOENin_ipd, I2C2SCLOENin, tipd_I2C2SCLOENin);
      VitalWireDelay(I2C2SDAOin_ipd, I2C2SDAOin, tipd_I2C2SDAOin);
      VitalWireDelay(I2C2SDAOENin_ipd, I2C2SDAOENin, tipd_I2C2SDAOENin);
      VitalWireDelay(I2C1IRQOin_ipd, I2C1IRQOin, tipd_I2C1IRQOin);
      VitalWireDelay(I2C2IRQOin_ipd, I2C2IRQOin, tipd_I2C2IRQOin);
      VitalWireDelay(SPISCKOin_ipd, SPISCKOin, tipd_SPISCKOin);
      VitalWireDelay(SPISCKENin_ipd, SPISCKENin, tipd_SPISCKENin);
      VitalWireDelay(SPIMISOOin_ipd, SPIMISOOin, tipd_SPIMISOOin);
      VitalWireDelay(SPIMISOENin_ipd, SPIMISOENin, tipd_SPIMISOENin);
      VitalWireDelay(SPIMOSIOin_ipd, SPIMOSIOin, tipd_SPIMOSIOin);
      VitalWireDelay(SPIMOSIENin_ipd, SPIMOSIENin, tipd_SPIMOSIENin);
      VitalWireDelay(SPIMCSN0in_ipd, SPIMCSN0in, tipd_SPIMCSN0in);
      VitalWireDelay(SPIMCSN1in_ipd, SPIMCSN1in, tipd_SPIMCSN1in);
      VitalWireDelay(SPIMCSN2in_ipd, SPIMCSN2in, tipd_SPIMCSN2in);
      VitalWireDelay(SPIMCSN3in_ipd, SPIMCSN3in, tipd_SPIMCSN3in);
      VitalWireDelay(SPIMCSN4in_ipd, SPIMCSN4in, tipd_SPIMCSN4in);
      VitalWireDelay(SPIMCSN5in_ipd, SPIMCSN5in, tipd_SPIMCSN5in);
      VitalWireDelay(SPIMCSN6in_ipd, SPIMCSN6in, tipd_SPIMCSN6in);
      VitalWireDelay(SPIMCSN7in_ipd, SPIMCSN7in, tipd_SPIMCSN7in);
      VitalWireDelay(SPICSNENin_ipd, SPICSNENin, tipd_SPICSNENin);
      VitalWireDelay(SPIIRQOin_ipd, SPIIRQOin, tipd_SPIIRQOin);
      VitalWireDelay(TCINTin_ipd, TCINTin, tipd_TCINTin);
      VitalWireDelay(TCOCin_ipd, TCOCin, tipd_TCOCin);
      VitalWireDelay(WBCUFMIRQin_ipd, WBCUFMIRQin, tipd_WBCUFMIRQin);
      VitalWireDelay(CFGWAKEin_ipd, CFGWAKEin, tipd_CFGWAKEin);
      VitalWireDelay(CFGSTDBYin_ipd, CFGSTDBYin, tipd_CFGSTDBYin);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(WBCLKIin_dly, WBCLKIin_ipd, ticd_WBCLKIin);
      VitalSignalDelay(WBRSTIin_dly, WBRSTIin_ipd, tisd_WBRSTIin_WBCLKIin);
      VitalSignalDelay(WBCYCIin_dly, WBCYCIin_ipd, tisd_WBCYCIin_WBCLKIin);
      VitalSignalDelay(WBSTBIin_dly, WBSTBIin_ipd, tisd_WBSTBIin_WBCLKIin);
      VitalSignalDelay(WBWEIin_dly, WBWEIin_ipd, tisd_WBWEIin_WBCLKIin);
      VitalSignalDelay(WBADRI6in_dly, WBADRI6in_ipd, tisd_WBADRI6in_WBCLKIin);
      VitalSignalDelay(WBADRI2in_dly, WBADRI2in_ipd, tisd_WBADRI2in_WBCLKIin);
      VitalSignalDelay(WBADRI0in_dly, WBADRI0in_ipd, tisd_WBADRI0in_WBCLKIin);
      VitalSignalDelay(WBDATI7in_dly, WBDATI7in_ipd, tisd_WBDATI7in_WBCLKIin);
      VitalSignalDelay(WBDATI6in_dly, WBDATI6in_ipd, tisd_WBDATI6in_WBCLKIin);
      VitalSignalDelay(WBDATI4in_dly, WBDATI4in_ipd, tisd_WBDATI4in_WBCLKIin);
      VitalSignalDelay(WBDATI3in_dly, WBDATI3in_ipd, tisd_WBDATI3in_WBCLKIin);
      VitalSignalDelay(WBDATI2in_dly, WBDATI2in_ipd, tisd_WBDATI2in_WBCLKIin);
      VitalSignalDelay(WBDATI1in_dly, WBDATI1in_ipd, tisd_WBDATI1in_WBCLKIin);
      VitalSignalDelay(I2C1SCLIin_dly, I2C1SCLIin_ipd, ticd_I2C1SCLIin);
      VitalSignalDelay(I2C1SDAIin_dly, I2C1SDAIin_ipd, tisd_I2C1SDAIin_I2C1SCLIin);
    END BLOCK;

    VitalBehavior : PROCESS (WBCLKIin_dly, WBCLKIout_out, WBRSTIin_dly, 
      WBRSTIout_out, WBCYCIin_dly, WBCYCIout_out, WBSTBIin_dly, WBSTBIout_out, 
      WBWEIin_dly, WBWEIout_out, WBADRI7in_ipd, WBADRI7out_out, WBADRI6in_dly, 
      WBADRI6out_out, WBADRI5in_ipd, WBADRI5out_out, WBADRI4in_ipd, 
      WBADRI4out_out, WBADRI3in_ipd, WBADRI3out_out, WBADRI2in_dly, 
      WBADRI2out_out, WBADRI1in_ipd, WBADRI1out_out, WBADRI0in_dly, 
      WBADRI0out_out, WBDATI7in_dly, WBDATI7out_out, WBDATI6in_dly, 
      WBDATI6out_out, WBDATI5in_ipd, WBDATI5out_out, WBDATI4in_dly, 
      WBDATI4out_out, WBDATI3in_dly, WBDATI3out_out, WBDATI2in_dly, 
      WBDATI2out_out, WBDATI1in_dly, WBDATI1out_out, WBDATI0in_ipd, 
      WBDATI0out_out, PLL0DATI7in_ipd, PLL0DATI7out_out, PLL0DATI6in_ipd, 
      PLL0DATI6out_out, PLL0DATI5in_ipd, PLL0DATI5out_out, PLL0DATI4in_ipd, 
      PLL0DATI4out_out, PLL0DATI3in_ipd, PLL0DATI3out_out, PLL0DATI2in_ipd, 
      PLL0DATI2out_out, PLL0DATI1in_ipd, PLL0DATI1out_out, PLL0DATI0in_ipd, 
      PLL0DATI0out_out, PLL0ACKIin_ipd, PLL0ACKIout_out, PLL1DATI7in_ipd, 
      PLL1DATI7out_out, PLL1DATI6in_ipd, PLL1DATI6out_out, PLL1DATI5in_ipd, 
      PLL1DATI5out_out, PLL1DATI4in_ipd, PLL1DATI4out_out, PLL1DATI3in_ipd, 
      PLL1DATI3out_out, PLL1DATI2in_ipd, PLL1DATI2out_out, PLL1DATI1in_ipd, 
      PLL1DATI1out_out, PLL1DATI0in_ipd, PLL1DATI0out_out, PLL1ACKIin_ipd, 
      PLL1ACKIout_out, I2C1SCLIin_dly, I2C1SCLIout_out, I2C1SDAIin_dly, 
      I2C1SDAIout_out, I2C2SCLIin_ipd, I2C2SCLIout_out, I2C2SDAIin_ipd, 
      I2C2SDAIout_out, SPISCKIin_ipd, SPISCKIout_out, SPIMISOIin_ipd, 
      SPIMISOIout_out, SPIMOSIIin_ipd, SPIMOSIIout_out, SPISCSNin_ipd, 
      SPISCSNout_out, TCCLKIin_ipd, TCCLKIout_out, TCRSTNin_ipd, TCRSTNout_out, 
      TCICin_ipd, TCICout_out, UFMSNin_ipd, UFMSNout_out, WBDATO7out_out, 
      WBDATO7in_ipd, WBDATO6out_out, WBDATO6in_ipd, WBDATO5out_out, 
      WBDATO5in_ipd, WBDATO4out_out, WBDATO4in_ipd, WBDATO3out_out, 
      WBDATO3in_ipd, WBDATO2out_out, WBDATO2in_ipd, WBDATO1out_out, 
      WBDATO1in_ipd, WBDATO0out_out, WBDATO0in_ipd, WBACKOout_out, 
      WBACKOin_ipd, PLLCLKOout_out, PLLCLKOin_ipd, PLLRSTOout_out, 
      PLLRSTOin_ipd, PLL0STBOout_out, PLL0STBOin_ipd, PLL1STBOout_out, 
      PLL1STBOin_ipd, PLLWEOout_out, PLLWEOin_ipd, PLLADRO4out_out, 
      PLLADRO4in_ipd, PLLADRO3out_out, PLLADRO3in_ipd, PLLADRO2out_out, 
      PLLADRO2in_ipd, PLLADRO1out_out, PLLADRO1in_ipd, PLLADRO0out_out, 
      PLLADRO0in_ipd, PLLDATO7out_out, PLLDATO7in_ipd, PLLDATO6out_out, 
      PLLDATO6in_ipd, PLLDATO5out_out, PLLDATO5in_ipd, PLLDATO4out_out, 
      PLLDATO4in_ipd, PLLDATO3out_out, PLLDATO3in_ipd, PLLDATO2out_out, 
      PLLDATO2in_ipd, PLLDATO1out_out, PLLDATO1in_ipd, PLLDATO0out_out, 
      PLLDATO0in_ipd, I2C1SCLOout_out, I2C1SCLOin_ipd, I2C1SCLOENout_out, 
      I2C1SCLOENin_ipd, I2C1SDAOout_out, I2C1SDAOin_ipd, I2C1SDAOENout_out, 
      I2C1SDAOENin_ipd, I2C2SCLOout_out, I2C2SCLOin_ipd, I2C2SCLOENout_out, 
      I2C2SCLOENin_ipd, I2C2SDAOout_out, I2C2SDAOin_ipd, I2C2SDAOENout_out, 
      I2C2SDAOENin_ipd, I2C1IRQOout_out, I2C1IRQOin_ipd, I2C2IRQOout_out, 
      I2C2IRQOin_ipd, SPISCKOout_out, SPISCKOin_ipd, SPISCKENout_out, 
      SPISCKENin_ipd, SPIMISOOout_out, SPIMISOOin_ipd, SPIMISOENout_out, 
      SPIMISOENin_ipd, SPIMOSIOout_out, SPIMOSIOin_ipd, SPIMOSIENout_out, 
      SPIMOSIENin_ipd, SPIMCSN0out_out, SPIMCSN0in_ipd, SPIMCSN1out_out, 
      SPIMCSN1in_ipd, SPIMCSN2out_out, SPIMCSN2in_ipd, SPIMCSN3out_out, 
      SPIMCSN3in_ipd, SPIMCSN4out_out, SPIMCSN4in_ipd, SPIMCSN5out_out, 
      SPIMCSN5in_ipd, SPIMCSN6out_out, SPIMCSN6in_ipd, SPIMCSN7out_out, 
      SPIMCSN7in_ipd, SPICSNENout_out, SPICSNENin_ipd, SPIIRQOout_out, 
      SPIIRQOin_ipd, TCINTout_out, TCINTin_ipd, TCOCout_out, TCOCin_ipd, 
      WBCUFMIRQout_out, WBCUFMIRQin_ipd, CFGWAKEout_out, CFGWAKEin_ipd, 
      CFGSTDBYout_out, CFGSTDBYin_ipd)
    VARIABLE WBACKOout_zd         	: std_logic := 'X';
    VARIABLE WBACKOout_GlitchData 	: VitalGlitchDataType;
    VARIABLE I2C1SCLOENout_zd         	: std_logic := 'X';
    VARIABLE I2C1SCLOENout_GlitchData 	: VitalGlitchDataType;
    VARIABLE I2C1SDAOout_zd         	: std_logic := 'X';
    VARIABLE I2C1SDAOout_GlitchData 	: VitalGlitchDataType;
    VARIABLE I2C1SDAOENout_zd         	: std_logic := 'X';
    VARIABLE I2C1SDAOENout_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_WBRSTIin_WBCLKIin       	: x01 := '0';
    VARIABLE WBRSTIin_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBCYCIin_WBCLKIin       	: x01 := '0';
    VARIABLE WBCYCIin_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBSTBIin_WBCLKIin       	: x01 := '0';
    VARIABLE WBSTBIin_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBWEIin_WBCLKIin       	: x01 := '0';
    VARIABLE WBWEIin_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBADRI0in_WBCLKIin       	: x01 := '0';
    VARIABLE WBADRI0in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBADRI2in_WBCLKIin       	: x01 := '0';
    VARIABLE WBADRI2in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBADRI6in_WBCLKIin       	: x01 := '0';
    VARIABLE WBADRI6in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBDATI1in_WBCLKIin       	: x01 := '0';
    VARIABLE WBDATI1in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBDATI2in_WBCLKIin       	: x01 := '0';
    VARIABLE WBDATI2in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBDATI3in_WBCLKIin       	: x01 := '0';
    VARIABLE WBDATI3in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBDATI4in_WBCLKIin       	: x01 := '0';
    VARIABLE WBDATI4in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBDATI6in_WBCLKIin       	: x01 := '0';
    VARIABLE WBDATI6in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBDATI7in_WBCLKIin       	: x01 := '0';
    VARIABLE WBDATI7in_WBCLKIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_I2C1SDAIin_I2C1SCLIin       	: x01 := '0';
    VARIABLE I2C1SDAIin_I2C1SCLIin_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WBCLKIin_WBCLKIin          	: x01 := '0';
    VARIABLE periodcheckinfo_WBCLKIin	: VitalPeriodDataType;
    VARIABLE tviol_I2C1SCLOin_I2C1SCLOin          	: x01 := '0';
    VARIABLE periodcheckinfo_I2C1SCLOin	: VitalPeriodDataType;
    VARIABLE tviol_I2C1SCLIin_I2C1SCLIin          	: x01 := '0';
    VARIABLE periodcheckinfo_I2C1SCLIin	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => WBRSTIin_dly,
        TestSignalName => "WBRSTIin",
        TestDelay => tisd_WBRSTIin_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBRSTIin_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBRSTIin_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBRSTIin_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBRSTIin_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBRSTIin_WBCLKIin_TimingDatash,
        Violation => tviol_WBRSTIin_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBCYCIin_dly,
        TestSignalName => "WBCYCIin",
        TestDelay => tisd_WBCYCIin_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBCYCIin_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBCYCIin_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBCYCIin_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBCYCIin_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBCYCIin_WBCLKIin_TimingDatash,
        Violation => tviol_WBCYCIin_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBSTBIin_dly,
        TestSignalName => "WBSTBIin",
        TestDelay => tisd_WBSTBIin_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBSTBIin_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBSTBIin_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBSTBIin_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBSTBIin_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBSTBIin_WBCLKIin_TimingDatash,
        Violation => tviol_WBSTBIin_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBWEIin_dly,
        TestSignalName => "WBWEIin",
        TestDelay => tisd_WBWEIin_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBWEIin_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBWEIin_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBWEIin_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBWEIin_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBWEIin_WBCLKIin_TimingDatash,
        Violation => tviol_WBWEIin_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBADRI0in_dly,
        TestSignalName => "WBADRI0in",
        TestDelay => tisd_WBADRI0in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBADRI0in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBADRI0in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBADRI0in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBADRI0in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBADRI0in_WBCLKIin_TimingDatash,
        Violation => tviol_WBADRI0in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBADRI2in_dly,
        TestSignalName => "WBADRI2in",
        TestDelay => tisd_WBADRI2in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBADRI2in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBADRI2in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBADRI2in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBADRI2in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBADRI2in_WBCLKIin_TimingDatash,
        Violation => tviol_WBADRI2in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBADRI6in_dly,
        TestSignalName => "WBADRI6in",
        TestDelay => tisd_WBADRI6in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBADRI6in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBADRI6in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBADRI6in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBADRI6in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBADRI6in_WBCLKIin_TimingDatash,
        Violation => tviol_WBADRI6in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBDATI1in_dly,
        TestSignalName => "WBDATI1in",
        TestDelay => tisd_WBDATI1in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBDATI1in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBDATI1in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBDATI1in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBDATI1in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBDATI1in_WBCLKIin_TimingDatash,
        Violation => tviol_WBDATI1in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBDATI2in_dly,
        TestSignalName => "WBDATI2in",
        TestDelay => tisd_WBDATI2in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBDATI2in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBDATI2in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBDATI2in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBDATI2in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBDATI2in_WBCLKIin_TimingDatash,
        Violation => tviol_WBDATI2in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBDATI3in_dly,
        TestSignalName => "WBDATI3in",
        TestDelay => tisd_WBDATI3in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBDATI3in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBDATI3in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBDATI3in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBDATI3in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBDATI3in_WBCLKIin_TimingDatash,
        Violation => tviol_WBDATI3in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBDATI4in_dly,
        TestSignalName => "WBDATI4in",
        TestDelay => tisd_WBDATI4in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBDATI4in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBDATI4in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBDATI4in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBDATI4in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBDATI4in_WBCLKIin_TimingDatash,
        Violation => tviol_WBDATI4in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBDATI6in_dly,
        TestSignalName => "WBDATI6in",
        TestDelay => tisd_WBDATI6in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBDATI6in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBDATI6in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBDATI6in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBDATI6in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBDATI6in_WBCLKIin_TimingDatash,
        Violation => tviol_WBDATI6in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WBDATI7in_dly,
        TestSignalName => "WBDATI7in",
        TestDelay => tisd_WBDATI7in_WBCLKIin,
        RefSignal => WBCLKIin_dly,
        RefSignalName => "WBCLKIin",
        RefDelay => ticd_WBCLKIin,
        SetupHigh => tsetup_WBDATI7in_WBCLKIin_noedge_posedge,
        SetupLow => tsetup_WBDATI7in_WBCLKIin_noedge_posedge,
        HoldHigh => thold_WBDATI7in_WBCLKIin_noedge_posedge,
        HoldLow => thold_WBDATI7in_WBCLKIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WBDATI7in_WBCLKIin_TimingDatash,
        Violation => tviol_WBDATI7in_WBCLKIin,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => I2C1SDAIin_dly,
        TestSignalName => "I2C1SDAIin",
        TestDelay => tisd_I2C1SDAIin_I2C1SCLIin,
        RefSignal => I2C1SCLIin_dly,
        RefSignalName => "I2C1SCLIin",
        RefDelay => ticd_I2C1SCLIin,
        SetupHigh => tsetup_I2C1SDAIin_I2C1SCLIin_noedge_posedge,
        SetupLow => tsetup_I2C1SDAIin_I2C1SCLIin_noedge_posedge,
        HoldHigh => thold_I2C1SDAIin_I2C1SCLIin_noedge_posedge,
        HoldLow => thold_I2C1SDAIin_I2C1SCLIin_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => I2C1SDAIin_I2C1SCLIin_TimingDatash,
        Violation => tviol_I2C1SDAIin_I2C1SCLIin,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => WBCLKIin_ipd,
        TestSignalName => "WBCLKIin",
        Period => tperiod_WBCLKIin,
        PulseWidthHigh => tpw_WBCLKIin_posedge,
        PulseWidthLow => tpw_WBCLKIin_negedge,
        PeriodData => periodcheckinfo_WBCLKIin,
        Violation => tviol_WBCLKIin_WBCLKIin,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => I2C1SCLOin_ipd,
        TestSignalName => "I2C1SCLOin",
        Period => tperiod_I2C1SCLOin,
        PulseWidthHigh => tpw_I2C1SCLOin_posedge,
        PulseWidthLow => tpw_I2C1SCLOin_negedge,
        PeriodData => periodcheckinfo_I2C1SCLOin,
        Violation => tviol_I2C1SCLOin_I2C1SCLOin,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => I2C1SCLIin_ipd,
        TestSignalName => "I2C1SCLIin",
        Period => tperiod_I2C1SCLIin,
        PulseWidthHigh => tpw_I2C1SCLIin_posedge,
        PulseWidthLow => tpw_I2C1SCLIin_negedge,
        PeriodData => periodcheckinfo_I2C1SCLIin,
        Violation => tviol_I2C1SCLIin_I2C1SCLIin,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    WBCLKIout 	<= WBCLKIout_out;
    WBRSTIout 	<= WBRSTIout_out;
    WBCYCIout 	<= WBCYCIout_out;
    WBSTBIout 	<= WBSTBIout_out;
    WBWEIout 	<= WBWEIout_out;
    WBADRI7out 	<= WBADRI7out_out;
    WBADRI6out 	<= WBADRI6out_out;
    WBADRI5out 	<= WBADRI5out_out;
    WBADRI4out 	<= WBADRI4out_out;
    WBADRI3out 	<= WBADRI3out_out;
    WBADRI2out 	<= WBADRI2out_out;
    WBADRI1out 	<= WBADRI1out_out;
    WBADRI0out 	<= WBADRI0out_out;
    WBDATI7out 	<= WBDATI7out_out;
    WBDATI6out 	<= WBDATI6out_out;
    WBDATI5out 	<= WBDATI5out_out;
    WBDATI4out 	<= WBDATI4out_out;
    WBDATI3out 	<= WBDATI3out_out;
    WBDATI2out 	<= WBDATI2out_out;
    WBDATI1out 	<= WBDATI1out_out;
    WBDATI0out 	<= WBDATI0out_out;
    PLL0DATI7out 	<= PLL0DATI7out_out;
    PLL0DATI6out 	<= PLL0DATI6out_out;
    PLL0DATI5out 	<= PLL0DATI5out_out;
    PLL0DATI4out 	<= PLL0DATI4out_out;
    PLL0DATI3out 	<= PLL0DATI3out_out;
    PLL0DATI2out 	<= PLL0DATI2out_out;
    PLL0DATI1out 	<= PLL0DATI1out_out;
    PLL0DATI0out 	<= PLL0DATI0out_out;
    PLL0ACKIout 	<= PLL0ACKIout_out;
    PLL1DATI7out 	<= PLL1DATI7out_out;
    PLL1DATI6out 	<= PLL1DATI6out_out;
    PLL1DATI5out 	<= PLL1DATI5out_out;
    PLL1DATI4out 	<= PLL1DATI4out_out;
    PLL1DATI3out 	<= PLL1DATI3out_out;
    PLL1DATI2out 	<= PLL1DATI2out_out;
    PLL1DATI1out 	<= PLL1DATI1out_out;
    PLL1DATI0out 	<= PLL1DATI0out_out;
    PLL1ACKIout 	<= PLL1ACKIout_out;
    I2C1SCLIout 	<= I2C1SCLIout_out;
    I2C1SDAIout 	<= I2C1SDAIout_out;
    I2C2SCLIout 	<= I2C2SCLIout_out;
    I2C2SDAIout 	<= I2C2SDAIout_out;
    SPISCKIout 	<= SPISCKIout_out;
    SPIMISOIout 	<= SPIMISOIout_out;
    SPIMOSIIout 	<= SPIMOSIIout_out;
    SPISCSNout 	<= SPISCSNout_out;
    TCCLKIout 	<= TCCLKIout_out;
    TCRSTNout 	<= TCRSTNout_out;
    TCICout 	<= TCICout_out;
    UFMSNout 	<= UFMSNout_out;
    WBDATO7out 	<= WBDATO7out_out;
    WBDATO6out 	<= WBDATO6out_out;
    WBDATO5out 	<= WBDATO5out_out;
    WBDATO4out 	<= WBDATO4out_out;
    WBDATO3out 	<= WBDATO3out_out;
    WBDATO2out 	<= WBDATO2out_out;
    WBDATO1out 	<= WBDATO1out_out;
    WBDATO0out 	<= WBDATO0out_out;
    WBACKOout_zd 	:= WBACKOout_out;
    PLLCLKOout 	<= PLLCLKOout_out;
    PLLRSTOout 	<= PLLRSTOout_out;
    PLL0STBOout 	<= PLL0STBOout_out;
    PLL1STBOout 	<= PLL1STBOout_out;
    PLLWEOout 	<= PLLWEOout_out;
    PLLADRO4out 	<= PLLADRO4out_out;
    PLLADRO3out 	<= PLLADRO3out_out;
    PLLADRO2out 	<= PLLADRO2out_out;
    PLLADRO1out 	<= PLLADRO1out_out;
    PLLADRO0out 	<= PLLADRO0out_out;
    PLLDATO7out 	<= PLLDATO7out_out;
    PLLDATO6out 	<= PLLDATO6out_out;
    PLLDATO5out 	<= PLLDATO5out_out;
    PLLDATO4out 	<= PLLDATO4out_out;
    PLLDATO3out 	<= PLLDATO3out_out;
    PLLDATO2out 	<= PLLDATO2out_out;
    PLLDATO1out 	<= PLLDATO1out_out;
    PLLDATO0out 	<= PLLDATO0out_out;
    I2C1SCLOout 	<= I2C1SCLOout_out;
    I2C1SCLOENout_zd 	:= I2C1SCLOENout_out;
    I2C1SDAOout_zd 	:= I2C1SDAOout_out;
    I2C1SDAOENout_zd 	:= I2C1SDAOENout_out;
    I2C2SCLOout 	<= I2C2SCLOout_out;
    I2C2SCLOENout 	<= I2C2SCLOENout_out;
    I2C2SDAOout 	<= I2C2SDAOout_out;
    I2C2SDAOENout 	<= I2C2SDAOENout_out;
    I2C1IRQOout 	<= I2C1IRQOout_out;
    I2C2IRQOout 	<= I2C2IRQOout_out;
    SPISCKOout 	<= SPISCKOout_out;
    SPISCKENout 	<= SPISCKENout_out;
    SPIMISOOout 	<= SPIMISOOout_out;
    SPIMISOENout 	<= SPIMISOENout_out;
    SPIMOSIOout 	<= SPIMOSIOout_out;
    SPIMOSIENout 	<= SPIMOSIENout_out;
    SPIMCSN0out 	<= SPIMCSN0out_out;
    SPIMCSN1out 	<= SPIMCSN1out_out;
    SPIMCSN2out 	<= SPIMCSN2out_out;
    SPIMCSN3out 	<= SPIMCSN3out_out;
    SPIMCSN4out 	<= SPIMCSN4out_out;
    SPIMCSN5out 	<= SPIMCSN5out_out;
    SPIMCSN6out 	<= SPIMCSN6out_out;
    SPIMCSN7out 	<= SPIMCSN7out_out;
    SPICSNENout 	<= SPICSNENout_out;
    SPIIRQOout 	<= SPIIRQOout_out;
    TCINTout 	<= TCINTout_out;
    TCOCout 	<= TCOCout_out;
    WBCUFMIRQout 	<= WBCUFMIRQout_out;
    CFGWAKEout 	<= CFGWAKEout_out;
    CFGSTDBYout 	<= CFGSTDBYout_out;

    VitalPathDelay01 (
      OutSignal => WBACKOout, OutSignalName => "WBACKOout", OutTemp => WBACKOout_zd,
      Paths      => (0 => (InputChangeTime => WBCLKIin_dly'last_event,
                           PathDelay => tpd_WBCLKIin_WBACKOout,
                           PathCondition => TRUE)),
      GlitchData => WBACKOout_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (

        OutSignal => I2C1SDAOENout, OutSignalName => "I2C1SDAOENout", OutTemp => I2C1SDAOENout_zd,
      Paths      => (0 => (InputChangeTime => I2C1SCLOin_ipd'last_event,
                           PathDelay => tpd_I2C1SCLOin_I2C1SDAOENout,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => I2C1SCLIin_dly'last_event,
                           PathDelay => tpd_I2C1SCLIin_I2C1SDAOENout,
                           PathCondition => TRUE)),
      GlitchData => I2C1SDAOENout_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (

        OutSignal => I2C1SDAOout, OutSignalName => "I2C1SDAOout", OutTemp => I2C1SDAOout_zd,
      Paths      => (0 => (InputChangeTime => I2C1SCLOin_ipd'last_event,
                           PathDelay => tpd_I2C1SCLOin_I2C1SDAOout,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => I2C1SCLIin_dly'last_event,
                           PathDelay => tpd_I2C1SCLIin_I2C1SDAOout,
                           PathCondition => TRUE)),
      GlitchData => I2C1SDAOout_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (

        OutSignal => I2C1SCLOENout, OutSignalName => "I2C1SCLOENout", OutTemp => I2C1SCLOENout_zd,
      Paths      => (0 => (InputChangeTime => I2C1SCLOin_ipd'last_event,
                           PathDelay => tpd_I2C1SCLOin_I2C1SCLOENout,
                           PathCondition => TRUE)),
      GlitchData => I2C1SCLOENout_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity EFBB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity EFBB is
    port (WBCLKI: in Std_logic; WBRSTI: in Std_logic; WBCYCI: in Std_logic; 
          WBSTBI: in Std_logic; WBWEI: in Std_logic; WBADRI0: in Std_logic; 
          WBADRI1: in Std_logic; WBADRI2: in Std_logic; WBADRI3: in Std_logic; 
          WBADRI4: in Std_logic; WBADRI5: in Std_logic; WBADRI6: in Std_logic; 
          WBADRI7: in Std_logic; WBDATI0: in Std_logic; WBDATI1: in Std_logic; 
          WBDATI2: in Std_logic; WBDATI3: in Std_logic; WBDATI4: in Std_logic; 
          WBDATI5: in Std_logic; WBDATI6: in Std_logic; WBDATI7: in Std_logic; 
          WBDATO0: out Std_logic; WBDATO1: out Std_logic; 
          WBDATO2: out Std_logic; WBDATO3: out Std_logic; 
          WBDATO4: out Std_logic; WBDATO5: out Std_logic; 
          WBDATO6: out Std_logic; WBDATO7: out Std_logic; 
          WBACKO: out Std_logic; WBCUFMIRQ: out Std_logic; UFMSN: in Std_logic; 
          CFGWAKE: out Std_logic; CFGSTDBY: out Std_logic; 
          I2C1SCLI: in Std_logic; I2C1SCLO: out Std_logic; 
          I2C1SCLOEN: out Std_logic; I2C1SDAI: in Std_logic; 
          I2C1SDAO: out Std_logic; I2C1SDAOEN: out Std_logic; 
          I2C2SCLI: in Std_logic; I2C2SCLO: out Std_logic; 
          I2C2SCLOEN: out Std_logic; I2C2SDAI: in Std_logic; 
          I2C2SDAO: out Std_logic; I2C2SDAOEN: out Std_logic; 
          I2C1IRQO: out Std_logic; I2C2IRQO: out Std_logic; 
          SPISCKI: in Std_logic; SPISCKO: out Std_logic; 
          SPISCKEN: out Std_logic; SPIMISOI: in Std_logic; 
          SPIMISOO: out Std_logic; SPIMISOEN: out Std_logic; 
          SPIMOSII: in Std_logic; SPIMOSIO: out Std_logic; 
          SPIMOSIEN: out Std_logic; SPIMCSN0: out Std_logic; 
          SPIMCSN1: out Std_logic; SPIMCSN2: out Std_logic; 
          SPIMCSN3: out Std_logic; SPIMCSN4: out Std_logic; 
          SPIMCSN5: out Std_logic; SPIMCSN6: out Std_logic; 
          SPIMCSN7: out Std_logic; SPICSNEN: out Std_logic; 
          SPISCSN: in Std_logic; SPIIRQO: out Std_logic; TCCLKI: in Std_logic; 
          TCRSTN: in Std_logic; TCIC: in Std_logic; TCINT: out Std_logic; 
          TCOC: out Std_logic; PLLCLKO: out Std_logic; PLLRSTO: out Std_logic; 
          PLL0STBO: out Std_logic; PLL1STBO: out Std_logic; 
          PLLWEO: out Std_logic; PLLADRO0: out Std_logic; 
          PLLADRO1: out Std_logic; PLLADRO2: out Std_logic; 
          PLLADRO3: out Std_logic; PLLADRO4: out Std_logic; 
          PLLDATO0: out Std_logic; PLLDATO1: out Std_logic; 
          PLLDATO2: out Std_logic; PLLDATO3: out Std_logic; 
          PLLDATO4: out Std_logic; PLLDATO5: out Std_logic; 
          PLLDATO6: out Std_logic; PLLDATO7: out Std_logic; 
          PLL0DATI0: in Std_logic; PLL0DATI1: in Std_logic; 
          PLL0DATI2: in Std_logic; PLL0DATI3: in Std_logic; 
          PLL0DATI4: in Std_logic; PLL0DATI5: in Std_logic; 
          PLL0DATI6: in Std_logic; PLL0DATI7: in Std_logic; 
          PLL0ACKI: in Std_logic; PLL1DATI0: in Std_logic; 
          PLL1DATI1: in Std_logic; PLL1DATI2: in Std_logic; 
          PLL1DATI3: in Std_logic; PLL1DATI4: in Std_logic; 
          PLL1DATI5: in Std_logic; PLL1DATI6: in Std_logic; 
          PLL1DATI7: in Std_logic; PLL1ACKI: in Std_logic);



  end EFBB;

  architecture Structure of EFBB is
    signal WBCLKI_buf: Std_logic;
    signal WBRSTI_buf: Std_logic;
    signal WBCYCI_buf: Std_logic;
    signal WBSTBI_buf: Std_logic;
    signal WBWEI_buf: Std_logic;
    signal WBADRI7_buf: Std_logic;
    signal WBADRI6_buf: Std_logic;
    signal WBADRI5_buf: Std_logic;
    signal WBADRI4_buf: Std_logic;
    signal WBADRI3_buf: Std_logic;
    signal WBADRI2_buf: Std_logic;
    signal WBADRI1_buf: Std_logic;
    signal WBADRI0_buf: Std_logic;
    signal WBDATI7_buf: Std_logic;
    signal WBDATI6_buf: Std_logic;
    signal WBDATI5_buf: Std_logic;
    signal WBDATI4_buf: Std_logic;
    signal WBDATI3_buf: Std_logic;
    signal WBDATI2_buf: Std_logic;
    signal WBDATI1_buf: Std_logic;
    signal WBDATI0_buf: Std_logic;
    signal PLL0DATI7_buf: Std_logic;
    signal PLL0DATI6_buf: Std_logic;
    signal PLL0DATI5_buf: Std_logic;
    signal PLL0DATI4_buf: Std_logic;
    signal PLL0DATI3_buf: Std_logic;
    signal PLL0DATI2_buf: Std_logic;
    signal PLL0DATI1_buf: Std_logic;
    signal PLL0DATI0_buf: Std_logic;
    signal PLL0ACKI_buf: Std_logic;
    signal PLL1DATI7_buf: Std_logic;
    signal PLL1DATI6_buf: Std_logic;
    signal PLL1DATI5_buf: Std_logic;
    signal PLL1DATI4_buf: Std_logic;
    signal PLL1DATI3_buf: Std_logic;
    signal PLL1DATI2_buf: Std_logic;
    signal PLL1DATI1_buf: Std_logic;
    signal PLL1DATI0_buf: Std_logic;
    signal PLL1ACKI_buf: Std_logic;
    signal I2C1SCLI_buf: Std_logic;
    signal I2C1SDAI_buf: Std_logic;
    signal I2C2SCLI_buf: Std_logic;
    signal I2C2SDAI_buf: Std_logic;
    signal SPISCKI_buf: Std_logic;
    signal SPIMISOI_buf: Std_logic;
    signal SPIMOSII_buf: Std_logic;
    signal SPISCSN_buf: Std_logic;
    signal TCCLKI_buf: Std_logic;
    signal TCRSTN_buf: Std_logic;
    signal TCIC_buf: Std_logic;
    signal UFMSN_buf: Std_logic;
    signal WBDATO7_buf: Std_logic;
    signal WBDATO6_buf: Std_logic;
    signal WBDATO5_buf: Std_logic;
    signal WBDATO4_buf: Std_logic;
    signal WBDATO3_buf: Std_logic;
    signal WBDATO2_buf: Std_logic;
    signal WBDATO1_buf: Std_logic;
    signal WBDATO0_buf: Std_logic;
    signal WBACKO_buf: Std_logic;
    signal PLLCLKO_buf: Std_logic;
    signal PLLRSTO_buf: Std_logic;
    signal PLL0STBO_buf: Std_logic;
    signal PLL1STBO_buf: Std_logic;
    signal PLLWEO_buf: Std_logic;
    signal PLLADRO4_buf: Std_logic;
    signal PLLADRO3_buf: Std_logic;
    signal PLLADRO2_buf: Std_logic;
    signal PLLADRO1_buf: Std_logic;
    signal PLLADRO0_buf: Std_logic;
    signal PLLDATO7_buf: Std_logic;
    signal PLLDATO6_buf: Std_logic;
    signal PLLDATO5_buf: Std_logic;
    signal PLLDATO4_buf: Std_logic;
    signal PLLDATO3_buf: Std_logic;
    signal PLLDATO2_buf: Std_logic;
    signal PLLDATO1_buf: Std_logic;
    signal PLLDATO0_buf: Std_logic;
    signal I2C1SCLO_buf: Std_logic;
    signal I2C1SCLOEN_buf: Std_logic;
    signal I2C1SDAO_buf: Std_logic;
    signal I2C1SDAOEN_buf: Std_logic;
    signal I2C2SCLO_buf: Std_logic;
    signal I2C2SCLOEN_buf: Std_logic;
    signal I2C2SDAO_buf: Std_logic;
    signal I2C2SDAOEN_buf: Std_logic;
    signal I2C1IRQO_buf: Std_logic;
    signal I2C2IRQO_buf: Std_logic;
    signal SPISCKO_buf: Std_logic;
    signal SPISCKEN_buf: Std_logic;
    signal SPIMISOO_buf: Std_logic;
    signal SPIMISOEN_buf: Std_logic;
    signal SPIMOSIO_buf: Std_logic;
    signal SPIMOSIEN_buf: Std_logic;
    signal SPIMCSN0_buf: Std_logic;
    signal SPIMCSN1_buf: Std_logic;
    signal SPIMCSN2_buf: Std_logic;
    signal SPIMCSN3_buf: Std_logic;
    signal SPIMCSN4_buf: Std_logic;
    signal SPIMCSN5_buf: Std_logic;
    signal SPIMCSN6_buf: Std_logic;
    signal SPIMCSN7_buf: Std_logic;
    signal SPICSNEN_buf: Std_logic;
    signal SPIIRQO_buf: Std_logic;
    signal TCINT_buf: Std_logic;
    signal TCOC_buf: Std_logic;
    signal WBCUFMIRQ_buf: Std_logic;
    signal CFGWAKE_buf: Std_logic;
    signal CFGSTDBY_buf: Std_logic;
    component EFB_Buffer_Block
      port (WBCLKIin: in Std_logic; WBCLKIout: out Std_logic; 
            WBRSTIin: in Std_logic; WBRSTIout: out Std_logic; 
            WBCYCIin: in Std_logic; WBCYCIout: out Std_logic; 
            WBSTBIin: in Std_logic; WBSTBIout: out Std_logic; 
            WBWEIin: in Std_logic; WBWEIout: out Std_logic; 
            WBADRI7in: in Std_logic; WBADRI7out: out Std_logic; 
            WBADRI6in: in Std_logic; WBADRI6out: out Std_logic; 
            WBADRI5in: in Std_logic; WBADRI5out: out Std_logic; 
            WBADRI4in: in Std_logic; WBADRI4out: out Std_logic; 
            WBADRI3in: in Std_logic; WBADRI3out: out Std_logic; 
            WBADRI2in: in Std_logic; WBADRI2out: out Std_logic; 
            WBADRI1in: in Std_logic; WBADRI1out: out Std_logic; 
            WBADRI0in: in Std_logic; WBADRI0out: out Std_logic; 
            WBDATI7in: in Std_logic; WBDATI7out: out Std_logic; 
            WBDATI6in: in Std_logic; WBDATI6out: out Std_logic; 
            WBDATI5in: in Std_logic; WBDATI5out: out Std_logic; 
            WBDATI4in: in Std_logic; WBDATI4out: out Std_logic; 
            WBDATI3in: in Std_logic; WBDATI3out: out Std_logic; 
            WBDATI2in: in Std_logic; WBDATI2out: out Std_logic; 
            WBDATI1in: in Std_logic; WBDATI1out: out Std_logic; 
            WBDATI0in: in Std_logic; WBDATI0out: out Std_logic; 
            PLL0DATI7in: in Std_logic; PLL0DATI7out: out Std_logic; 
            PLL0DATI6in: in Std_logic; PLL0DATI6out: out Std_logic; 
            PLL0DATI5in: in Std_logic; PLL0DATI5out: out Std_logic; 
            PLL0DATI4in: in Std_logic; PLL0DATI4out: out Std_logic; 
            PLL0DATI3in: in Std_logic; PLL0DATI3out: out Std_logic; 
            PLL0DATI2in: in Std_logic; PLL0DATI2out: out Std_logic; 
            PLL0DATI1in: in Std_logic; PLL0DATI1out: out Std_logic; 
            PLL0DATI0in: in Std_logic; PLL0DATI0out: out Std_logic; 
            PLL0ACKIin: in Std_logic; PLL0ACKIout: out Std_logic; 
            PLL1DATI7in: in Std_logic; PLL1DATI7out: out Std_logic; 
            PLL1DATI6in: in Std_logic; PLL1DATI6out: out Std_logic; 
            PLL1DATI5in: in Std_logic; PLL1DATI5out: out Std_logic; 
            PLL1DATI4in: in Std_logic; PLL1DATI4out: out Std_logic; 
            PLL1DATI3in: in Std_logic; PLL1DATI3out: out Std_logic; 
            PLL1DATI2in: in Std_logic; PLL1DATI2out: out Std_logic; 
            PLL1DATI1in: in Std_logic; PLL1DATI1out: out Std_logic; 
            PLL1DATI0in: in Std_logic; PLL1DATI0out: out Std_logic; 
            PLL1ACKIin: in Std_logic; PLL1ACKIout: out Std_logic; 
            I2C1SCLIin: in Std_logic; I2C1SCLIout: out Std_logic; 
            I2C1SDAIin: in Std_logic; I2C1SDAIout: out Std_logic; 
            I2C2SCLIin: in Std_logic; I2C2SCLIout: out Std_logic; 
            I2C2SDAIin: in Std_logic; I2C2SDAIout: out Std_logic; 
            SPISCKIin: in Std_logic; SPISCKIout: out Std_logic; 
            SPIMISOIin: in Std_logic; SPIMISOIout: out Std_logic; 
            SPIMOSIIin: in Std_logic; SPIMOSIIout: out Std_logic; 
            SPISCSNin: in Std_logic; SPISCSNout: out Std_logic; 
            TCCLKIin: in Std_logic; TCCLKIout: out Std_logic; 
            TCRSTNin: in Std_logic; TCRSTNout: out Std_logic; 
            TCICin: in Std_logic; TCICout: out Std_logic; 
            UFMSNin: in Std_logic; UFMSNout: out Std_logic; 
            WBDATO7out: out Std_logic; WBDATO7in: in Std_logic; 
            WBDATO6out: out Std_logic; WBDATO6in: in Std_logic; 
            WBDATO5out: out Std_logic; WBDATO5in: in Std_logic; 
            WBDATO4out: out Std_logic; WBDATO4in: in Std_logic; 
            WBDATO3out: out Std_logic; WBDATO3in: in Std_logic; 
            WBDATO2out: out Std_logic; WBDATO2in: in Std_logic; 
            WBDATO1out: out Std_logic; WBDATO1in: in Std_logic; 
            WBDATO0out: out Std_logic; WBDATO0in: in Std_logic; 
            WBACKOout: out Std_logic; WBACKOin: in Std_logic; 
            PLLCLKOout: out Std_logic; PLLCLKOin: in Std_logic; 
            PLLRSTOout: out Std_logic; PLLRSTOin: in Std_logic; 
            PLL0STBOout: out Std_logic; PLL0STBOin: in Std_logic; 
            PLL1STBOout: out Std_logic; PLL1STBOin: in Std_logic; 
            PLLWEOout: out Std_logic; PLLWEOin: in Std_logic; 
            PLLADRO4out: out Std_logic; PLLADRO4in: in Std_logic; 
            PLLADRO3out: out Std_logic; PLLADRO3in: in Std_logic; 
            PLLADRO2out: out Std_logic; PLLADRO2in: in Std_logic; 
            PLLADRO1out: out Std_logic; PLLADRO1in: in Std_logic; 
            PLLADRO0out: out Std_logic; PLLADRO0in: in Std_logic; 
            PLLDATO7out: out Std_logic; PLLDATO7in: in Std_logic; 
            PLLDATO6out: out Std_logic; PLLDATO6in: in Std_logic; 
            PLLDATO5out: out Std_logic; PLLDATO5in: in Std_logic; 
            PLLDATO4out: out Std_logic; PLLDATO4in: in Std_logic; 
            PLLDATO3out: out Std_logic; PLLDATO3in: in Std_logic; 
            PLLDATO2out: out Std_logic; PLLDATO2in: in Std_logic; 
            PLLDATO1out: out Std_logic; PLLDATO1in: in Std_logic; 
            PLLDATO0out: out Std_logic; PLLDATO0in: in Std_logic; 
            I2C1SCLOout: out Std_logic; I2C1SCLOin: in Std_logic; 
            I2C1SCLOENout: out Std_logic; I2C1SCLOENin: in Std_logic; 
            I2C1SDAOout: out Std_logic; I2C1SDAOin: in Std_logic; 
            I2C1SDAOENout: out Std_logic; I2C1SDAOENin: in Std_logic; 
            I2C2SCLOout: out Std_logic; I2C2SCLOin: in Std_logic; 
            I2C2SCLOENout: out Std_logic; I2C2SCLOENin: in Std_logic; 
            I2C2SDAOout: out Std_logic; I2C2SDAOin: in Std_logic; 
            I2C2SDAOENout: out Std_logic; I2C2SDAOENin: in Std_logic; 
            I2C1IRQOout: out Std_logic; I2C1IRQOin: in Std_logic; 
            I2C2IRQOout: out Std_logic; I2C2IRQOin: in Std_logic; 
            SPISCKOout: out Std_logic; SPISCKOin: in Std_logic; 
            SPISCKENout: out Std_logic; SPISCKENin: in Std_logic; 
            SPIMISOOout: out Std_logic; SPIMISOOin: in Std_logic; 
            SPIMISOENout: out Std_logic; SPIMISOENin: in Std_logic; 
            SPIMOSIOout: out Std_logic; SPIMOSIOin: in Std_logic; 
            SPIMOSIENout: out Std_logic; SPIMOSIENin: in Std_logic; 
            SPIMCSN0out: out Std_logic; SPIMCSN0in: in Std_logic; 
            SPIMCSN1out: out Std_logic; SPIMCSN1in: in Std_logic; 
            SPIMCSN2out: out Std_logic; SPIMCSN2in: in Std_logic; 
            SPIMCSN3out: out Std_logic; SPIMCSN3in: in Std_logic; 
            SPIMCSN4out: out Std_logic; SPIMCSN4in: in Std_logic; 
            SPIMCSN5out: out Std_logic; SPIMCSN5in: in Std_logic; 
            SPIMCSN6out: out Std_logic; SPIMCSN6in: in Std_logic; 
            SPIMCSN7out: out Std_logic; SPIMCSN7in: in Std_logic; 
            SPICSNENout: out Std_logic; SPICSNENin: in Std_logic; 
            SPIIRQOout: out Std_logic; SPIIRQOin: in Std_logic; 
            TCINTout: out Std_logic; TCINTin: in Std_logic; 
            TCOCout: out Std_logic; TCOCin: in Std_logic; 
            WBCUFMIRQout: out Std_logic; WBCUFMIRQin: in Std_logic; 
            CFGWAKEout: out Std_logic; CFGWAKEin: in Std_logic; 
            CFGSTDBYout: out Std_logic; CFGSTDBYin: in Std_logic);
    end component;
  begin
    INST10: EFB
      generic map (DEV_DENSITY => "1200L", EFB_I2C1 => "ENABLED", 
                   EFB_I2C2 => "DISABLED", EFB_SPI => "DISABLED", 
                   EFB_TC => "DISABLED", EFB_TC_PORTMODE => "WB", 
                   EFB_UFM => "DISABLED", EFB_WB_CLK_FREQ => "133.0", 
                   GSR => "DISABLED", I2C1_ADDRESSING => "7BIT", 
                   I2C1_BUS_PERF => "400kHz", I2C1_CLK_DIVIDER => 84, 
                   I2C1_GEN_CALL => "DISABLED", I2C1_SLAVE_ADDR => "0b1000001", 
                   I2C1_WAKEUP => "DISABLED", I2C2_ADDRESSING => "7BIT", 
                   I2C2_BUS_PERF => "100kHz", I2C2_CLK_DIVIDER => 1, 
                   I2C2_GEN_CALL => "DISABLED", I2C2_SLAVE_ADDR => "0b1000001", 
                   I2C2_WAKEUP => "DISABLED", SPI_CLK_DIVIDER => 3, 
                   SPI_CLK_INV => "DISABLED", SPI_INTR_RXOVR => "DISABLED", 
                   SPI_INTR_RXRDY => "DISABLED", SPI_INTR_TXOVR => "DISABLED", 
                   SPI_INTR_TXRDY => "DISABLED", SPI_LSB_FIRST => "DISABLED", 
                   SPI_MODE => "MASTER", SPI_PHASE_ADJ => "DISABLED", 
                   SPI_SLAVE_HANDSHAKE => "DISABLED", SPI_WAKEUP => "DISABLED", 
                   TC_CCLK_SEL => 1, TC_ICAPTURE => "DISABLED", 
                   TC_ICR_INT => "OFF", TC_MODE => "CTCM", TC_OCR_INT => "OFF", 
                   TC_OCR_SET => 32767, TC_OC_MODE => "TOGGLE", 
                   TC_OVERFLOW => "DISABLED", TC_OV_INT => "OFF", 
                   TC_RESETN => "DISABLED", TC_SCLK_SEL => "PCLOCK", 
                   TC_TOP_SEL => "OFF", TC_TOP_SET => 65535, 
                   UFM_INIT_ALL_ZEROS => "ENABLED", 
                   UFM_INIT_FILE_FORMAT => "HEX", UFM_INIT_FILE_NAME => "NONE", 
                   UFM_INIT_PAGES => 0, UFM_INIT_START_PAGE => 0)
      port map (WBCLKI=>WBCLKI_buf, WBRSTI=>WBRSTI_buf, WBCYCI=>WBCYCI_buf, 
                WBSTBI=>WBSTBI_buf, WBWEI=>WBWEI_buf, WBADRI7=>WBADRI7_buf, 
                WBADRI6=>WBADRI6_buf, WBADRI5=>WBADRI5_buf, 
                WBADRI4=>WBADRI4_buf, WBADRI3=>WBADRI3_buf, 
                WBADRI2=>WBADRI2_buf, WBADRI1=>WBADRI1_buf, 
                WBADRI0=>WBADRI0_buf, WBDATI7=>WBDATI7_buf, 
                WBDATI6=>WBDATI6_buf, WBDATI5=>WBDATI5_buf, 
                WBDATI4=>WBDATI4_buf, WBDATI3=>WBDATI3_buf, 
                WBDATI2=>WBDATI2_buf, WBDATI1=>WBDATI1_buf, 
                WBDATI0=>WBDATI0_buf, PLL0DATI7=>PLL0DATI7_buf, 
                PLL0DATI6=>PLL0DATI6_buf, PLL0DATI5=>PLL0DATI5_buf, 
                PLL0DATI4=>PLL0DATI4_buf, PLL0DATI3=>PLL0DATI3_buf, 
                PLL0DATI2=>PLL0DATI2_buf, PLL0DATI1=>PLL0DATI1_buf, 
                PLL0DATI0=>PLL0DATI0_buf, PLL0ACKI=>PLL0ACKI_buf, 
                PLL1DATI7=>PLL1DATI7_buf, PLL1DATI6=>PLL1DATI6_buf, 
                PLL1DATI5=>PLL1DATI5_buf, PLL1DATI4=>PLL1DATI4_buf, 
                PLL1DATI3=>PLL1DATI3_buf, PLL1DATI2=>PLL1DATI2_buf, 
                PLL1DATI1=>PLL1DATI1_buf, PLL1DATI0=>PLL1DATI0_buf, 
                PLL1ACKI=>PLL1ACKI_buf, I2C1SCLI=>I2C1SCLI_buf, 
                I2C1SDAI=>I2C1SDAI_buf, I2C2SCLI=>I2C2SCLI_buf, 
                I2C2SDAI=>I2C2SDAI_buf, SPISCKI=>SPISCKI_buf, 
                SPIMISOI=>SPIMISOI_buf, SPIMOSII=>SPIMOSII_buf, 
                SPISCSN=>SPISCSN_buf, TCCLKI=>TCCLKI_buf, TCRSTN=>TCRSTN_buf, 
                TCIC=>TCIC_buf, UFMSN=>UFMSN_buf, WBDATO7=>WBDATO7_buf, 
                WBDATO6=>WBDATO6_buf, WBDATO5=>WBDATO5_buf, 
                WBDATO4=>WBDATO4_buf, WBDATO3=>WBDATO3_buf, 
                WBDATO2=>WBDATO2_buf, WBDATO1=>WBDATO1_buf, 
                WBDATO0=>WBDATO0_buf, WBACKO=>WBACKO_buf, PLLCLKO=>PLLCLKO_buf, 
                PLLRSTO=>PLLRSTO_buf, PLL0STBO=>PLL0STBO_buf, 
                PLL1STBO=>PLL1STBO_buf, PLLWEO=>PLLWEO_buf, 
                PLLADRO4=>PLLADRO4_buf, PLLADRO3=>PLLADRO3_buf, 
                PLLADRO2=>PLLADRO2_buf, PLLADRO1=>PLLADRO1_buf, 
                PLLADRO0=>PLLADRO0_buf, PLLDATO7=>PLLDATO7_buf, 
                PLLDATO6=>PLLDATO6_buf, PLLDATO5=>PLLDATO5_buf, 
                PLLDATO4=>PLLDATO4_buf, PLLDATO3=>PLLDATO3_buf, 
                PLLDATO2=>PLLDATO2_buf, PLLDATO1=>PLLDATO1_buf, 
                PLLDATO0=>PLLDATO0_buf, I2C1SCLO=>I2C1SCLO_buf, 
                I2C1SCLOEN=>I2C1SCLOEN_buf, I2C1SDAO=>I2C1SDAO_buf, 
                I2C1SDAOEN=>I2C1SDAOEN_buf, I2C2SCLO=>I2C2SCLO_buf, 
                I2C2SCLOEN=>I2C2SCLOEN_buf, I2C2SDAO=>I2C2SDAO_buf, 
                I2C2SDAOEN=>I2C2SDAOEN_buf, I2C1IRQO=>I2C1IRQO_buf, 
                I2C2IRQO=>I2C2IRQO_buf, SPISCKO=>SPISCKO_buf, 
                SPISCKEN=>SPISCKEN_buf, SPIMISOO=>SPIMISOO_buf, 
                SPIMISOEN=>SPIMISOEN_buf, SPIMOSIO=>SPIMOSIO_buf, 
                SPIMOSIEN=>SPIMOSIEN_buf, SPIMCSN0=>SPIMCSN0_buf, 
                SPIMCSN1=>SPIMCSN1_buf, SPIMCSN2=>SPIMCSN2_buf, 
                SPIMCSN3=>SPIMCSN3_buf, SPIMCSN4=>SPIMCSN4_buf, 
                SPIMCSN5=>SPIMCSN5_buf, SPIMCSN6=>SPIMCSN6_buf, 
                SPIMCSN7=>SPIMCSN7_buf, SPICSNEN=>SPICSNEN_buf, 
                SPIIRQO=>SPIIRQO_buf, TCINT=>TCINT_buf, TCOC=>TCOC_buf, 
                WBCUFMIRQ=>WBCUFMIRQ_buf, CFGWAKE=>CFGWAKE_buf, 
                CFGSTDBY=>CFGSTDBY_buf);
    INST20: EFB_Buffer_Block
      port map (WBCLKIin=>WBCLKI, WBCLKIout=>WBCLKI_buf, WBRSTIin=>WBRSTI, 
                WBRSTIout=>WBRSTI_buf, WBCYCIin=>WBCYCI, WBCYCIout=>WBCYCI_buf, 
                WBSTBIin=>WBSTBI, WBSTBIout=>WBSTBI_buf, WBWEIin=>WBWEI, 
                WBWEIout=>WBWEI_buf, WBADRI7in=>WBADRI7, 
                WBADRI7out=>WBADRI7_buf, WBADRI6in=>WBADRI6, 
                WBADRI6out=>WBADRI6_buf, WBADRI5in=>WBADRI5, 
                WBADRI5out=>WBADRI5_buf, WBADRI4in=>WBADRI4, 
                WBADRI4out=>WBADRI4_buf, WBADRI3in=>WBADRI3, 
                WBADRI3out=>WBADRI3_buf, WBADRI2in=>WBADRI2, 
                WBADRI2out=>WBADRI2_buf, WBADRI1in=>WBADRI1, 
                WBADRI1out=>WBADRI1_buf, WBADRI0in=>WBADRI0, 
                WBADRI0out=>WBADRI0_buf, WBDATI7in=>WBDATI7, 
                WBDATI7out=>WBDATI7_buf, WBDATI6in=>WBDATI6, 
                WBDATI6out=>WBDATI6_buf, WBDATI5in=>WBDATI5, 
                WBDATI5out=>WBDATI5_buf, WBDATI4in=>WBDATI4, 
                WBDATI4out=>WBDATI4_buf, WBDATI3in=>WBDATI3, 
                WBDATI3out=>WBDATI3_buf, WBDATI2in=>WBDATI2, 
                WBDATI2out=>WBDATI2_buf, WBDATI1in=>WBDATI1, 
                WBDATI1out=>WBDATI1_buf, WBDATI0in=>WBDATI0, 
                WBDATI0out=>WBDATI0_buf, PLL0DATI7in=>PLL0DATI7, 
                PLL0DATI7out=>PLL0DATI7_buf, PLL0DATI6in=>PLL0DATI6, 
                PLL0DATI6out=>PLL0DATI6_buf, PLL0DATI5in=>PLL0DATI5, 
                PLL0DATI5out=>PLL0DATI5_buf, PLL0DATI4in=>PLL0DATI4, 
                PLL0DATI4out=>PLL0DATI4_buf, PLL0DATI3in=>PLL0DATI3, 
                PLL0DATI3out=>PLL0DATI3_buf, PLL0DATI2in=>PLL0DATI2, 
                PLL0DATI2out=>PLL0DATI2_buf, PLL0DATI1in=>PLL0DATI1, 
                PLL0DATI1out=>PLL0DATI1_buf, PLL0DATI0in=>PLL0DATI0, 
                PLL0DATI0out=>PLL0DATI0_buf, PLL0ACKIin=>PLL0ACKI, 
                PLL0ACKIout=>PLL0ACKI_buf, PLL1DATI7in=>PLL1DATI7, 
                PLL1DATI7out=>PLL1DATI7_buf, PLL1DATI6in=>PLL1DATI6, 
                PLL1DATI6out=>PLL1DATI6_buf, PLL1DATI5in=>PLL1DATI5, 
                PLL1DATI5out=>PLL1DATI5_buf, PLL1DATI4in=>PLL1DATI4, 
                PLL1DATI4out=>PLL1DATI4_buf, PLL1DATI3in=>PLL1DATI3, 
                PLL1DATI3out=>PLL1DATI3_buf, PLL1DATI2in=>PLL1DATI2, 
                PLL1DATI2out=>PLL1DATI2_buf, PLL1DATI1in=>PLL1DATI1, 
                PLL1DATI1out=>PLL1DATI1_buf, PLL1DATI0in=>PLL1DATI0, 
                PLL1DATI0out=>PLL1DATI0_buf, PLL1ACKIin=>PLL1ACKI, 
                PLL1ACKIout=>PLL1ACKI_buf, I2C1SCLIin=>I2C1SCLI, 
                I2C1SCLIout=>I2C1SCLI_buf, I2C1SDAIin=>I2C1SDAI, 
                I2C1SDAIout=>I2C1SDAI_buf, I2C2SCLIin=>I2C2SCLI, 
                I2C2SCLIout=>I2C2SCLI_buf, I2C2SDAIin=>I2C2SDAI, 
                I2C2SDAIout=>I2C2SDAI_buf, SPISCKIin=>SPISCKI, 
                SPISCKIout=>SPISCKI_buf, SPIMISOIin=>SPIMISOI, 
                SPIMISOIout=>SPIMISOI_buf, SPIMOSIIin=>SPIMOSII, 
                SPIMOSIIout=>SPIMOSII_buf, SPISCSNin=>SPISCSN, 
                SPISCSNout=>SPISCSN_buf, TCCLKIin=>TCCLKI, 
                TCCLKIout=>TCCLKI_buf, TCRSTNin=>TCRSTN, TCRSTNout=>TCRSTN_buf, 
                TCICin=>TCIC, TCICout=>TCIC_buf, UFMSNin=>UFMSN, 
                UFMSNout=>UFMSN_buf, WBDATO7out=>WBDATO7, 
                WBDATO7in=>WBDATO7_buf, WBDATO6out=>WBDATO6, 
                WBDATO6in=>WBDATO6_buf, WBDATO5out=>WBDATO5, 
                WBDATO5in=>WBDATO5_buf, WBDATO4out=>WBDATO4, 
                WBDATO4in=>WBDATO4_buf, WBDATO3out=>WBDATO3, 
                WBDATO3in=>WBDATO3_buf, WBDATO2out=>WBDATO2, 
                WBDATO2in=>WBDATO2_buf, WBDATO1out=>WBDATO1, 
                WBDATO1in=>WBDATO1_buf, WBDATO0out=>WBDATO0, 
                WBDATO0in=>WBDATO0_buf, WBACKOout=>WBACKO, 
                WBACKOin=>WBACKO_buf, PLLCLKOout=>PLLCLKO, 
                PLLCLKOin=>PLLCLKO_buf, PLLRSTOout=>PLLRSTO, 
                PLLRSTOin=>PLLRSTO_buf, PLL0STBOout=>PLL0STBO, 
                PLL0STBOin=>PLL0STBO_buf, PLL1STBOout=>PLL1STBO, 
                PLL1STBOin=>PLL1STBO_buf, PLLWEOout=>PLLWEO, 
                PLLWEOin=>PLLWEO_buf, PLLADRO4out=>PLLADRO4, 
                PLLADRO4in=>PLLADRO4_buf, PLLADRO3out=>PLLADRO3, 
                PLLADRO3in=>PLLADRO3_buf, PLLADRO2out=>PLLADRO2, 
                PLLADRO2in=>PLLADRO2_buf, PLLADRO1out=>PLLADRO1, 
                PLLADRO1in=>PLLADRO1_buf, PLLADRO0out=>PLLADRO0, 
                PLLADRO0in=>PLLADRO0_buf, PLLDATO7out=>PLLDATO7, 
                PLLDATO7in=>PLLDATO7_buf, PLLDATO6out=>PLLDATO6, 
                PLLDATO6in=>PLLDATO6_buf, PLLDATO5out=>PLLDATO5, 
                PLLDATO5in=>PLLDATO5_buf, PLLDATO4out=>PLLDATO4, 
                PLLDATO4in=>PLLDATO4_buf, PLLDATO3out=>PLLDATO3, 
                PLLDATO3in=>PLLDATO3_buf, PLLDATO2out=>PLLDATO2, 
                PLLDATO2in=>PLLDATO2_buf, PLLDATO1out=>PLLDATO1, 
                PLLDATO1in=>PLLDATO1_buf, PLLDATO0out=>PLLDATO0, 
                PLLDATO0in=>PLLDATO0_buf, I2C1SCLOout=>I2C1SCLO, 
                I2C1SCLOin=>I2C1SCLO_buf, I2C1SCLOENout=>I2C1SCLOEN, 
                I2C1SCLOENin=>I2C1SCLOEN_buf, I2C1SDAOout=>I2C1SDAO, 
                I2C1SDAOin=>I2C1SDAO_buf, I2C1SDAOENout=>I2C1SDAOEN, 
                I2C1SDAOENin=>I2C1SDAOEN_buf, I2C2SCLOout=>I2C2SCLO, 
                I2C2SCLOin=>I2C2SCLO_buf, I2C2SCLOENout=>I2C2SCLOEN, 
                I2C2SCLOENin=>I2C2SCLOEN_buf, I2C2SDAOout=>I2C2SDAO, 
                I2C2SDAOin=>I2C2SDAO_buf, I2C2SDAOENout=>I2C2SDAOEN, 
                I2C2SDAOENin=>I2C2SDAOEN_buf, I2C1IRQOout=>I2C1IRQO, 
                I2C1IRQOin=>I2C1IRQO_buf, I2C2IRQOout=>I2C2IRQO, 
                I2C2IRQOin=>I2C2IRQO_buf, SPISCKOout=>SPISCKO, 
                SPISCKOin=>SPISCKO_buf, SPISCKENout=>SPISCKEN, 
                SPISCKENin=>SPISCKEN_buf, SPIMISOOout=>SPIMISOO, 
                SPIMISOOin=>SPIMISOO_buf, SPIMISOENout=>SPIMISOEN, 
                SPIMISOENin=>SPIMISOEN_buf, SPIMOSIOout=>SPIMOSIO, 
                SPIMOSIOin=>SPIMOSIO_buf, SPIMOSIENout=>SPIMOSIEN, 
                SPIMOSIENin=>SPIMOSIEN_buf, SPIMCSN0out=>SPIMCSN0, 
                SPIMCSN0in=>SPIMCSN0_buf, SPIMCSN1out=>SPIMCSN1, 
                SPIMCSN1in=>SPIMCSN1_buf, SPIMCSN2out=>SPIMCSN2, 
                SPIMCSN2in=>SPIMCSN2_buf, SPIMCSN3out=>SPIMCSN3, 
                SPIMCSN3in=>SPIMCSN3_buf, SPIMCSN4out=>SPIMCSN4, 
                SPIMCSN4in=>SPIMCSN4_buf, SPIMCSN5out=>SPIMCSN5, 
                SPIMCSN5in=>SPIMCSN5_buf, SPIMCSN6out=>SPIMCSN6, 
                SPIMCSN6in=>SPIMCSN6_buf, SPIMCSN7out=>SPIMCSN7, 
                SPIMCSN7in=>SPIMCSN7_buf, SPICSNENout=>SPICSNEN, 
                SPICSNENin=>SPICSNEN_buf, SPIIRQOout=>SPIIRQO, 
                SPIIRQOin=>SPIIRQO_buf, TCINTout=>TCINT, TCINTin=>TCINT_buf, 
                TCOCout=>TCOC, TCOCin=>TCOC_buf, WBCUFMIRQout=>WBCUFMIRQ, 
                WBCUFMIRQin=>WBCUFMIRQ_buf, CFGWAKEout=>CFGWAKE, 
                CFGWAKEin=>CFGWAKE_buf, CFGSTDBYout=>CFGSTDBY, 
                CFGSTDBYin=>CFGSTDBY_buf);
  end Structure;

-- entity inverter
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity inverter is
    port (I: in Std_logic; Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF inverter : ENTITY IS TRUE;

  end inverter;

  architecture Structure of inverter is
  begin
    INST1: INV
      port map (A=>I, Z=>Z);
  end Structure;

-- entity wb_manager0_efb_i2c_Inst0_EFBInst_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity wb_manager0_efb_i2c_Inst0_EFBInst_0 is
    port (WBCLKI: in Std_logic; WBRSTI: in Std_logic; WBCYCI: in Std_logic; 
          WBSTBI: in Std_logic; WBWEI: in Std_logic; WBADRI0: in Std_logic; 
          WBADRI2: in Std_logic; WBADRI6: in Std_logic; WBDATI1: in Std_logic; 
          WBDATI2: in Std_logic; WBDATI3: in Std_logic; WBDATI4: in Std_logic; 
          WBDATI6: in Std_logic; WBDATI7: in Std_logic; WBACKO: out Std_logic; 
          I2C1SDAOEN: out Std_logic; I2C1SDAO: out Std_logic; 
          I2C1SDAI: in Std_logic; I2C1SCLOEN: out Std_logic; 
          I2C1SCLO: out Std_logic; I2C1SCLI: in Std_logic);



  end wb_manager0_efb_i2c_Inst0_EFBInst_0;

  architecture Structure of wb_manager0_efb_i2c_Inst0_EFBInst_0 is
    signal WBRSTI_NOTIN: Std_logic;
    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component EFBB
      port (WBCLKI: in Std_logic; WBRSTI: in Std_logic; WBCYCI: in Std_logic; 
            WBSTBI: in Std_logic; WBWEI: in Std_logic; WBADRI0: in Std_logic; 
            WBADRI1: in Std_logic; WBADRI2: in Std_logic; 
            WBADRI3: in Std_logic; WBADRI4: in Std_logic; 
            WBADRI5: in Std_logic; WBADRI6: in Std_logic; 
            WBADRI7: in Std_logic; WBDATI0: in Std_logic; 
            WBDATI1: in Std_logic; WBDATI2: in Std_logic; 
            WBDATI3: in Std_logic; WBDATI4: in Std_logic; 
            WBDATI5: in Std_logic; WBDATI6: in Std_logic; 
            WBDATI7: in Std_logic; WBDATO0: out Std_logic; 
            WBDATO1: out Std_logic; WBDATO2: out Std_logic; 
            WBDATO3: out Std_logic; WBDATO4: out Std_logic; 
            WBDATO5: out Std_logic; WBDATO6: out Std_logic; 
            WBDATO7: out Std_logic; WBACKO: out Std_logic; 
            WBCUFMIRQ: out Std_logic; UFMSN: in Std_logic; 
            CFGWAKE: out Std_logic; CFGSTDBY: out Std_logic; 
            I2C1SCLI: in Std_logic; I2C1SCLO: out Std_logic; 
            I2C1SCLOEN: out Std_logic; I2C1SDAI: in Std_logic; 
            I2C1SDAO: out Std_logic; I2C1SDAOEN: out Std_logic; 
            I2C2SCLI: in Std_logic; I2C2SCLO: out Std_logic; 
            I2C2SCLOEN: out Std_logic; I2C2SDAI: in Std_logic; 
            I2C2SDAO: out Std_logic; I2C2SDAOEN: out Std_logic; 
            I2C1IRQO: out Std_logic; I2C2IRQO: out Std_logic; 
            SPISCKI: in Std_logic; SPISCKO: out Std_logic; 
            SPISCKEN: out Std_logic; SPIMISOI: in Std_logic; 
            SPIMISOO: out Std_logic; SPIMISOEN: out Std_logic; 
            SPIMOSII: in Std_logic; SPIMOSIO: out Std_logic; 
            SPIMOSIEN: out Std_logic; SPIMCSN0: out Std_logic; 
            SPIMCSN1: out Std_logic; SPIMCSN2: out Std_logic; 
            SPIMCSN3: out Std_logic; SPIMCSN4: out Std_logic; 
            SPIMCSN5: out Std_logic; SPIMCSN6: out Std_logic; 
            SPIMCSN7: out Std_logic; SPICSNEN: out Std_logic; 
            SPISCSN: in Std_logic; SPIIRQO: out Std_logic; 
            TCCLKI: in Std_logic; TCRSTN: in Std_logic; TCIC: in Std_logic; 
            TCINT: out Std_logic; TCOC: out Std_logic; PLLCLKO: out Std_logic; 
            PLLRSTO: out Std_logic; PLL0STBO: out Std_logic; 
            PLL1STBO: out Std_logic; PLLWEO: out Std_logic; 
            PLLADRO0: out Std_logic; PLLADRO1: out Std_logic; 
            PLLADRO2: out Std_logic; PLLADRO3: out Std_logic; 
            PLLADRO4: out Std_logic; PLLDATO0: out Std_logic; 
            PLLDATO1: out Std_logic; PLLDATO2: out Std_logic; 
            PLLDATO3: out Std_logic; PLLDATO4: out Std_logic; 
            PLLDATO5: out Std_logic; PLLDATO6: out Std_logic; 
            PLLDATO7: out Std_logic; PLL0DATI0: in Std_logic; 
            PLL0DATI1: in Std_logic; PLL0DATI2: in Std_logic; 
            PLL0DATI3: in Std_logic; PLL0DATI4: in Std_logic; 
            PLL0DATI5: in Std_logic; PLL0DATI6: in Std_logic; 
            PLL0DATI7: in Std_logic; PLL0ACKI: in Std_logic; 
            PLL1DATI0: in Std_logic; PLL1DATI1: in Std_logic; 
            PLL1DATI2: in Std_logic; PLL1DATI3: in Std_logic; 
            PLL1DATI4: in Std_logic; PLL1DATI5: in Std_logic; 
            PLL1DATI6: in Std_logic; PLL1DATI7: in Std_logic; 
            PLL1ACKI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    wb_manager0_efb_i2c_Inst0_EFBInst_0_EFB: EFBB
      port map (WBCLKI=>WBCLKI, WBRSTI=>WBRSTI_NOTIN, WBCYCI=>WBCYCI, 
                WBSTBI=>WBSTBI, WBWEI=>WBWEI, WBADRI0=>WBADRI0, WBADRI1=>GNDI, 
                WBADRI2=>WBADRI2, WBADRI3=>GNDI, WBADRI4=>GNDI, WBADRI5=>GNDI, 
                WBADRI6=>WBADRI6, WBADRI7=>GNDI, WBDATI0=>GNDI, 
                WBDATI1=>WBDATI1, WBDATI2=>WBDATI2, WBDATI3=>WBDATI3, 
                WBDATI4=>WBDATI4, WBDATI5=>GNDI, WBDATI6=>WBDATI6, 
                WBDATI7=>WBDATI7, WBDATO0=>open, WBDATO1=>open, WBDATO2=>open, 
                WBDATO3=>open, WBDATO4=>open, WBDATO5=>open, WBDATO6=>open, 
                WBDATO7=>open, WBACKO=>WBACKO, WBCUFMIRQ=>open, UFMSN=>VCCI, 
                CFGWAKE=>open, CFGSTDBY=>open, I2C1SCLI=>I2C1SCLI, 
                I2C1SCLO=>I2C1SCLO, I2C1SCLOEN=>I2C1SCLOEN, I2C1SDAI=>I2C1SDAI, 
                I2C1SDAO=>I2C1SDAO, I2C1SDAOEN=>I2C1SDAOEN, I2C2SCLI=>GNDI, 
                I2C2SCLO=>open, I2C2SCLOEN=>open, I2C2SDAI=>GNDI, 
                I2C2SDAO=>open, I2C2SDAOEN=>open, I2C1IRQO=>open, 
                I2C2IRQO=>open, SPISCKI=>GNDI, SPISCKO=>open, SPISCKEN=>open, 
                SPIMISOI=>GNDI, SPIMISOO=>open, SPIMISOEN=>open, 
                SPIMOSII=>GNDI, SPIMOSIO=>open, SPIMOSIEN=>open, 
                SPIMCSN0=>open, SPIMCSN1=>open, SPIMCSN2=>open, SPIMCSN3=>open, 
                SPIMCSN4=>open, SPIMCSN5=>open, SPIMCSN6=>open, SPIMCSN7=>open, 
                SPICSNEN=>open, SPISCSN=>GNDI, SPIIRQO=>open, TCCLKI=>GNDI, 
                TCRSTN=>GNDI, TCIC=>GNDI, TCINT=>open, TCOC=>open, 
                PLLCLKO=>open, PLLRSTO=>open, PLL0STBO=>open, PLL1STBO=>open, 
                PLLWEO=>open, PLLADRO0=>open, PLLADRO1=>open, PLLADRO2=>open, 
                PLLADRO3=>open, PLLADRO4=>open, PLLDATO0=>open, PLLDATO1=>open, 
                PLLDATO2=>open, PLLDATO3=>open, PLLDATO4=>open, PLLDATO5=>open, 
                PLLDATO6=>open, PLLDATO7=>open, PLL0DATI0=>GNDI, 
                PLL0DATI1=>GNDI, PLL0DATI2=>GNDI, PLL0DATI3=>GNDI, 
                PLL0DATI4=>GNDI, PLL0DATI5=>GNDI, PLL0DATI6=>GNDI, 
                PLL0DATI7=>GNDI, PLL0ACKI=>GNDI, PLL1DATI0=>GNDI, 
                PLL1DATI1=>GNDI, PLL1DATI2=>GNDI, PLL1DATI3=>GNDI, 
                PLL1DATI4=>GNDI, PLL1DATI5=>GNDI, PLL1DATI6=>GNDI, 
                PLL1DATI7=>GNDI, PLL1ACKI=>GNDI);
    WBRSTI_INVERTERIN: inverter
      port map (I=>WBRSTI, Z=>WBRSTI_NOTIN);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: BUFBA
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity top_module
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity top_module is
    port (rst_n: in Std_logic; scl: inout Std_logic; sda: inout Std_logic; 
          usb_osc: in Std_logic; enI2C: out Std_logic; 
          heart_beat: out Std_logic);



  end top_module;

  architecture Structure of top_module is
    signal HeartBeatInst0_iCounter_0: Std_logic;
    signal HeartBeatInst0_iCounter_s_0: Std_logic;
    signal wb_manager0_nState_3: Std_logic;
    signal sys_clk_0: Std_logic;
    signal wb_manager0_cState_3: Std_logic;
    signal HeartBeatInst0_iCounter_cry_0: Std_logic;
    signal heart_beat_c: Std_logic;
    signal HeartBeatInst0_iCounter_19: Std_logic;
    signal HeartBeatInst0_iCounter_s_20: Std_logic;
    signal HeartBeatInst0_iCounter_s_19: Std_logic;
    signal HeartBeatInst0_iCounter_cry_18: Std_logic;
    signal HeartBeatInst0_iCounter_18: Std_logic;
    signal HeartBeatInst0_iCounter_17: Std_logic;
    signal HeartBeatInst0_iCounter_s_18: Std_logic;
    signal HeartBeatInst0_iCounter_s_17: Std_logic;
    signal HeartBeatInst0_iCounter_cry_16: Std_logic;
    signal HeartBeatInst0_iCounter_16: Std_logic;
    signal HeartBeatInst0_iCounter_15: Std_logic;
    signal HeartBeatInst0_iCounter_s_16: Std_logic;
    signal HeartBeatInst0_iCounter_s_15: Std_logic;
    signal HeartBeatInst0_iCounter_cry_14: Std_logic;
    signal HeartBeatInst0_iCounter_14: Std_logic;
    signal HeartBeatInst0_iCounter_13: Std_logic;
    signal HeartBeatInst0_iCounter_s_14: Std_logic;
    signal HeartBeatInst0_iCounter_s_13: Std_logic;
    signal HeartBeatInst0_iCounter_cry_12: Std_logic;
    signal HeartBeatInst0_iCounter_12: Std_logic;
    signal HeartBeatInst0_iCounter_11: Std_logic;
    signal HeartBeatInst0_iCounter_s_12: Std_logic;
    signal HeartBeatInst0_iCounter_s_11: Std_logic;
    signal HeartBeatInst0_iCounter_cry_10: Std_logic;
    signal HeartBeatInst0_iCounter_10: Std_logic;
    signal HeartBeatInst0_iCounter_9: Std_logic;
    signal HeartBeatInst0_iCounter_s_10: Std_logic;
    signal HeartBeatInst0_iCounter_s_9: Std_logic;
    signal HeartBeatInst0_iCounter_cry_8: Std_logic;
    signal HeartBeatInst0_iCounter_8: Std_logic;
    signal HeartBeatInst0_iCounter_7: Std_logic;
    signal HeartBeatInst0_iCounter_s_8: Std_logic;
    signal HeartBeatInst0_iCounter_s_7: Std_logic;
    signal HeartBeatInst0_iCounter_cry_6: Std_logic;
    signal HeartBeatInst0_iCounter_6: Std_logic;
    signal HeartBeatInst0_iCounter_5: Std_logic;
    signal HeartBeatInst0_iCounter_s_6: Std_logic;
    signal HeartBeatInst0_iCounter_s_5: Std_logic;
    signal HeartBeatInst0_iCounter_cry_4: Std_logic;
    signal HeartBeatInst0_iCounter_4: Std_logic;
    signal HeartBeatInst0_iCounter_3: Std_logic;
    signal HeartBeatInst0_iCounter_s_4: Std_logic;
    signal HeartBeatInst0_iCounter_s_3: Std_logic;
    signal HeartBeatInst0_iCounter_cry_2: Std_logic;
    signal HeartBeatInst0_iCounter_2: Std_logic;
    signal HeartBeatInst0_iCounter_1: Std_logic;
    signal HeartBeatInst0_iCounter_s_2: Std_logic;
    signal HeartBeatInst0_iCounter_s_1: Std_logic;
    signal main_un6_0: Std_logic;
    signal main_un6_i_0: Std_logic;
    signal status_reg_1_RNI75G51_5: Std_logic;
    signal addr_i_0: Std_logic;
    signal addr_i_2: Std_logic;
    signal wb_manager0_cState_1: Std_logic;
    signal rst_n_c: Std_logic;
    signal wb_manager0_status_reg_1_i_5: Std_logic;
    signal addr_i_6: Std_logic;
    signal N_52_0: Std_logic;
    signal main_un6_1: Std_logic;
    signal main_un6_2: Std_logic;
    signal data_io_0_6: Std_logic;
    signal data_io_1_4: Std_logic;
    signal data_io_4: Std_logic;
    signal data_io_6: Std_logic;
    signal main_un3_i: Std_logic;
    signal wb_manager0_cState_4: Std_logic;
    signal wb_manager0_nState_1_sqmuxa_2_i: Std_logic;
    signal wb_manager0_nState_2: Std_logic;
    signal wb_manager0_cState_5: Std_logic;
    signal wb_manager0_cState_2: Std_logic;
    signal wb_manager0_wb_adr_i_6: Std_logic;
    signal wb_manager0_nState_5: Std_logic;
    signal VCCS: Std_logic;
    signal wb_manager0_nState_1: Std_logic;
    signal wb_manager0_wb_dat_i_6: Std_logic;
    signal wb_manager0_wb_adr_i_0: Std_logic;
    signal wb_manager0_wb_dat_i_4: Std_logic;
    signal wb_manager0_wb_adr_i_2: Std_logic;
    signal wb_manager0_wb_ack_o: Std_logic;
    signal wb_manager0_N_51_i: Std_logic;
    signal wb_manager0_nState_4: Std_logic;
    signal wb_manager0_efb_i2c_Inst0_i2c1_scli: Std_logic;
    signal wb_manager0_efb_i2c_Inst0_i2c1_scloen: Std_logic;
    signal wb_manager0_efb_i2c_Inst0_i2c1_sclo: Std_logic;
    signal wb_manager0_efb_i2c_Inst0_i2c1_sdai: Std_logic;
    signal wb_manager0_efb_i2c_Inst0_i2c1_sdaoen: Std_logic;
    signal wb_manager0_efb_i2c_Inst0_i2c1_sdao: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (A1: in Std_logic; DI1: in Std_logic; M0: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_1
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_2
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_3
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_4
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_5
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_6
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_7
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_8
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_9
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component HeartBeatInst0_SLICE_10
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component SLICE_11
      port (D0: in Std_logic; DI0: in Std_logic; M1: in Std_logic; 
            CE: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_12
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_13
      port (C1: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
            A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
            CE: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_15
      port (B0: in Std_logic; A0: in Std_logic; DI0: in Std_logic; 
            M1: in Std_logic; CE: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component wb_manager0_SLICE_21
      port (M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
            Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_22
      port (D0: in Std_logic; C0: in Std_logic; A0: in Std_logic; 
            M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component wb_manager0_SLICE_23
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; A0: in Std_logic; 
            M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component wb_manager0_SLICE_24
      port (D1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            M0: in Std_logic; CE: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_25
      port (D1: in Std_logic; C1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component wb_manager0_SLICE_28
      port (M1: in Std_logic; M0: in Std_logic; CLK: in Std_logic; 
            Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component wb_manager0_SLICE_30
      port (M0: in Std_logic; CLK: in Std_logic; Q0: out Std_logic);
    end component;
    component enI2CB
      port (PADDO: in Std_logic; enI2CS: out Std_logic);
    end component;
    component rst_nB
      port (PADDI: out Std_logic; rstn: in Std_logic);
    end component;
    component sclB
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            sclS: inout Std_logic);
    end component;
    component sdaB
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            sdaS: inout Std_logic);
    end component;
    component heart_beatB
      port (PADDO: in Std_logic; heartbeat: out Std_logic);
    end component;
    component OSCInst0
      port (OSC: out Std_logic);
    end component;
    component wb_manager0_efb_i2c_Inst0_EFBInst_0
      port (WBCLKI: in Std_logic; WBRSTI: in Std_logic; WBCYCI: in Std_logic; 
            WBSTBI: in Std_logic; WBWEI: in Std_logic; WBADRI0: in Std_logic; 
            WBADRI2: in Std_logic; WBADRI6: in Std_logic; 
            WBDATI1: in Std_logic; WBDATI2: in Std_logic; 
            WBDATI3: in Std_logic; WBDATI4: in Std_logic; 
            WBDATI6: in Std_logic; WBDATI7: in Std_logic; 
            WBACKO: out Std_logic; I2C1SDAOEN: out Std_logic; 
            I2C1SDAO: out Std_logic; I2C1SDAI: in Std_logic; 
            I2C1SCLOEN: out Std_logic; I2C1SCLO: out Std_logic; 
            I2C1SCLI: in Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (A1=>HeartBeatInst0_iCounter_0, 
                DI1=>HeartBeatInst0_iCounter_s_0, M0=>wb_manager0_nState_3, 
                CLK=>sys_clk_0, Q0=>wb_manager0_cState_3, 
                F1=>HeartBeatInst0_iCounter_s_0, Q1=>HeartBeatInst0_iCounter_0, 
                FCO=>HeartBeatInst0_iCounter_cry_0);
    HeartBeatInst0_SLICE_1I: HeartBeatInst0_SLICE_1
      port map (A1=>heart_beat_c, A0=>HeartBeatInst0_iCounter_19, 
                DI1=>HeartBeatInst0_iCounter_s_20, 
                DI0=>HeartBeatInst0_iCounter_s_19, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_18, 
                F0=>HeartBeatInst0_iCounter_s_19, 
                Q0=>HeartBeatInst0_iCounter_19, 
                F1=>HeartBeatInst0_iCounter_s_20, Q1=>heart_beat_c);
    HeartBeatInst0_SLICE_2I: HeartBeatInst0_SLICE_2
      port map (A1=>HeartBeatInst0_iCounter_18, A0=>HeartBeatInst0_iCounter_17, 
                DI1=>HeartBeatInst0_iCounter_s_18, 
                DI0=>HeartBeatInst0_iCounter_s_17, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_16, 
                F0=>HeartBeatInst0_iCounter_s_17, 
                Q0=>HeartBeatInst0_iCounter_17, 
                F1=>HeartBeatInst0_iCounter_s_18, 
                Q1=>HeartBeatInst0_iCounter_18, 
                FCO=>HeartBeatInst0_iCounter_cry_18);
    HeartBeatInst0_SLICE_3I: HeartBeatInst0_SLICE_3
      port map (A1=>HeartBeatInst0_iCounter_16, A0=>HeartBeatInst0_iCounter_15, 
                DI1=>HeartBeatInst0_iCounter_s_16, 
                DI0=>HeartBeatInst0_iCounter_s_15, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_14, 
                F0=>HeartBeatInst0_iCounter_s_15, 
                Q0=>HeartBeatInst0_iCounter_15, 
                F1=>HeartBeatInst0_iCounter_s_16, 
                Q1=>HeartBeatInst0_iCounter_16, 
                FCO=>HeartBeatInst0_iCounter_cry_16);
    HeartBeatInst0_SLICE_4I: HeartBeatInst0_SLICE_4
      port map (A1=>HeartBeatInst0_iCounter_14, A0=>HeartBeatInst0_iCounter_13, 
                DI1=>HeartBeatInst0_iCounter_s_14, 
                DI0=>HeartBeatInst0_iCounter_s_13, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_12, 
                F0=>HeartBeatInst0_iCounter_s_13, 
                Q0=>HeartBeatInst0_iCounter_13, 
                F1=>HeartBeatInst0_iCounter_s_14, 
                Q1=>HeartBeatInst0_iCounter_14, 
                FCO=>HeartBeatInst0_iCounter_cry_14);
    HeartBeatInst0_SLICE_5I: HeartBeatInst0_SLICE_5
      port map (A1=>HeartBeatInst0_iCounter_12, A0=>HeartBeatInst0_iCounter_11, 
                DI1=>HeartBeatInst0_iCounter_s_12, 
                DI0=>HeartBeatInst0_iCounter_s_11, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_10, 
                F0=>HeartBeatInst0_iCounter_s_11, 
                Q0=>HeartBeatInst0_iCounter_11, 
                F1=>HeartBeatInst0_iCounter_s_12, 
                Q1=>HeartBeatInst0_iCounter_12, 
                FCO=>HeartBeatInst0_iCounter_cry_12);
    HeartBeatInst0_SLICE_6I: HeartBeatInst0_SLICE_6
      port map (A1=>HeartBeatInst0_iCounter_10, A0=>HeartBeatInst0_iCounter_9, 
                DI1=>HeartBeatInst0_iCounter_s_10, 
                DI0=>HeartBeatInst0_iCounter_s_9, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_8, 
                F0=>HeartBeatInst0_iCounter_s_9, Q0=>HeartBeatInst0_iCounter_9, 
                F1=>HeartBeatInst0_iCounter_s_10, 
                Q1=>HeartBeatInst0_iCounter_10, 
                FCO=>HeartBeatInst0_iCounter_cry_10);
    HeartBeatInst0_SLICE_7I: HeartBeatInst0_SLICE_7
      port map (A1=>HeartBeatInst0_iCounter_8, A0=>HeartBeatInst0_iCounter_7, 
                DI1=>HeartBeatInst0_iCounter_s_8, 
                DI0=>HeartBeatInst0_iCounter_s_7, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_6, 
                F0=>HeartBeatInst0_iCounter_s_7, Q0=>HeartBeatInst0_iCounter_7, 
                F1=>HeartBeatInst0_iCounter_s_8, Q1=>HeartBeatInst0_iCounter_8, 
                FCO=>HeartBeatInst0_iCounter_cry_8);
    HeartBeatInst0_SLICE_8I: HeartBeatInst0_SLICE_8
      port map (A1=>HeartBeatInst0_iCounter_6, A0=>HeartBeatInst0_iCounter_5, 
                DI1=>HeartBeatInst0_iCounter_s_6, 
                DI0=>HeartBeatInst0_iCounter_s_5, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_4, 
                F0=>HeartBeatInst0_iCounter_s_5, Q0=>HeartBeatInst0_iCounter_5, 
                F1=>HeartBeatInst0_iCounter_s_6, Q1=>HeartBeatInst0_iCounter_6, 
                FCO=>HeartBeatInst0_iCounter_cry_6);
    HeartBeatInst0_SLICE_9I: HeartBeatInst0_SLICE_9
      port map (A1=>HeartBeatInst0_iCounter_4, A0=>HeartBeatInst0_iCounter_3, 
                DI1=>HeartBeatInst0_iCounter_s_4, 
                DI0=>HeartBeatInst0_iCounter_s_3, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_2, 
                F0=>HeartBeatInst0_iCounter_s_3, Q0=>HeartBeatInst0_iCounter_3, 
                F1=>HeartBeatInst0_iCounter_s_4, Q1=>HeartBeatInst0_iCounter_4, 
                FCO=>HeartBeatInst0_iCounter_cry_4);
    HeartBeatInst0_SLICE_10I: HeartBeatInst0_SLICE_10
      port map (A1=>HeartBeatInst0_iCounter_2, A0=>HeartBeatInst0_iCounter_1, 
                DI1=>HeartBeatInst0_iCounter_s_2, 
                DI0=>HeartBeatInst0_iCounter_s_1, CLK=>sys_clk_0, 
                FCI=>HeartBeatInst0_iCounter_cry_0, 
                F0=>HeartBeatInst0_iCounter_s_1, Q0=>HeartBeatInst0_iCounter_1, 
                F1=>HeartBeatInst0_iCounter_s_2, Q1=>HeartBeatInst0_iCounter_2, 
                FCO=>HeartBeatInst0_iCounter_cry_2);
    SLICE_11I: SLICE_11
      port map (D0=>main_un6_0, DI0=>main_un6_i_0, M1=>main_un6_0, 
                CE=>status_reg_1_RNI75G51_5, CLK=>sys_clk_0, F0=>main_un6_i_0, 
                Q0=>addr_i_0, Q1=>addr_i_2);
    SLICE_12I: SLICE_12
      port map (C1=>wb_manager0_cState_1, B1=>rst_n_c, 
                A1=>wb_manager0_status_reg_1_i_5, 
                D0=>wb_manager0_status_reg_1_i_5, C0=>wb_manager0_cState_1, 
                B0=>rst_n_c, A0=>addr_i_6, DI0=>N_52_0, CLK=>sys_clk_0, 
                F0=>N_52_0, Q0=>addr_i_6, F1=>status_reg_1_RNI75G51_5);
    SLICE_13I: SLICE_13
      port map (C1=>main_un6_1, A1=>main_un6_0, C0=>main_un6_2, A0=>main_un6_0, 
                DI1=>data_io_0_6, DI0=>data_io_1_4, 
                CE=>status_reg_1_RNI75G51_5, CLK=>sys_clk_0, F0=>data_io_1_4, 
                Q0=>data_io_4, F1=>data_io_0_6, Q1=>data_io_6);
    SLICE_15I: SLICE_15
      port map (B0=>main_un6_1, A0=>main_un6_2, DI0=>main_un3_i, 
                M1=>main_un6_1, CE=>status_reg_1_RNI75G51_5, CLK=>sys_clk_0, 
                F0=>main_un3_i, Q0=>main_un6_2, Q1=>main_un6_0);
    wb_manager0_SLICE_21I: wb_manager0_SLICE_21
      port map (M1=>wb_manager0_cState_3, M0=>wb_manager0_cState_4, 
                CLK=>wb_manager0_nState_1_sqmuxa_2_i, Q0=>wb_manager0_nState_3, 
                Q1=>wb_manager0_nState_2);
    SLICE_22I: SLICE_22
      port map (D0=>wb_manager0_cState_1, C0=>addr_i_6, 
                A0=>wb_manager0_cState_5, M1=>wb_manager0_cState_2, 
                M0=>wb_manager0_cState_1, CLK=>wb_manager0_nState_1_sqmuxa_2_i, 
                F0=>wb_manager0_wb_adr_i_6, Q0=>wb_manager0_nState_5, F1=>VCCS, 
                Q1=>wb_manager0_nState_1);
    wb_manager0_SLICE_23I: wb_manager0_SLICE_23
      port map (C1=>addr_i_0, B1=>wb_manager0_cState_5, 
                A1=>wb_manager0_cState_1, D0=>data_io_6, 
                C0=>wb_manager0_cState_5, A0=>wb_manager0_cState_1, 
                M1=>wb_manager0_nState_2, M0=>wb_manager0_nState_1, 
                CLK=>sys_clk_0, F0=>wb_manager0_wb_dat_i_6, 
                Q0=>wb_manager0_cState_1, F1=>wb_manager0_wb_adr_i_0, 
                Q1=>wb_manager0_cState_2);
    wb_manager0_SLICE_24I: wb_manager0_SLICE_24
      port map (D1=>addr_i_2, B1=>wb_manager0_cState_1, 
                A1=>wb_manager0_cState_5, D0=>data_io_4, 
                B0=>wb_manager0_cState_1, A0=>wb_manager0_cState_5, 
                M0=>wb_manager0_cState_1, CE=>rst_n_c, CLK=>sys_clk_0, 
                F0=>wb_manager0_wb_dat_i_4, Q0=>wb_manager0_status_reg_1_i_5, 
                F1=>wb_manager0_wb_adr_i_2);
    SLICE_25I: SLICE_25
      port map (D1=>wb_manager0_cState_2, C1=>wb_manager0_wb_ack_o, 
                D0=>wb_manager0_cState_2, C0=>wb_manager0_cState_3, 
                M0=>main_un6_2, CE=>status_reg_1_RNI75G51_5, CLK=>sys_clk_0, 
                F0=>wb_manager0_N_51_i, Q0=>main_un6_1, 
                F1=>wb_manager0_nState_1_sqmuxa_2_i);
    wb_manager0_SLICE_28I: wb_manager0_SLICE_28
      port map (M1=>wb_manager0_nState_4, M0=>wb_manager0_nState_5, 
                CLK=>sys_clk_0, Q0=>wb_manager0_cState_5, 
                Q1=>wb_manager0_cState_4);
    wb_manager0_SLICE_30I: wb_manager0_SLICE_30
      port map (M0=>wb_manager0_cState_5, CLK=>wb_manager0_nState_1_sqmuxa_2_i, 
                Q0=>wb_manager0_nState_4);
    enI2CI: enI2CB
      port map (PADDO=>VCCS, enI2CS=>enI2C);
    rst_nI: rst_nB
      port map (PADDI=>rst_n_c, rstn=>rst_n);
    sclI: sclB
      port map (PADDI=>wb_manager0_efb_i2c_Inst0_i2c1_scli, 
                PADDT=>wb_manager0_efb_i2c_Inst0_i2c1_scloen, 
                PADDO=>wb_manager0_efb_i2c_Inst0_i2c1_sclo, sclS=>scl);
    sdaI: sdaB
      port map (PADDI=>wb_manager0_efb_i2c_Inst0_i2c1_sdai, 
                PADDT=>wb_manager0_efb_i2c_Inst0_i2c1_sdaoen, 
                PADDO=>wb_manager0_efb_i2c_Inst0_i2c1_sdao, sdaS=>sda);
    heart_beatI: heart_beatB
      port map (PADDO=>heart_beat_c, heartbeat=>heart_beat);
    OSCInst0I: OSCInst0
      port map (OSC=>sys_clk_0);
    wb_manager0_efb_i2c_Inst0_EFBInst_0I: wb_manager0_efb_i2c_Inst0_EFBInst_0
      port map (WBCLKI=>sys_clk_0, WBRSTI=>rst_n_c, WBCYCI=>wb_manager0_N_51_i, 
                WBSTBI=>wb_manager0_N_51_i, WBWEI=>wb_manager0_cState_3, 
                WBADRI0=>wb_manager0_wb_adr_i_0, 
                WBADRI2=>wb_manager0_wb_adr_i_2, 
                WBADRI6=>wb_manager0_wb_adr_i_6, 
                WBDATI1=>wb_manager0_wb_adr_i_2, 
                WBDATI2=>wb_manager0_wb_adr_i_0, 
                WBDATI3=>wb_manager0_wb_adr_i_2, 
                WBDATI4=>wb_manager0_wb_dat_i_4, 
                WBDATI6=>wb_manager0_wb_dat_i_6, 
                WBDATI7=>wb_manager0_wb_dat_i_4, WBACKO=>wb_manager0_wb_ack_o, 
                I2C1SDAOEN=>wb_manager0_efb_i2c_Inst0_i2c1_sdaoen, 
                I2C1SDAO=>wb_manager0_efb_i2c_Inst0_i2c1_sdao, 
                I2C1SDAI=>wb_manager0_efb_i2c_Inst0_i2c1_sdai, 
                I2C1SCLOEN=>wb_manager0_efb_i2c_Inst0_i2c1_scloen, 
                I2C1SCLO=>wb_manager0_efb_i2c_Inst0_i2c1_sclo, 
                I2C1SCLI=>wb_manager0_efb_i2c_Inst0_i2c1_scli);
    GSR_INST: GSR_INSTB
      port map (GSRNET=>rst_n_c);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of top_module is
    for Structure
    end for;
  end Structure_CON;


