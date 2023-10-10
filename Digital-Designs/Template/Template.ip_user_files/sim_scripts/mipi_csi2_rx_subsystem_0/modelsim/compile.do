vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_28
vlib modelsim_lib/msim/fifo_generator_v13_2_8
vlib modelsim_lib/msim/axi_data_fifo_v2_1_27
vlib modelsim_lib/msim/axi_crossbar_v2_1_29
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/mipi_csi2_rx_ctrl_v1_0_8
vlib modelsim_lib/msim/mipi_dphy_v4_3_6
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_register_slice_v1_1_28
vlib modelsim_lib/msim/axis_dwidth_converter_v1_1_27
vlib modelsim_lib/msim/axis_switch_v1_1_28
vlib modelsim_lib/msim/vfb_v1_0_22

vmap xpm modelsim_lib/msim/xpm
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_28 modelsim_lib/msim/axi_register_slice_v2_1_28
vmap fifo_generator_v13_2_8 modelsim_lib/msim/fifo_generator_v13_2_8
vmap axi_data_fifo_v2_1_27 modelsim_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 modelsim_lib/msim/axi_crossbar_v2_1_29
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap mipi_csi2_rx_ctrl_v1_0_8 modelsim_lib/msim/mipi_csi2_rx_ctrl_v1_0_8
vmap mipi_dphy_v4_3_6 modelsim_lib/msim/mipi_dphy_v4_3_6
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_28 modelsim_lib/msim/axis_register_slice_v1_1_28
vmap axis_dwidth_converter_v1_1_27 modelsim_lib/msim/axis_dwidth_converter_v1_1_27
vmap axis_switch_v1_1_28 modelsim_lib/msim/axis_switch_v1_1_28
vmap vfb_v1_0_22 modelsim_lib/msim/vfb_v1_0_22

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic/hdl" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_0/sim/bd_639e_0_xbar_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_1/sim/bd_639e_0_r_sync_0.vhd" \

vlog -work mipi_csi2_rx_ctrl_v1_0_8  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/mipi_csi2_rx_ctrl_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_2/sim/bd_639e_0_rx_0.v" \

vlog -work mipi_dphy_v4_3_6  -incr -mfcu  -sv "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/mipi_dphy_v4_3_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_3/bd_639e_0_phy_0/support/bd_639e_0_phy_0_support.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_3/bd_639e_0_phy_0_c1.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_3/bd_639e_0_phy_0_core.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_3/bd_639e_0_phy_0.v" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_28  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_27  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/ip_0/sim/bd_639e_0_vfb_0_0_axis_converter.v" \

vlog -work axis_switch_v1_1_28  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_switch_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/ip_1/sim/bd_639e_0_vfb_0_0_axisswitch.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/ip_2/sim/bd_639e_0_vfb_0_0_sli.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/ip_3/sim/bd_639e_0_vfb_0_0_slo.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_fifo.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_axis_ycomp_dconverter.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_fifo_ycomp.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_YUV420_DT_Demux.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_YUV420_DT_Mux.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_YUV420_vc4_mux.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_YUV420_vc4_demux.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_YUV420_vc16_mux.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_YUV420_vc16_demux.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_fifo_yuv.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_fifo_sb.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0/src/verilog/bd_639e_0_vfb_0_0_axis_dconverter.v" \

vlog -work vfb_v1_0_22  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/vfb_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0_core.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/ip/ip_4/bd_639e_0_vfb_0_0.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/bd_0/sim/bd_639e_0.v" \
"../../../ip/mipi_csi2_rx_subsystem_0/sim/mipi_csi2_rx_subsystem_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

