// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Feb 26 11:18:52 2024
// Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /xilinxworks/sysgen/pid_panda/netlist/ip/pidmc/src/ip_catalog/pidmc.gen/sources_1/bd/pidmc_bd/ip/pidmc_bd_pidmc_1_0/pidmc_bd_pidmc_1_0_stub.v
// Design      : pidmc_bd_pidmc_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pidmc,Vivado 2023.2" *)
module pidmc_bd_pidmc_1_0(aiw_g, ce, g1d, g2d, gi, pv_deriv, command_in, 
  inv_command, inv_meas, kp, meas_in, res, sat_limit, thr_in, clk, clr, ce_out, control_out)
/* synthesis syn_black_box black_box_pad_pin="aiw_g[31:0],ce[0:0],g1d[31:0],g2d[31:0],gi[31:0],pv_deriv[0:0],command_in[31:0],inv_command[0:0],inv_meas[0:0],kp[30:0],meas_in[31:0],res[0:0],sat_limit[31:0],thr_in[31:0],clr,ce_out[0:0],control_out[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [31:0]aiw_g;
  input [0:0]ce;
  input [31:0]g1d;
  input [31:0]g2d;
  input [31:0]gi;
  input [0:0]pv_deriv;
  input [31:0]command_in;
  input [0:0]inv_command;
  input [0:0]inv_meas;
  input [30:0]kp;
  input [31:0]meas_in;
  input [0:0]res;
  input [31:0]sat_limit;
  input [31:0]thr_in;
  input clk /* synthesis syn_isclock = 1 */;
  input clr;
  output [0:0]ce_out;
  output [31:0]control_out;
endmodule
