-- Generated from Simulink block pid_tb_varTs/pidmc_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pidmc_struct is
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
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_125 : in std_logic;
    ce_125 : in std_logic;
    ce_out : out std_logic_vector( 1-1 downto 0 );
    control_out : out std_logic_vector( 32-1 downto 0 )
  );
end pidmc_struct;
architecture structural of pidmc_struct is 
  signal aiw_g_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal g1d_net : std_logic_vector( 32-1 downto 0 );
  signal g2d_net : std_logic_vector( 32-1 downto 0 );
  signal gi_net : std_logic_vector( 32-1 downto 0 );
  signal pv_deriv_net : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal command_in_net : std_logic_vector( 32-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 32-1 downto 0 );
  signal inv_command_net : std_logic_vector( 1-1 downto 0 );
  signal inv_meas_net : std_logic_vector( 1-1 downto 0 );
  signal kp_net : std_logic_vector( 31-1 downto 0 );
  signal meas_in_net : std_logic_vector( 32-1 downto 0 );
  signal res_net : std_logic_vector( 1-1 downto 0 );
  signal sat_limit_net : std_logic_vector( 32-1 downto 0 );
  signal thr_in_net : std_logic_vector( 32-1 downto 0 );
  signal src_clk_net : std_logic;
  signal src_ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 33-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 32-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 64-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 64-1 downto 0 );
  signal delay_q_net : std_logic_vector( 64-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 64-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 64-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 64-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 64-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 64-1 downto 0 );
  signal pid_summer_s_net : std_logic_vector( 64-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal mux7_y_net : std_logic_vector( 33-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 33-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 64-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 64-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 64-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 64-1 downto 0 );
  signal constant_op_net : std_logic_vector( 33-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample4_q_net : std_logic_vector( 32-1 downto 0 );
  signal mux6_y_net : std_logic_vector( 33-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 31-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample5_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample12_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample13_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux5_y_net : std_logic_vector( 33-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 64-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 64-1 downto 0 );
  signal mult_p_net : std_logic_vector( 64-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 32-1 downto 0 );
  signal negate1_op_net : std_logic_vector( 32-1 downto 0 );
  signal negate2_op_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal negate_op_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample10_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample11_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample8_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample9_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 64-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 32-1 downto 0 );
  signal negate3_op_net : std_logic_vector( 34-1 downto 0 );
  signal pi_summer_s_net : std_logic_vector( 64-1 downto 0 );
begin
  aiw_g_net <= aiw_g;
  ce_net_x0 <= ce;
  g1d_net <= g1d;
  g2d_net <= g2d;
  gi_net <= gi;
  pv_deriv_net <= pv_deriv;
  ce_out <= clock_enable_probe_q_net;
  command_in_net <= command_in;
  control_out <= up_sample_q_net;
  inv_command_net <= inv_command;
  inv_meas_net <= inv_meas;
  kp_net <= kp;
  meas_in_net <= meas_in;
  res_net <= res;
  sat_limit_net <= sat_limit;
  thr_in_net <= thr_in;
  src_clk_net <= clk_1;
  src_ce_net <= ce_1;
  clk_net <= clk_125;
  ce_net <= ce_125;
  addsub : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 31,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 31,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "pidmc_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 31,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 54,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 54,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "pidmc_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 54,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "pidmc_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 62,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "pidmc_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 62,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => mux3_y_net,
    b => pid_summer_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 31,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 31,
    b_width => 33,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 34,
    core_name0 => "pidmc_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 34,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 31,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => mux7_y_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "pidmc_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 62,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 54,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 73,
    core_name0 => "pidmc_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 73,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 54,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => convert1_dout_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  clock_enable_probe : entity xil_defaultlib.pidmc_xlceprobe 
  generic map (
    d_width => 64,
    q_width => 1
  )
  port map (
    d => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => clock_enable_probe_q_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_93e768b169 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  convert : entity xil_defaultlib.pidmc_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 30,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 31,
    dout_width => 33,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample4_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.pidmc_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 31,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 54,
    dout_width => 64,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => mux6_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.pidmc_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 62,
    din_width => 64,
    dout_arith => 2,
    dout_bin_pt => 31,
    dout_width => 32,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.pidmc_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 23,
    din_width => 31,
    dout_arith => 2,
    dout_bin_pt => 23,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample6_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.pidmc_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 25,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 25,
    dout_width => 33,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample5_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  delay : entity xil_defaultlib.sysgen_delay_ad5e453ba8 
  port map (
    clr => '0',
    d => addsub6_s_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.sysgen_delay_99e5ab6f35 
  port map (
    clr => '0',
    d => mux5_y_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.sysgen_delay_ad5e453ba8 
  port map (
    clr => '0',
    d => addsub5_s_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.sysgen_delay_ad5e453ba8 
  port map (
    clr => '0',
    d => addsub2_s_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.sysgen_delay_ad5e453ba8 
  port map (
    clr => '0',
    d => mult4_p_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.sysgen_delay_ad5e453ba8 
  port map (
    clr => '0',
    d => mult_p_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  down_sample : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 31,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlSigned,
    q_bin_pt => 31,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => meas_in_net,
    rst => down_sample12_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 31,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlSigned,
    q_bin_pt => 31,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => command_in_net,
    rst => down_sample12_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample10 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 32,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 32,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => g1d_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample10_q_net
  );
  down_sample11 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 30,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlSigned,
    q_bin_pt => 30,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => sat_limit_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample11_q_net
  );
  down_sample12 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => res_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample12_q_net
  );
  down_sample13 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => ce_net_x0,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample13_q_net
  );
  down_sample2 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => inv_meas_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  down_sample3 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => inv_command_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample3_q_net
  );
  down_sample4 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 30,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlSigned,
    q_bin_pt => 30,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => thr_in_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample4_q_net
  );
  down_sample5 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 25,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 25,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => gi_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample5_q_net
  );
  down_sample6 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 23,
    d_width => 31,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 23,
    q_width => 31
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => kp_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample6_q_net
  );
  down_sample7 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 30,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlSigned,
    q_bin_pt => 30,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => aiw_g_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample7_q_net
  );
  down_sample8 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => pv_deriv_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample8_q_net
  );
  down_sample9 : entity xil_defaultlib.pidmc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 7,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 7,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => g2d_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample9_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_380a89577d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    y => logical_y_net
  );
  mult : entity xil_defaultlib.pidmc_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 23,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 31,
    b_width => 33,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 33,
    c_baat => 32,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "pidmc_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 62,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert3_dout_net,
    b => mux6_y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.pidmc_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 25,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 54,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 33,
    c_output_width => 97,
    c_type => 0,
    core_name0 => "pidmc_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 62,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert4_dout_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.pidmc_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 31,
    a_width => 33,
    b_arith => xlUnsigned,
    b_bin_pt => 7,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 33,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "pidmc_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 62,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub4_s_net,
    b => down_sample9_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.pidmc_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlUnsigned,
    b_bin_pt => 32,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 64,
    c_output_width => 96,
    c_type => 0,
    core_name0 => "pidmc_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 62,
    p_width => 64,
    quantization => 2
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    b => down_sample10_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.pidmc_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 30,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 64,
    c_output_width => 96,
    c_type => 0,
    core_name0 => "pidmc_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 62,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    b => down_sample7_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mux : entity xil_defaultlib.sysgen_mux_de746a0a45 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational_op_net,
    d0 => pid_summer_s_net,
    d1 => down_sample11_q_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_3035f3b6f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => down_sample3_q_net,
    d0 => down_sample1_q_net,
    d1 => negate1_op_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_3035f3b6f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => down_sample2_q_net,
    d0 => down_sample_q_net,
    d1 => negate2_op_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_e368ea745c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational1_op_net,
    d0 => mux_y_net,
    d1 => negate_op_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_3035f3b6f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => down_sample2_q_net,
    d0 => negate2_op_net,
    d1 => down_sample_q_net,
    y => mux4_y_net
  );
  mux5 : entity xil_defaultlib.sysgen_mux_9af7401eef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => down_sample8_q_net,
    d0 => addsub_s_net,
    d1 => mux4_y_net,
    y => mux5_y_net
  );
  mux6 : entity xil_defaultlib.sysgen_mux_28919abdf7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => logical_y_net,
    d0 => constant_op_net,
    d1 => addsub_s_net,
    y => mux6_y_net
  );
  mux7 : entity xil_defaultlib.sysgen_mux_28919abdf7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => logical_y_net,
    d0 => delay1_q_net,
    d1 => mux5_y_net,
    y => mux7_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_7af552286e 
  port map (
    clr => '0',
    ip => down_sample11_q_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
  negate1 : entity xil_defaultlib.sysgen_negate_0fae72f0eb 
  port map (
    clr => '0',
    ip => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => negate1_op_net
  );
  negate2 : entity xil_defaultlib.sysgen_negate_0fae72f0eb 
  port map (
    clr => '0',
    ip => down_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    op => negate2_op_net
  );
  negate3 : entity xil_defaultlib.sysgen_negate_785b69a48d 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => negate3_op_net
  );
  pid_summer : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "pidmc_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 62,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => pi_summer_s_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => pid_summer_s_net
  );
  pi_summer : entity xil_defaultlib.pidmc_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "pidmc_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 62,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => delay5_q_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => pi_summer_s_net
  );
  relational : entity xil_defaultlib.sysgen_relational_c2e142f222 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => pid_summer_s_net,
    b => down_sample11_q_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_8011da0b7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => pid_summer_s_net,
    b => negate_op_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_8e9e835ed5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => addsub_s_net,
    b => convert_dout_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_a0c74db4d6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => addsub_s_net,
    b => negate3_op_net,
    op => relational3_op_net
  );
  up_sample : entity xil_defaultlib.pidmc_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlSigned,
    d_bin_pt => 31,
    d_width => 32,
    latency => 1,
    q_arith => xlSigned,
    q_bin_pt => 31,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => convert2_dout_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => src_clk_net,
    dest_ce => src_ce_net,
    q => up_sample_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pidmc_default_clock_driver is
  port (
    pidmc_sysclk : in std_logic;
    pidmc_sysce : in std_logic;
    pidmc_sysclr : in std_logic;
    pidmc_clk1 : out std_logic;
    pidmc_ce1 : out std_logic;
    pidmc_clk125 : out std_logic;
    pidmc_ce125 : out std_logic
  );
end pidmc_default_clock_driver;
architecture structural of pidmc_default_clock_driver is 
begin
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => pidmc_sysclk,
    sysce => pidmc_sysce,
    sysclr => pidmc_sysclr,
    clk => pidmc_clk1,
    ce => pidmc_ce1
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 125,
    log_2_period => 7
  )
  port map (
    sysclk => pidmc_sysclk,
    sysce => pidmc_sysce,
    sysclr => pidmc_sysclr,
    clk => pidmc_clk125,
    ce => pidmc_ce125
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pidmc is
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
end pidmc;
architecture structural of pidmc is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "pidmc,sysgen_core_2023_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z030,speed=-1,package=sbg485,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=1,clock_period=8,system_simulink_period=8e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.05,addsub=9,ceprobe=1,constant=1,convert=5,delay=6,dsamp=14,logical=1,mult=5,mux=8,negate=4,relational=4,usamp=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_125_net : std_logic;
  signal ce_125_net : std_logic;
begin
  pidmc_default_clock_driver : entity xil_defaultlib.pidmc_default_clock_driver 
  port map (
    pidmc_sysclk => clk,
    pidmc_sysce => '1',
    pidmc_sysclr => clr,
    pidmc_clk1 => clk_1_net,
    pidmc_ce1 => ce_1_net,
    pidmc_clk125 => clk_125_net,
    pidmc_ce125 => ce_125_net
  );
  pidmc_struct : entity xil_defaultlib.pidmc_struct 
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
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_125 => clk_125_net,
    ce_125 => ce_125_net,
    ce_out => ce_out,
    control_out => control_out
  );
end structural;
