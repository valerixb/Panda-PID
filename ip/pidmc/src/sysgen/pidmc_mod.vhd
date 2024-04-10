-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity pidmc_stub is
  port (
    aiw_g : in std_logic_vector( 32-1 downto 0 );
    ce : in std_logic_vector( 1-1 downto 0 );
    g1d : in std_logic_vector( 32-1 downto 0 );
    g2d : in std_logic_vector( 32-1 downto 0 );
    gi : in std_logic_vector( 32-1 downto 0 );
    pv_deriv : in std_logic_vector( 1-1 downto 0 );
    command_in : in std_logic_vector( 32-1 downto 0 );
    inv_command : in std_logic_vector( 1-1 downto 0 );
    inv_meas : in std_logic_vector( 1-1 downto 0 );
    kp : in std_logic_vector( 31-1 downto 0 );
    meas_in : in std_logic_vector( 32-1 downto 0 );
    res : in std_logic_vector( 1-1 downto 0 );
    sat_limit : in std_logic_vector( 32-1 downto 0 );
    thr_in : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    clr : in std_logic;
    ce_out : out std_logic_vector( 1-1 downto 0 );
    control_out : out std_logic_vector( 32-1 downto 0 )
  );
end pidmc_stub;
architecture structural of pidmc_stub is 
begin
  sysgen_dut : entity xil_defaultlib.pidmc_0 
  port map (
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
end structural;
