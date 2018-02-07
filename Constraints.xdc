# Clock signal

set_property PACKAGE_PIN W5 [get_ports CLK]

set_property IOSTANDARD LVCMOS33 [get_ports CLK]

create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK]



#Pmod Header JA

#Sch name = JA1

set_property PACKAGE_PIN J1 [get_ports IN]

set_property IOSTANDARD LVCMOS33 [get_ports IN]



#Switch

set_property PACKAGE_PIN V17 [get_ports reset]

set_property IOSTANDARD LVCMOS33 [get_ports reset]





#7 segment display

set_property PACKAGE_PIN W7 [get_ports {SEG[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[0]}]

set_property PACKAGE_PIN W6 [get_ports {SEG[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[1]}]

set_property PACKAGE_PIN U8 [get_ports {SEG[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[2]}]

set_property PACKAGE_PIN V8 [get_ports {SEG[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[3]}]

set_property PACKAGE_PIN U5 [get_ports {SEG[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[4]}]

set_property PACKAGE_PIN V5 [get_ports {SEG[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[5]}]

set_property PACKAGE_PIN U7 [get_ports {SEG[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SEG[6]}]



set_property PACKAGE_PIN V7 [get_ports DP]

set_property IOSTANDARD LVCMOS33 [get_ports DP]



set_property PACKAGE_PIN U2 [get_ports {digits[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {digits[0]}]

set_property PACKAGE_PIN U4 [get_ports {digits[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {digits[1]}]

set_property PACKAGE_PIN V4 [get_ports {digits[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {digits[2]}]

set_property PACKAGE_PIN W4 [get_ports {digits[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {digits[3]}]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
