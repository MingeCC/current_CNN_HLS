vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/processing_system7_vip_v1_0_6
vlib modelsim_lib/msim/xbip_utils_v3_0_9
vlib modelsim_lib/msim/axi_utils_v2_0_5
vlib modelsim_lib/msim/xbip_pipe_v3_0_5
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_5
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_5
vlib modelsim_lib/msim/xbip_bram18k_v3_0_5
vlib modelsim_lib/msim/mult_gen_v12_0_14
vlib modelsim_lib/msim/floating_point_v7_1_7
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 modelsim_lib/msim/processing_system7_vip_v1_0_6
vmap xbip_utils_v3_0_9 modelsim_lib/msim/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 modelsim_lib/msim/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 modelsim_lib/msim/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 modelsim_lib/msim/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 modelsim_lib/msim/mult_gen_v12_0_14
vmap floating_point_v7_1_7 modelsim_lib/msim/floating_point_v7_1_7
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b226/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_7 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/c63e/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_1.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_1_c1_bias.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_1_c1_weight.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_2.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_2_c2_bias.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_2_c2_weight.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_3.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_3_c3_bias.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_3_c3_weight.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_4.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_4_c4_bias.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_4_c4_weight.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_5.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_5_c5_bias.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/conv1_5_c5_weight.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/max_pool_2D.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/max_pool_2D_1.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_AXILiteS_s_axi.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_c1_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_c2_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_c3_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_c4_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_c5_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_fadd_32nsbkb.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_fcmp_32nsdEe.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_fmul_32nscud.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_gmem_m_axi.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_p1_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net_p2_output.v" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/verilog/top_net.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/ip/top_net_ap_fadd_0_full_dsp_32.vhd" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/ip/top_net_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/ip/top_net_ap_fmul_0_max_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_top_net_0_0/sim/design_1_top_net_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_0/sim/bd_6f02_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../current_c_cnn.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

