# clk => 100000000Hz
#create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
#create_clock -period 10.000 [get_ports clk]

#Peripherals
set_property PACKAGE_PIN N14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]


#DEBUG LEDs  UNUSED FOR NOW
#set_property PACKAGE_PIN K13 [get_ports led[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[0]]

#set_property PACKAGE_PIN K12 [get_ports led[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[1]]

#set_property PACKAGE_PIN L14 [get_ports led[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[2]]

#set_property PACKAGE_PIN L13 [get_ports led[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[3]]

#set_property PACKAGE_PIN M16 [get_ports led[4]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[4]]

#set_property PACKAGE_PIN M14 [get_ports led[5]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[5]]

#set_property PACKAGE_PIN M12 [get_ports led[6]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[6]]

#set_property PACKAGE_PIN N16 [get_ports led[7]]
#set_property IOSTANDARD LVCMOS33 [get_ports led[7]]

#Alchitry
#A
#48 - T9 - DE
#45 - R7 - VSYNC
#42 - N9 - HSYNC
#39 - K3 - disp
#36 - J5 - PXCLK
#33 - J3 - green 0
#30 - H5 - green 1
#27 - M6 - green 2
#B
#48 - C1 - green 3
#45 - C3 - green 4
#42 - E3 - green 5
#39 - D4 - green 6
#36 - G5 - green 7
#33 - F5 - red 0
#30 - D6 - red 1
#27 - C7 - red 2
#C
#3 - R13 - red 3
#6 - R12 - red 4
#9 - R10 - red 5
#12 - N3 - red 6
#15 - P4 - red 7
#18 - L4 - blue 0
#21 - M5 - blue 1
#24 - P5 - blue 2
#D
#3 - X (LED)
#6 - X (LED)
#9 - R15 - blue 3
#12 - M15 - blue 4
#15 - X
#18 - X
#21 - X
#24 - X

#IO REVIEW
#Alchitry
#A
#48 - T9 - DE 
#45 - R7 - VSYNC 
#42 - N9 - HSYNC 
#39 - K3 - disp 
#36 - J5 - PXCLK 
#33 - J3 - green
#30 - H5 - green
#27 - M6 - green
#B
#48 - C1 - green
#45 - C3 - green
#42 - E3 - green
#39 - D4 - green
#36 - G5 - green
#33 - F5 - red
#30 - D6 - red
#27 - C7 - red
#C
#3 - R13 - DE
#6 - R12 - VSYNC
#9 - R10 - HSYNC
#12 - N3 - disp
#15 - P4 - PXCLK
#18 - L4 - red
#21 - M5 - blue
#24 - P5 - green
#D
#3 - X (LED)
#6 - X (LED)
#9 - R15 - blue 3
#12 - M15 - blue 4
#15 - X
#18 - X
#21 - X
#24 - X

#display control
set_property PACKAGE_PIN R13 [get_ports DE]
set_property IOSTANDARD LVCMOS33 [get_ports DE]

set_property PACKAGE_PIN R12 [get_ports VSync]
set_property IOSTANDARD LVCMOS33 [get_ports VSync]

set_property PACKAGE_PIN R10 [get_ports HSync]
set_property IOSTANDARD LVCMOS33 [get_ports HSync]

set_property PACKAGE_PIN N3 [get_ports disp]
set_property IOSTANDARD LVCMOS33 [get_ports disp]

set_property PACKAGE_PIN P4 [get_ports pxClk]
set_property IOSTANDARD LVCMOS33 [get_ports pxClk]

set_property PACKAGE_PIN L4 [get_ports {red}]
set_property IOSTANDARD LVCMOS33 [get_ports {red}]

set_property PACKAGE_PIN M5 [get_ports {blue}]
set_property IOSTANDARD LVCMOS33 [get_ports {blue}]

set_property PACKAGE_PIN P5 [get_ports {green}]
set_property IOSTANDARD LVCMOS33 [get_ports {green}]

#GREEN
#set_property PACKAGE_PIN J3 [get_ports {green[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[0]}]

#set_property PACKAGE_PIN H5 [get_ports {green[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[1]}]

#set_property PACKAGE_PIN M6 [get_ports {green[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[2]}]

#set_property PACKAGE_PIN C1 [get_ports {green[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[3]}]

#set_property PACKAGE_PIN C3 [get_ports {green[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[4]}]

#set_property PACKAGE_PIN E3 [get_ports {green[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[5]}]

#set_property PACKAGE_PIN D4 [get_ports {green[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[6]}]

#set_property PACKAGE_PIN G5 [get_ports {green[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {green[7]}]


#RED
#set_property PACKAGE_PIN F5 [get_ports {red[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[0]}]

#set_property PACKAGE_PIN D6 [get_ports {red[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[1]}]

#set_property PACKAGE_PIN C7 [get_ports {red[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[2]}]

#set_property PACKAGE_PIN R13 [get_ports {red[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[3]}]

#set_property PACKAGE_PIN R12 [get_ports {red[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[4]}]

#set_property PACKAGE_PIN R10 [get_ports {red[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[5]}]

#set_property PACKAGE_PIN N3 [get_ports {red[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[6]}]

#set_property PACKAGE_PIN P4 [get_ports {red[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {red[7]}]

#BLUE
#set_property PACKAGE_PIN L4 [get_ports {blue[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[0]}]

#set_property PACKAGE_PIN J5 [get_ports {blue[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[1]}]

#set_property PACKAGE_PIN P5 [get_ports {blue[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[2]}]

#set_property PACKAGE_PIN R15 [get_ports {blue[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[3]}]

#set_property PACKAGE_PIN M15 [get_ports {blue[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[4]}]

#set_property PACKAGE_PIN M14 [get_ports {blue[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[5]}]

#set_property PACKAGE_PIN M12 [get_ports {blue[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[6]}]

#set_property PACKAGE_PIN N16 [get_ports {blue[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {blue[7]}]

#Serial Connection UNUSED FOR NOW
#set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
#set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]
#set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
#set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

#Bitstream Settings
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
