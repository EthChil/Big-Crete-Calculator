# clk => 100000000Hz
#create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
create_clock -period 10.000 [get_ports clk]

#Peripherals
set_property PACKAGE_PIN N14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

#DEBUG LEDs
set_property PACKAGE_PIN K13 [get_ports led[0]]
set_property IOSTANDARD LVCMOS33 [get_ports led[0]]

set_property PACKAGE_PIN K12 [get_ports led[1]]
set_property IOSTANDARD LVCMOS33 [get_ports led[1]]

set_property PACKAGE_PIN L14 [get_ports led[2]]
set_property IOSTANDARD LVCMOS33 [get_ports led[2]]

set_property PACKAGE_PIN L13 [get_ports led[3]]
set_property IOSTANDARD LVCMOS33 [get_ports led[3]]

set_property PACKAGE_PIN M16 [get_ports led[4]]
set_property IOSTANDARD LVCMOS33 [get_ports led[4]]

set_property PACKAGE_PIN M14 [get_ports led[5]]
set_property IOSTANDARD LVCMOS33 [get_ports led[5]]

set_property PACKAGE_PIN M12 [get_ports led[6]]
set_property IOSTANDARD LVCMOS33 [get_ports led[6]]

set_property PACKAGE_PIN N16 [get_ports led[7]]
set_property IOSTANDARD LVCMOS33 [get_ports led[7]]

#reset button
set_property PACKAGE_PIN P6 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

#----------LCD DISPLAY-----------
#Digital IO
set_property PACKAGE_PIN R6 [get_ports data[0]]
set_property IOSTANDARD LVCMOS33 [get_ports data[0]]

set_property PACKAGE_PIN R7 [get_ports data[1]]
set_property IOSTANDARD LVCMOS33 [get_ports data[1]]

set_property PACKAGE_PIN P9 [get_ports data[2]]
set_property IOSTANDARD LVCMOS33 [get_ports data[2]]

set_property PACKAGE_PIN N9 [get_ports data[3]]
set_property IOSTANDARD LVCMOS33 [get_ports data[3]]

set_property PACKAGE_PIN K2 [get_ports data[4]]
set_property IOSTANDARD LVCMOS33 [get_ports data[4]]

set_property PACKAGE_PIN K3 [get_ports data[5]]
set_property IOSTANDARD LVCMOS33 [get_ports data[5]]

set_property PACKAGE_PIN J4 [get_ports data[6]]
set_property IOSTANDARD LVCMOS33 [get_ports data[6]]

set_property PACKAGE_PIN J5 [get_ports data[7]]
set_property IOSTANDARD LVCMOS33 [get_ports data[7]]

#ctrl
set_property PACKAGE_PIN H3 [get_ports cs]
set_property IOSTANDARD LVCMOS33 [get_ports cs]

set_property PACKAGE_PIN J3 [get_ports dc]
set_property IOSTANDARD LVCMOS33 [get_ports dc]

set_property PACKAGE_PIN H4 [get_ports wr]
set_property IOSTANDARD LVCMOS33 [get_ports wr]

set_property PACKAGE_PIN H5 [get_ports rd]
set_property IOSTANDARD LVCMOS33 [get_ports rd]


#----------SWITCHES-----------
# HIGH SIDE
set_property PACKAGE_PIN P8 [get_ports key_hs[5]]
set_property IOSTANDARD LVCMOS33 [get_ports key_hs[5]]

set_property PACKAGE_PIN L2 [get_ports key_hs[4]]
set_property IOSTANDARD LVCMOS33 [get_ports key_hs[4]]

set_property PACKAGE_PIN L3 [get_ports key_hs[3]]
set_property IOSTANDARD LVCMOS33 [get_ports key_hs[3]]

set_property PACKAGE_PIN J1 [get_ports key_hs[2]]
set_property IOSTANDARD LVCMOS33 [get_ports key_hs[2]]

set_property PACKAGE_PIN K1 [get_ports key_hs[1]]
set_property IOSTANDARD LVCMOS33 [get_ports key_hs[1]]

set_property PACKAGE_PIN H1 [get_ports key_hs[0]]
set_property IOSTANDARD LVCMOS33 [get_ports key_hs[0]]


# LOW SIDE
set_property PACKAGE_PIN R8 [get_ports key_ls[4]]
set_property IOSTANDARD LVCMOS33 [get_ports key_ls[4]]

set_property PACKAGE_PIN R5 [get_ports key_ls[3]]
set_property IOSTANDARD LVCMOS33 [get_ports key_ls[3]]

set_property PACKAGE_PIN T5 [get_ports key_ls[2]]
set_property IOSTANDARD LVCMOS33 [get_ports key_ls[2]]

set_property PACKAGE_PIN T7 [get_ports key_ls[1]]
set_property IOSTANDARD LVCMOS33 [get_ports key_ls[1]]

set_property PACKAGE_PIN T8 [get_ports key_ls[0]]
set_property IOSTANDARD LVCMOS33 [get_ports key_ls[0]]


#----------KEY RGB LEDS-----------
# BLUE LS
set_property PACKAGE_PIN B5 [get_ports blue_ls[4]]
set_property IOSTANDARD LVCMOS33 [get_ports blue_ls[4]]

set_property PACKAGE_PIN K5 [get_ports blue_ls[3]]
set_property IOSTANDARD LVCMOS33 [get_ports blue_ls[3]]

set_property PACKAGE_PIN G2 [get_ports blue_ls[2]]
set_property IOSTANDARD LVCMOS33 [get_ports blue_ls[2]]

set_property PACKAGE_PIN G1 [get_ports blue_ls[1]]
set_property IOSTANDARD LVCMOS33 [get_ports blue_ls[1]]

set_property PACKAGE_PIN H2 [get_ports blue_ls[0]]
set_property IOSTANDARD LVCMOS33 [get_ports blue_ls[0]]

# GREEN LS
set_property PACKAGE_PIN A5 [get_ports green_ls[4]]
set_property IOSTANDARD LVCMOS33 [get_ports green_ls[4]]

set_property PACKAGE_PIN E1 [get_ports green_ls[3]]
set_property IOSTANDARD LVCMOS33 [get_ports green_ls[3]]

set_property PACKAGE_PIN B2 [get_ports green_ls[2]]
set_property IOSTANDARD LVCMOS33 [get_ports green_ls[2]]

set_property PACKAGE_PIN A2 [get_ports green_ls[1]]
set_property IOSTANDARD LVCMOS33 [get_ports green_ls[1]]

set_property PACKAGE_PIN E2 [get_ports green_ls[0]]
set_property IOSTANDARD LVCMOS33 [get_ports green_ls[0]]

# RED LS
set_property PACKAGE_PIN A4 [get_ports red_ls[4]]
set_property IOSTANDARD LVCMOS33 [get_ports red_ls[4]]

set_property PACKAGE_PIN B4 [get_ports red_ls[3]]
set_property IOSTANDARD LVCMOS33 [get_ports red_ls[3]]

set_property PACKAGE_PIN A3 [get_ports red_ls[2]]
set_property IOSTANDARD LVCMOS33 [get_ports red_ls[2]]

set_property PACKAGE_PIN F4 [get_ports red_ls[1]]
set_property IOSTANDARD LVCMOS33 [get_ports red_ls[1]]

set_property PACKAGE_PIN F3 [get_ports red_ls[0]]
set_property IOSTANDARD LVCMOS33 [get_ports red_ls[0]]

# RGB HS
set_property PACKAGE_PIN B7 [get_ports rgb_hs[2]]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_hs[2]]

set_property PACKAGE_PIN C1 [get_ports rgb_hs[1]]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_hs[1]]

set_property PACKAGE_PIN B1 [get_ports rgb_hs[0]]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_hs[0]]

# HS EN
set_property PACKAGE_PIN A7 [get_ports LED_EN]
set_property IOSTANDARD LVCMOS33 [get_ports LED_EN]

#Alchitry
#A
#48 - T9 - 
#45 - R7 - 
#42 - N9 - 
#39 - K3 - 
#36 - J5 - cs
#33 - J3 - cd
#30 - H5 - wr
#27 - M6 - rd
#B
#48 - C1 - D0
#45 - C3 - D1
#42 - E3 - D2
#39 - D4 - D3
#36 - G5 - D4
#33 - F5 - D5
#30 - D6 - D6
#27 - C7 - D7

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
