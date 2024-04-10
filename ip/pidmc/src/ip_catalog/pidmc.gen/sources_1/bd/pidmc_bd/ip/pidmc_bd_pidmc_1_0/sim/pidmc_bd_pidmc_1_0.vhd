-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: MaxIV:Panda_ModelComp:pidmc:1.0
-- IP Revision: 339851697

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.pidmc;

ENTITY pidmc_bd_pidmc_1_0 IS
  PORT (
    aiw_g : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ce : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    g1d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    g2d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gi : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    pv_deriv : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    command_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inv_command : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inv_meas : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    kp : IN STD_LOGIC_VECTOR(30 DOWNTO 0);
    meas_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    res : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    sat_limit : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    thr_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    clr : IN STD_LOGIC;
    ce_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    control_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END pidmc_bd_pidmc_1_0;

ARCHITECTURE pidmc_bd_pidmc_1_0_arch OF pidmc_bd_pidmc_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pidmc_bd_pidmc_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pidmc IS
    PORT (
      aiw_g : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ce : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      g1d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      g2d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      gi : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pv_deriv : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      command_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      inv_command : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inv_meas : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      kp : IN STD_LOGIC_VECTOR(30 DOWNTO 0);
      meas_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      res : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      sat_limit : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      thr_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      clk : IN STD_LOGIC;
      clr : IN STD_LOGIC;
      ce_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      control_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT pidmc;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF aiw_g: SIGNAL IS "XIL_INTERFACENAME aiw_g, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF aiw_g: SIGNAL IS "xilinx.com:signal:data:1.0 aiw_g DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ce: SIGNAL IS "XIL_INTERFACENAME ce, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF ce: SIGNAL IS "xilinx.com:signal:clockenable:1.0 ce CE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ce_out: SIGNAL IS "XIL_INTERFACENAME ce_out, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF ce_out: SIGNAL IS "xilinx.com:signal:data:1.0 ce_out DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pidmc_bd_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clr: SIGNAL IS "XIL_INTERFACENAME clr, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF clr: SIGNAL IS "xilinx.com:signal:data:1.0 clr DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF command_in: SIGNAL IS "XIL_INTERFACENAME command_in, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF command_in: SIGNAL IS "xilinx.com:signal:data:1.0 command_in DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF control_out: SIGNAL IS "XIL_INTERFACENAME control_out, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF control_out: SIGNAL IS "xilinx.com:signal:data:1.0 control_out DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF g1d: SIGNAL IS "XIL_INTERFACENAME g1d, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF g1d: SIGNAL IS "xilinx.com:signal:data:1.0 g1d DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF g2d: SIGNAL IS "XIL_INTERFACENAME g2d, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF g2d: SIGNAL IS "xilinx.com:signal:data:1.0 g2d DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gi: SIGNAL IS "XIL_INTERFACENAME gi, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF gi: SIGNAL IS "xilinx.com:signal:data:1.0 gi DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inv_command: SIGNAL IS "XIL_INTERFACENAME inv_command, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF inv_command: SIGNAL IS "xilinx.com:signal:data:1.0 inv_command DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inv_meas: SIGNAL IS "XIL_INTERFACENAME inv_meas, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF inv_meas: SIGNAL IS "xilinx.com:signal:data:1.0 inv_meas DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kp: SIGNAL IS "XIL_INTERFACENAME kp, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF kp: SIGNAL IS "xilinx.com:signal:data:1.0 kp DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF meas_in: SIGNAL IS "XIL_INTERFACENAME meas_in, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF meas_in: SIGNAL IS "xilinx.com:signal:data:1.0 meas_in DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pv_deriv: SIGNAL IS "XIL_INTERFACENAME pv_deriv, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF pv_deriv: SIGNAL IS "xilinx.com:signal:data:1.0 pv_deriv DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF res: SIGNAL IS "XIL_INTERFACENAME res, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF res: SIGNAL IS "xilinx.com:signal:data:1.0 res DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sat_limit: SIGNAL IS "XIL_INTERFACENAME sat_limit, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF sat_limit: SIGNAL IS "xilinx.com:signal:data:1.0 sat_limit DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF thr_in: SIGNAL IS "XIL_INTERFACENAME thr_in, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF thr_in: SIGNAL IS "xilinx.com:signal:data:1.0 thr_in DATA";
BEGIN
  U0 : pidmc
    PORT MAP (
      aiw_g => aiw_g,
      ce => ce,
      g1d => g1d,
      g2d => g2d,
      gi => gi,
      pv_deriv => pv_deriv,
      command_in => command_in,
      inv_command => inv_command,
      inv_meas => inv_meas,
      kp => kp,
      meas_in => meas_in,
      res => res,
      sat_limit => sat_limit,
      thr_in => thr_in,
      clk => clk,
      clr => clr,
      ce_out => ce_out,
      control_out => control_out
    );
END pidmc_bd_pidmc_1_0_arch;
