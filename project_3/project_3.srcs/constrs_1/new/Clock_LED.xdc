## Clock signal
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports {clk}]; #IO_L12P_T1_MRCC_34 Schematic = CLK100MHZ
create_clock -add -name  sys_clock_pin -period 10.00 -waveform {0 4} [get_ports clk]

##LED

set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {led}]; #IO_L23N_T3_A02_D18_14 Schematic = LED0