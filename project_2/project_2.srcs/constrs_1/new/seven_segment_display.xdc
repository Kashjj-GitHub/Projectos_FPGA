## set_property -dict { PACKAGE_PIN ___ IOSTANDARD LVCMOS33} [get_ports { }];


## Switches
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {switch[0]}]; #IO_L19N_T3_A09_D25_VREF_14 Schematic = SW0
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {switch[1]}]; #IO_L19P_T3_A10_D26_14 Schematic = SW1
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {switch[2]}]; #IO_L20P_T3_A08_D24_14 Schematic = SW2
set_property -dict { PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {switch[3]}]; #IO_L20N_T3_A07_D23_14 Schematic = SW3
set_property -dict { PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {switch[4]}]; #IO_L21N_T3_DQS_A06_D22_14 Schematic = SW4
set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {switch[5]}]; #IO_L21P_T3_DQS_14 Schematic = SW5
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {switch[6]}]; #IO_L22N_T3_A04_D20_14 Schematic = SW6
set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {switch[7]}]; #IO_L22P_T3_A05_D21_14 Schematic = SW7
## set_property -dict { PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {switch[8]}]; #IO_L5P_T0_34 Schematic = SW8
## set_property -dict { PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports {switch[9]}]; #IO_L2N_T0_34 Schematic = SW9
## set_property -dict { PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {switch[10]}]; #IO_L1N_T0_34 Schematic = SW10
## set_property -dict { PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports {switch[11]}]; #IO_L2P_T0_34 Schematic = SW11
## set_property -dict { PACKAGE_PIN W2 IOSTANDARD LVCMOS33} [get_ports {switch[12]}]; #IO_L5N_T0_34 Schematic = SW12
## set_property -dict { PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {switch[13]}]; #IO_L3N_T0_DQS_34 Schematic = SW13
## set_property -dict { PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {switch[14]}]; #IO_L3P_T0_DQS_34 Schematic = SW14
## set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {switch[15]}]; #IO_L1P_T0_34 Schematic = SW15



##Buttons
set_property -dict { PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {button[0]}]; #IO_L16N_T2_A15_D31_14 Schematic = BTNL
set_property -dict { PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {button[1]}]; #IO_L17P_T2_A14_D30_14 Schematic = BTNR
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {button[2]}]; #IO_L17N_T2_A13_D29_14 Schematic = BTNU
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {button[3]}]; #IO_L18P_T2_A12_D28_14 Schematic = BTND
## set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {button[4]}]; #IO_L18N_T2_A11_D27_14 Schematic = BTNC

## Seven Segments Anodes
set_property -dict { PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {sseg_anode[0]}]; #IO_L9N_T1_DQS_34 Schematic = AN0
set_property -dict { PACKAGE_PIN U4 IOSTANDARD LVCMOS33} [get_ports {sseg_anode[1]}]; #IO_L11P_T1_SRCC_34 Schematic = AN1
set_property -dict { PACKAGE_PIN V4 IOSTANDARD LVCMOS33} [get_ports {sseg_anode[2]}]; #IO_L11N_T1_SRCC_34 Schematic = AN2
set_property -dict { PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports {sseg_anode[3]}]; #IO_L12N_T1_MRCC_34 Schematic = AN3

##Seven Segments Cathodes
set_property -dict { PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[0]}]; #IO_L13P_T2_MRCC_34 Schematic = CA
set_property -dict { PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[1]}]; #IO_L13N_T2_MRCC_34 Schematic = CB
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[2]}]; #IO_L14P_T2_SRCC_34 Schematic = CC
set_property -dict { PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[3]}]; #IO_L14N_T2_SRCC_34 Schematic = CD
set_property -dict { PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[4]}]; #IO_L16P_T2_34 Schematic = CE
set_property -dict { PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[5]}]; #IO_L16N_T2_34 Schematic = CF
set_property -dict { PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[6]}]; #IO_L19P_T3_34 Schematic = CG
set_property -dict { PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {sseg_cathode[7]}]; #IO_L19N_T3_VREF_34 Schematic = DP




