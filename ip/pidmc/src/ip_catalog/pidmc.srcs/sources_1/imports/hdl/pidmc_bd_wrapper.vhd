--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon Feb 26 11:15:41 2024
--Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target pidmc_bd_wrapper.bd
--Design      : pidmc_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pidmc_bd_wrapper is
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
end pidmc_bd_wrapper;

architecture STRUCTURE of pidmc_bd_wrapper is
  component pidmc_bd is
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
  end component pidmc_bd;
begin
pidmc_bd_i: component pidmc_bd
     port map (
      aiw_g(31 downto 0) => aiw_g(31 downto 0),
      ce(0) => ce(0),
      ce_out(0) => ce_out(0),
      clk => clk,
      clr => clr,
      command_in(31 downto 0) => command_in(31 downto 0),
      control_out(31 downto 0) => control_out(31 downto 0),
      g1d(31 downto 0) => g1d(31 downto 0),
      g2d(31 downto 0) => g2d(31 downto 0),
      gi(31 downto 0) => gi(31 downto 0),
      inv_command(0) => inv_command(0),
      inv_meas(0) => inv_meas(0),
      kp(30 downto 0) => kp(30 downto 0),
      meas_in(31 downto 0) => meas_in(31 downto 0),
      pv_deriv(0) => pv_deriv(0),
      res(0) => res(0),
      sat_limit(31 downto 0) => sat_limit(31 downto 0),
      thr_in(31 downto 0) => thr_in(31 downto 0)
    );
end STRUCTURE;
