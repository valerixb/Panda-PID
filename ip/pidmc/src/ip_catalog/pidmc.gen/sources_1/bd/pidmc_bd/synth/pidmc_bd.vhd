--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon Feb 26 11:15:49 2024
--Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target pidmc_bd.bd
--Design      : pidmc_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pidmc_bd is
  port (
    aiw_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ce : in STD_LOGIC_VECTOR ( 0 to 0 );
    ce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    command_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    g1d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    g2d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gi : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inv_command : in STD_LOGIC_VECTOR ( 0 to 0 );
    inv_meas : in STD_LOGIC_VECTOR ( 0 to 0 );
    kp : in STD_LOGIC_VECTOR ( 30 downto 0 );
    meas_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pv_deriv : in STD_LOGIC_VECTOR ( 0 to 0 );
    res : in STD_LOGIC_VECTOR ( 0 to 0 );
    sat_limit : in STD_LOGIC_VECTOR ( 31 downto 0 );
    thr_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pidmc_bd : entity is "pidmc_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pidmc_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pidmc_bd : entity is "pidmc_bd.hwdef";
end pidmc_bd;

architecture STRUCTURE of pidmc_bd is
  component pidmc_bd_pidmc_1_0 is
  port (
    aiw_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ce : in STD_LOGIC_VECTOR ( 0 to 0 );
    g1d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    g2d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gi : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pv_deriv : in STD_LOGIC_VECTOR ( 0 to 0 );
    command_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inv_command : in STD_LOGIC_VECTOR ( 0 to 0 );
    inv_meas : in STD_LOGIC_VECTOR ( 0 to 0 );
    kp : in STD_LOGIC_VECTOR ( 30 downto 0 );
    meas_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : in STD_LOGIC_VECTOR ( 0 to 0 );
    sat_limit : in STD_LOGIC_VECTOR ( 31 downto 0 );
    thr_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    ce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    control_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component pidmc_bd_pidmc_1_0;
  signal aiw_g_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ce_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal clr_1 : STD_LOGIC;
  signal command_in_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal g1d_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal g2d_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gi_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inv_command_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal inv_meas_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal kp_1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal meas_in_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pidmc_1_ce_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pidmc_1_control_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pv_deriv_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal res_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sat_limit_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal thr_in_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN pidmc_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clr : signal is "xilinx.com:signal:data:1.0 DATA.CLR DATA";
  attribute X_INTERFACE_PARAMETER of clr : signal is "XIL_INTERFACENAME DATA.CLR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of aiw_g : signal is "xilinx.com:signal:data:1.0 DATA.AIW_G DATA";
  attribute X_INTERFACE_PARAMETER of aiw_g : signal is "XIL_INTERFACENAME DATA.AIW_G, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ce : signal is "xilinx.com:signal:clockenable:1.0 CE.CE CE";
  attribute X_INTERFACE_PARAMETER of ce : signal is "XIL_INTERFACENAME CE.CE, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ce_out : signal is "xilinx.com:signal:data:1.0 DATA.CE_OUT DATA";
  attribute X_INTERFACE_PARAMETER of ce_out : signal is "XIL_INTERFACENAME DATA.CE_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of command_in : signal is "xilinx.com:signal:data:1.0 DATA.COMMAND_IN DATA";
  attribute X_INTERFACE_PARAMETER of command_in : signal is "XIL_INTERFACENAME DATA.COMMAND_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of control_out : signal is "xilinx.com:signal:data:1.0 DATA.CONTROL_OUT DATA";
  attribute X_INTERFACE_PARAMETER of control_out : signal is "XIL_INTERFACENAME DATA.CONTROL_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of g1d : signal is "xilinx.com:signal:data:1.0 DATA.G1D DATA";
  attribute X_INTERFACE_PARAMETER of g1d : signal is "XIL_INTERFACENAME DATA.G1D, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of g2d : signal is "xilinx.com:signal:data:1.0 DATA.G2D DATA";
  attribute X_INTERFACE_PARAMETER of g2d : signal is "XIL_INTERFACENAME DATA.G2D, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of gi : signal is "xilinx.com:signal:data:1.0 DATA.GI DATA";
  attribute X_INTERFACE_PARAMETER of gi : signal is "XIL_INTERFACENAME DATA.GI, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of inv_command : signal is "xilinx.com:signal:data:1.0 DATA.INV_COMMAND DATA";
  attribute X_INTERFACE_PARAMETER of inv_command : signal is "XIL_INTERFACENAME DATA.INV_COMMAND, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of inv_meas : signal is "xilinx.com:signal:data:1.0 DATA.INV_MEAS DATA";
  attribute X_INTERFACE_PARAMETER of inv_meas : signal is "XIL_INTERFACENAME DATA.INV_MEAS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of kp : signal is "xilinx.com:signal:data:1.0 DATA.KP DATA";
  attribute X_INTERFACE_PARAMETER of kp : signal is "XIL_INTERFACENAME DATA.KP, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of meas_in : signal is "xilinx.com:signal:data:1.0 DATA.MEAS_IN DATA";
  attribute X_INTERFACE_PARAMETER of meas_in : signal is "XIL_INTERFACENAME DATA.MEAS_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of pv_deriv : signal is "xilinx.com:signal:data:1.0 DATA.PV_DERIV DATA";
  attribute X_INTERFACE_PARAMETER of pv_deriv : signal is "XIL_INTERFACENAME DATA.PV_DERIV, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of res : signal is "xilinx.com:signal:data:1.0 DATA.RES DATA";
  attribute X_INTERFACE_PARAMETER of res : signal is "XIL_INTERFACENAME DATA.RES, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sat_limit : signal is "xilinx.com:signal:data:1.0 DATA.SAT_LIMIT DATA";
  attribute X_INTERFACE_PARAMETER of sat_limit : signal is "XIL_INTERFACENAME DATA.SAT_LIMIT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of thr_in : signal is "xilinx.com:signal:data:1.0 DATA.THR_IN DATA";
  attribute X_INTERFACE_PARAMETER of thr_in : signal is "XIL_INTERFACENAME DATA.THR_IN, LAYERED_METADATA undef";
begin
  aiw_g_1(31 downto 0) <= aiw_g(31 downto 0);
  ce_1(0) <= ce(0);
  ce_out(0) <= pidmc_1_ce_out(0);
  clk_1 <= clk;
  clr_1 <= clr;
  command_in_1(31 downto 0) <= command_in(31 downto 0);
  control_out(31 downto 0) <= pidmc_1_control_out(31 downto 0);
  g1d_1(31 downto 0) <= g1d(31 downto 0);
  g2d_1(31 downto 0) <= g2d(31 downto 0);
  gi_1(31 downto 0) <= gi(31 downto 0);
  inv_command_1(0) <= inv_command(0);
  inv_meas_1(0) <= inv_meas(0);
  kp_1(30 downto 0) <= kp(30 downto 0);
  meas_in_1(31 downto 0) <= meas_in(31 downto 0);
  pv_deriv_1(0) <= pv_deriv(0);
  res_1(0) <= res(0);
  sat_limit_1(31 downto 0) <= sat_limit(31 downto 0);
  thr_in_1(31 downto 0) <= thr_in(31 downto 0);
pidmc_1: component pidmc_bd_pidmc_1_0
     port map (
      aiw_g(31 downto 0) => aiw_g_1(31 downto 0),
      ce(0) => ce_1(0),
      ce_out(0) => pidmc_1_ce_out(0),
      clk => clk_1,
      clr => clr_1,
      command_in(31 downto 0) => command_in_1(31 downto 0),
      control_out(31 downto 0) => pidmc_1_control_out(31 downto 0),
      g1d(31 downto 0) => g1d_1(31 downto 0),
      g2d(31 downto 0) => g2d_1(31 downto 0),
      gi(31 downto 0) => gi_1(31 downto 0),
      inv_command(0) => inv_command_1(0),
      inv_meas(0) => inv_meas_1(0),
      kp(30 downto 0) => kp_1(30 downto 0),
      meas_in(31 downto 0) => meas_in_1(31 downto 0),
      pv_deriv(0) => pv_deriv_1(0),
      res(0) => res_1(0),
      sat_limit(31 downto 0) => sat_limit_1(31 downto 0),
      thr_in(31 downto 0) => thr_in_1(31 downto 0)
    );
end STRUCTURE;
