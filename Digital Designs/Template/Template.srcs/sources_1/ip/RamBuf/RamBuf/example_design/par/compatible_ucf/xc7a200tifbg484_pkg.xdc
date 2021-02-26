##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Sun Feb  7 19:44:05 2021

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.sd
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A200TIFBG484_PKG
##                    Speedgrade:        -1
##                    Design Entry:      VERILOG
##                    Frequency:         325.19999999999999 MHz
##                    Time Period:       3075 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->SODIMMs->MT16JTF51264HZ-1G4
## Data Width: 64
## Time Period: 3075
## Data Mask: 1
##################################################################################################

set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_n[*]} ]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_p[*]} ]
          
create_clock -period 4.997 [get_ports sys_clk_i]
          
############## NET - IOSTANDARD ##################



set_property INTERNAL_VREF  0.750 [get_iobanks 14]
set_property INTERNAL_VREF  0.750 [get_iobanks 15]
set_property INTERNAL_VREF  0.750 [get_iobanks 16]