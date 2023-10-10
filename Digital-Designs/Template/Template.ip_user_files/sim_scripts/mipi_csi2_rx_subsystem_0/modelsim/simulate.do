onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_28 -L fifo_generator_v13_2_8 -L axi_data_fifo_v2_1_27 -L axi_crossbar_v2_1_29 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L mipi_csi2_rx_ctrl_v1_0_8 -L mipi_dphy_v4_3_6 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_28 -L axis_dwidth_converter_v1_1_27 -L axis_switch_v1_1_28 -L vfb_v1_0_22 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mipi_csi2_rx_subsystem_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mipi_csi2_rx_subsystem_0.udo}

run 1000ns

quit -force