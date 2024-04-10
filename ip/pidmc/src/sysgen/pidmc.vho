  sysgen_dut : entity xil_defaultlib.pidmc 
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
