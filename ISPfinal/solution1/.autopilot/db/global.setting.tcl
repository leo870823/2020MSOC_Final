
set TopModule "DEBLUR"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 1
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
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c {../../proximal.cpp ../../fft_top.cpp ../../divergent.cpp ../../deblur.cpp}}
set SourceFlags {sc {} c {{} {} {} {}}}
set DirectiveFile C:/Users/leo870823/Desktop/MSOC/2020MSOC_Final/ISPfinal/solution1/solution1.directive
set TBFiles {verilog {../../tb.cpp ../../tb_files/ground_truth_R.txt ../../tb_files/ground_truth_G.txt ../../tb_files/ground_truth_B.txt ../../tb_files/DeconvolutionColorPrior/REAL3.txt ../../tb_files/DeconvolutionColorPrior/REAL2.txt ../../tb_files/DeconvolutionColorPrior/REAL.txt ../../tb_files/I_blurred_R.txt ../../tb_files/I_blurred_G.txt ../../tb_files/I_blurred_B.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY3.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY2.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY.txt ../../tb_files/DeconvolutionColorPrior/DENOM3.txt ../../tb_files/DeconvolutionColorPrior/DENOM2.txt ../../tb_files/DeconvolutionColorPrior/DENOM.txt} bc {../../tb.cpp ../../tb_files/ground_truth_R.txt ../../tb_files/ground_truth_G.txt ../../tb_files/ground_truth_B.txt ../../tb_files/DeconvolutionColorPrior/REAL3.txt ../../tb_files/DeconvolutionColorPrior/REAL2.txt ../../tb_files/DeconvolutionColorPrior/REAL.txt ../../tb_files/I_blurred_R.txt ../../tb_files/I_blurred_G.txt ../../tb_files/I_blurred_B.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY3.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY2.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY.txt ../../tb_files/DeconvolutionColorPrior/DENOM3.txt ../../tb_files/DeconvolutionColorPrior/DENOM2.txt ../../tb_files/DeconvolutionColorPrior/DENOM.txt} sc {../../tb.cpp ../../tb_files/ground_truth_R.txt ../../tb_files/ground_truth_G.txt ../../tb_files/ground_truth_B.txt ../../tb_files/DeconvolutionColorPrior/REAL3.txt ../../tb_files/DeconvolutionColorPrior/REAL2.txt ../../tb_files/DeconvolutionColorPrior/REAL.txt ../../tb_files/I_blurred_R.txt ../../tb_files/I_blurred_G.txt ../../tb_files/I_blurred_B.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY3.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY2.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY.txt ../../tb_files/DeconvolutionColorPrior/DENOM3.txt ../../tb_files/DeconvolutionColorPrior/DENOM2.txt ../../tb_files/DeconvolutionColorPrior/DENOM.txt} vhdl {../../tb.cpp ../../tb_files/ground_truth_R.txt ../../tb_files/ground_truth_G.txt ../../tb_files/ground_truth_B.txt ../../tb_files/DeconvolutionColorPrior/REAL3.txt ../../tb_files/DeconvolutionColorPrior/REAL2.txt ../../tb_files/DeconvolutionColorPrior/REAL.txt ../../tb_files/I_blurred_R.txt ../../tb_files/I_blurred_G.txt ../../tb_files/I_blurred_B.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY3.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY2.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY.txt ../../tb_files/DeconvolutionColorPrior/DENOM3.txt ../../tb_files/DeconvolutionColorPrior/DENOM2.txt ../../tb_files/DeconvolutionColorPrior/DENOM.txt} c {} cas {../../tb.cpp ../../tb_files/ground_truth_R.txt ../../tb_files/ground_truth_G.txt ../../tb_files/ground_truth_B.txt ../../tb_files/DeconvolutionColorPrior/REAL3.txt ../../tb_files/DeconvolutionColorPrior/REAL2.txt ../../tb_files/DeconvolutionColorPrior/REAL.txt ../../tb_files/I_blurred_R.txt ../../tb_files/I_blurred_G.txt ../../tb_files/I_blurred_B.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY3.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY2.txt ../../tb_files/DeconvolutionColorPrior/IMAGINARY.txt ../../tb_files/DeconvolutionColorPrior/DENOM3.txt ../../tb_files/DeconvolutionColorPrior/DENOM2.txt ../../tb_files/DeconvolutionColorPrior/DENOM.txt}}
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
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
