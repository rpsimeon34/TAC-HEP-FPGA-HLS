
set TopModule "lec5Ex1"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7k160t:-fbg484:-2
set SourceFiles {sc {} c ../../lec5Ex1.c}
set SourceFlags {sc {} c {{ } {}}}
set DirectiveFile /afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex2_vhighboth/solution1/solution1.directive
set TBFiles {verilog {../../lec5Ex1_out_ref_vhighboth.dat ../../lec5Ex1_test_vhighboth.c} bc {../../lec5Ex1_out_ref_vhighboth.dat ../../lec5Ex1_test_vhighboth.c} sc {../../lec5Ex1_out_ref_vhighboth.dat ../../lec5Ex1_test_vhighboth.c} vhdl {../../lec5Ex1_out_ref_vhighboth.dat ../../lec5Ex1_test_vhighboth.c} c {} cas {../../lec5Ex1_out_ref_vhighboth.dat ../../lec5Ex1_test_vhighboth.c}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/kintex7/kintex7 xilinx/kintex7/kintex7_fpv6}}}
set HPFPO 0
