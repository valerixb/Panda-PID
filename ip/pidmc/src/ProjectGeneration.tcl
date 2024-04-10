# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set AnalyzeTiming 1
	set AnalyzeTimingNumPaths {10000}
	set AnalyzeTimingPostImplementation 0
	set AnalyzeTimingPostSynthesis 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7z030}
	set DSPFamily {zynq}
	set DSPPackage {sbg485}
	set DSPSpeed {-1}
	set FPGAClockPeriod 8
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {/home/valbas/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {0}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {Panda_ModelComp}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {pidmc}
	set IP_Revision {339851697}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {MaxIV}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {pidmc}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{pidmc_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{pidmc.vhd} -lib {xil_defaultlib}}
		{{pidmc_clock.xdc}}
		{{pidmc.xdc}}
	}
	set SimPeriod 8e-09
	set SimTime 0.05
	set SimulationTime {50000208.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/xilinxworks/sysgen/pid_panda/netlist/ip/pidmc/src}
	set TopLevelModule {pidmc}
	set TopLevelSimulinkHandle 49.0002
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface thr_in Name {thr_in}
	dict set TopLevelPortInterface thr_in Type Fix_32_30
	dict set TopLevelPortInterface thr_in ArithmeticType xlSigned
	dict set TopLevelPortInterface thr_in BinaryPoint 30
	dict set TopLevelPortInterface thr_in Width 32
	dict set TopLevelPortInterface thr_in DatFile {pid_tb_varts_pidmc_thr_in.dat}
	dict set TopLevelPortInterface thr_in IconText {thr_in}
	dict set TopLevelPortInterface thr_in Direction in
	dict set TopLevelPortInterface thr_in Period 1
	dict set TopLevelPortInterface thr_in Interface 0
	dict set TopLevelPortInterface thr_in InterfaceName {}
	dict set TopLevelPortInterface thr_in InterfaceString {DATA}
	dict set TopLevelPortInterface thr_in ClockDomain {pidmc}
	dict set TopLevelPortInterface thr_in Locs {}
	dict set TopLevelPortInterface thr_in IOStandard {}
	dict set TopLevelPortInterface sat_limit Name {sat_limit}
	dict set TopLevelPortInterface sat_limit Type Fix_32_30
	dict set TopLevelPortInterface sat_limit ArithmeticType xlSigned
	dict set TopLevelPortInterface sat_limit BinaryPoint 30
	dict set TopLevelPortInterface sat_limit Width 32
	dict set TopLevelPortInterface sat_limit DatFile {pid_tb_varts_pidmc_sat_limit.dat}
	dict set TopLevelPortInterface sat_limit IconText {sat_limit}
	dict set TopLevelPortInterface sat_limit Direction in
	dict set TopLevelPortInterface sat_limit Period 1
	dict set TopLevelPortInterface sat_limit Interface 0
	dict set TopLevelPortInterface sat_limit InterfaceName {}
	dict set TopLevelPortInterface sat_limit InterfaceString {DATA}
	dict set TopLevelPortInterface sat_limit ClockDomain {pidmc}
	dict set TopLevelPortInterface sat_limit Locs {}
	dict set TopLevelPortInterface sat_limit IOStandard {}
	dict set TopLevelPortInterface res Name {res}
	dict set TopLevelPortInterface res Type Bool
	dict set TopLevelPortInterface res ArithmeticType xlUnsigned
	dict set TopLevelPortInterface res BinaryPoint 0
	dict set TopLevelPortInterface res Width 1
	dict set TopLevelPortInterface res DatFile {pid_tb_varts_pidmc_res.dat}
	dict set TopLevelPortInterface res IconText {res}
	dict set TopLevelPortInterface res Direction in
	dict set TopLevelPortInterface res Period 1
	dict set TopLevelPortInterface res Interface 0
	dict set TopLevelPortInterface res InterfaceName {}
	dict set TopLevelPortInterface res InterfaceString {DATA}
	dict set TopLevelPortInterface res ClockDomain {pidmc}
	dict set TopLevelPortInterface res Locs {}
	dict set TopLevelPortInterface res IOStandard {}
	dict set TopLevelPortInterface meas_in Name {meas_in}
	dict set TopLevelPortInterface meas_in Type Fix_32_31
	dict set TopLevelPortInterface meas_in ArithmeticType xlSigned
	dict set TopLevelPortInterface meas_in BinaryPoint 31
	dict set TopLevelPortInterface meas_in Width 32
	dict set TopLevelPortInterface meas_in DatFile {pid_tb_varts_pidmc_meas_in.dat}
	dict set TopLevelPortInterface meas_in IconText {meas_in}
	dict set TopLevelPortInterface meas_in Direction in
	dict set TopLevelPortInterface meas_in Period 1
	dict set TopLevelPortInterface meas_in Interface 0
	dict set TopLevelPortInterface meas_in InterfaceName {}
	dict set TopLevelPortInterface meas_in InterfaceString {DATA}
	dict set TopLevelPortInterface meas_in ClockDomain {pidmc}
	dict set TopLevelPortInterface meas_in Locs {}
	dict set TopLevelPortInterface meas_in IOStandard {}
	dict set TopLevelPortInterface kp Name {kp}
	dict set TopLevelPortInterface kp Type UFix_31_23
	dict set TopLevelPortInterface kp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface kp BinaryPoint 23
	dict set TopLevelPortInterface kp Width 31
	dict set TopLevelPortInterface kp DatFile {pid_tb_varts_pidmc_kp.dat}
	dict set TopLevelPortInterface kp IconText {kp}
	dict set TopLevelPortInterface kp Direction in
	dict set TopLevelPortInterface kp Period 1
	dict set TopLevelPortInterface kp Interface 0
	dict set TopLevelPortInterface kp InterfaceName {}
	dict set TopLevelPortInterface kp InterfaceString {DATA}
	dict set TopLevelPortInterface kp ClockDomain {pidmc}
	dict set TopLevelPortInterface kp Locs {}
	dict set TopLevelPortInterface kp IOStandard {}
	dict set TopLevelPortInterface inv_meas Name {inv_meas}
	dict set TopLevelPortInterface inv_meas Type Bool
	dict set TopLevelPortInterface inv_meas ArithmeticType xlUnsigned
	dict set TopLevelPortInterface inv_meas BinaryPoint 0
	dict set TopLevelPortInterface inv_meas Width 1
	dict set TopLevelPortInterface inv_meas DatFile {pid_tb_varts_pidmc_inv_meas.dat}
	dict set TopLevelPortInterface inv_meas IconText {inv_meas}
	dict set TopLevelPortInterface inv_meas Direction in
	dict set TopLevelPortInterface inv_meas Period 1
	dict set TopLevelPortInterface inv_meas Interface 0
	dict set TopLevelPortInterface inv_meas InterfaceName {}
	dict set TopLevelPortInterface inv_meas InterfaceString {DATA}
	dict set TopLevelPortInterface inv_meas ClockDomain {pidmc}
	dict set TopLevelPortInterface inv_meas Locs {}
	dict set TopLevelPortInterface inv_meas IOStandard {}
	dict set TopLevelPortInterface inv_command Name {inv_command}
	dict set TopLevelPortInterface inv_command Type Bool
	dict set TopLevelPortInterface inv_command ArithmeticType xlUnsigned
	dict set TopLevelPortInterface inv_command BinaryPoint 0
	dict set TopLevelPortInterface inv_command Width 1
	dict set TopLevelPortInterface inv_command DatFile {pid_tb_varts_pidmc_inv_command.dat}
	dict set TopLevelPortInterface inv_command IconText {inv_command}
	dict set TopLevelPortInterface inv_command Direction in
	dict set TopLevelPortInterface inv_command Period 1
	dict set TopLevelPortInterface inv_command Interface 0
	dict set TopLevelPortInterface inv_command InterfaceName {}
	dict set TopLevelPortInterface inv_command InterfaceString {DATA}
	dict set TopLevelPortInterface inv_command ClockDomain {pidmc}
	dict set TopLevelPortInterface inv_command Locs {}
	dict set TopLevelPortInterface inv_command IOStandard {}
	dict set TopLevelPortInterface command_in Name {command_in}
	dict set TopLevelPortInterface command_in Type Fix_32_31
	dict set TopLevelPortInterface command_in ArithmeticType xlSigned
	dict set TopLevelPortInterface command_in BinaryPoint 31
	dict set TopLevelPortInterface command_in Width 32
	dict set TopLevelPortInterface command_in DatFile {pid_tb_varts_pidmc_command_in.dat}
	dict set TopLevelPortInterface command_in IconText {command_in}
	dict set TopLevelPortInterface command_in Direction in
	dict set TopLevelPortInterface command_in Period 1
	dict set TopLevelPortInterface command_in Interface 0
	dict set TopLevelPortInterface command_in InterfaceName {}
	dict set TopLevelPortInterface command_in InterfaceString {DATA}
	dict set TopLevelPortInterface command_in ClockDomain {pidmc}
	dict set TopLevelPortInterface command_in Locs {}
	dict set TopLevelPortInterface command_in IOStandard {}
	dict set TopLevelPortInterface pv_deriv Name {pv_deriv}
	dict set TopLevelPortInterface pv_deriv Type Bool
	dict set TopLevelPortInterface pv_deriv ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pv_deriv BinaryPoint 0
	dict set TopLevelPortInterface pv_deriv Width 1
	dict set TopLevelPortInterface pv_deriv DatFile {pid_tb_varts_pidmc_pv_deriv.dat}
	dict set TopLevelPortInterface pv_deriv IconText {PV_deriv}
	dict set TopLevelPortInterface pv_deriv Direction in
	dict set TopLevelPortInterface pv_deriv Period 1
	dict set TopLevelPortInterface pv_deriv Interface 0
	dict set TopLevelPortInterface pv_deriv InterfaceName {}
	dict set TopLevelPortInterface pv_deriv InterfaceString {DATA}
	dict set TopLevelPortInterface pv_deriv ClockDomain {pidmc}
	dict set TopLevelPortInterface pv_deriv Locs {}
	dict set TopLevelPortInterface pv_deriv IOStandard {}
	dict set TopLevelPortInterface gi Name {gi}
	dict set TopLevelPortInterface gi Type UFix_32_25
	dict set TopLevelPortInterface gi ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gi BinaryPoint 25
	dict set TopLevelPortInterface gi Width 32
	dict set TopLevelPortInterface gi DatFile {pid_tb_varts_pidmc_gi.dat}
	dict set TopLevelPortInterface gi IconText {Gi}
	dict set TopLevelPortInterface gi Direction in
	dict set TopLevelPortInterface gi Period 1
	dict set TopLevelPortInterface gi Interface 0
	dict set TopLevelPortInterface gi InterfaceName {}
	dict set TopLevelPortInterface gi InterfaceString {DATA}
	dict set TopLevelPortInterface gi ClockDomain {pidmc}
	dict set TopLevelPortInterface gi Locs {}
	dict set TopLevelPortInterface gi IOStandard {}
	dict set TopLevelPortInterface g2d Name {g2d}
	dict set TopLevelPortInterface g2d Type UFix_32_7
	dict set TopLevelPortInterface g2d ArithmeticType xlUnsigned
	dict set TopLevelPortInterface g2d BinaryPoint 7
	dict set TopLevelPortInterface g2d Width 32
	dict set TopLevelPortInterface g2d DatFile {pid_tb_varts_pidmc_g2d.dat}
	dict set TopLevelPortInterface g2d IconText {G2D}
	dict set TopLevelPortInterface g2d Direction in
	dict set TopLevelPortInterface g2d Period 1
	dict set TopLevelPortInterface g2d Interface 0
	dict set TopLevelPortInterface g2d InterfaceName {}
	dict set TopLevelPortInterface g2d InterfaceString {DATA}
	dict set TopLevelPortInterface g2d ClockDomain {pidmc}
	dict set TopLevelPortInterface g2d Locs {}
	dict set TopLevelPortInterface g2d IOStandard {}
	dict set TopLevelPortInterface g1d Name {g1d}
	dict set TopLevelPortInterface g1d Type UFix_32_32
	dict set TopLevelPortInterface g1d ArithmeticType xlUnsigned
	dict set TopLevelPortInterface g1d BinaryPoint 32
	dict set TopLevelPortInterface g1d Width 32
	dict set TopLevelPortInterface g1d DatFile {pid_tb_varts_pidmc_g1d.dat}
	dict set TopLevelPortInterface g1d IconText {G1D}
	dict set TopLevelPortInterface g1d Direction in
	dict set TopLevelPortInterface g1d Period 1
	dict set TopLevelPortInterface g1d Interface 0
	dict set TopLevelPortInterface g1d InterfaceName {}
	dict set TopLevelPortInterface g1d InterfaceString {DATA}
	dict set TopLevelPortInterface g1d ClockDomain {pidmc}
	dict set TopLevelPortInterface g1d Locs {}
	dict set TopLevelPortInterface g1d IOStandard {}
	dict set TopLevelPortInterface ce Name {ce}
	dict set TopLevelPortInterface ce Type Bool
	dict set TopLevelPortInterface ce ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ce BinaryPoint 0
	dict set TopLevelPortInterface ce Width 1
	dict set TopLevelPortInterface ce DatFile {pid_tb_varts_pidmc_ce.dat}
	dict set TopLevelPortInterface ce IconText {CE}
	dict set TopLevelPortInterface ce Direction in
	dict set TopLevelPortInterface ce Period 1
	dict set TopLevelPortInterface ce Interface 0
	dict set TopLevelPortInterface ce InterfaceName {}
	dict set TopLevelPortInterface ce InterfaceString {DATA}
	dict set TopLevelPortInterface ce ClockDomain {pidmc}
	dict set TopLevelPortInterface ce Locs {}
	dict set TopLevelPortInterface ce IOStandard {}
	dict set TopLevelPortInterface aiw_g Name {aiw_g}
	dict set TopLevelPortInterface aiw_g Type Fix_32_30
	dict set TopLevelPortInterface aiw_g ArithmeticType xlSigned
	dict set TopLevelPortInterface aiw_g BinaryPoint 30
	dict set TopLevelPortInterface aiw_g Width 32
	dict set TopLevelPortInterface aiw_g DatFile {pid_tb_varts_pidmc_aiw_g.dat}
	dict set TopLevelPortInterface aiw_g IconText {AIW_g}
	dict set TopLevelPortInterface aiw_g Direction in
	dict set TopLevelPortInterface aiw_g Period 1
	dict set TopLevelPortInterface aiw_g Interface 0
	dict set TopLevelPortInterface aiw_g InterfaceName {}
	dict set TopLevelPortInterface aiw_g InterfaceString {DATA}
	dict set TopLevelPortInterface aiw_g ClockDomain {pidmc}
	dict set TopLevelPortInterface aiw_g Locs {}
	dict set TopLevelPortInterface aiw_g IOStandard {}
	dict set TopLevelPortInterface ce_out Name {ce_out}
	dict set TopLevelPortInterface ce_out Type Bool
	dict set TopLevelPortInterface ce_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ce_out BinaryPoint 0
	dict set TopLevelPortInterface ce_out Width 1
	dict set TopLevelPortInterface ce_out DatFile {pid_tb_varts_pidmc_ce_out.dat}
	dict set TopLevelPortInterface ce_out IconText {ce_out}
	dict set TopLevelPortInterface ce_out Direction out
	dict set TopLevelPortInterface ce_out Period 1
	dict set TopLevelPortInterface ce_out Interface 0
	dict set TopLevelPortInterface ce_out InterfaceName {}
	dict set TopLevelPortInterface ce_out InterfaceString {DATA}
	dict set TopLevelPortInterface ce_out ClockDomain {pidmc}
	dict set TopLevelPortInterface ce_out Locs {}
	dict set TopLevelPortInterface ce_out IOStandard {}
	dict set TopLevelPortInterface control_out Name {control_out}
	dict set TopLevelPortInterface control_out Type Fix_32_31
	dict set TopLevelPortInterface control_out ArithmeticType xlSigned
	dict set TopLevelPortInterface control_out BinaryPoint 31
	dict set TopLevelPortInterface control_out Width 32
	dict set TopLevelPortInterface control_out DatFile {pid_tb_varts_pidmc_control_out.dat}
	dict set TopLevelPortInterface control_out IconText {control_out}
	dict set TopLevelPortInterface control_out Direction out
	dict set TopLevelPortInterface control_out Period 1
	dict set TopLevelPortInterface control_out Interface 0
	dict set TopLevelPortInterface control_out InterfaceName {}
	dict set TopLevelPortInterface control_out InterfaceString {DATA}
	dict set TopLevelPortInterface control_out ClockDomain {pidmc}
	dict set TopLevelPortInterface control_out Locs {}
	dict set TopLevelPortInterface control_out IOStandard {}
	dict set TopLevelPortInterface clr Name {clr}
	dict set TopLevelPortInterface clr Type -
	dict set TopLevelPortInterface clr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clr BinaryPoint 0
	dict set TopLevelPortInterface clr Width 1
	dict set TopLevelPortInterface clr DatFile {}
	dict set TopLevelPortInterface clr IconText {clr}
	dict set TopLevelPortInterface clr Direction in
	dict set TopLevelPortInterface clr Period 1
	dict set TopLevelPortInterface clr Interface 9
	dict set TopLevelPortInterface clr InterfaceName {}
	dict set TopLevelPortInterface clr InterfaceString {CLOCKENABLE_CLEAR}
	dict set TopLevelPortInterface clr ClockDomain {}
	dict set TopLevelPortInterface clr Locs {}
	dict set TopLevelPortInterface clr IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {pidmc}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project