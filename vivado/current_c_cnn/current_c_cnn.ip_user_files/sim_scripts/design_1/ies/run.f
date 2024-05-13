-makelib ies_lib/xilinx_vip -sv \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_9 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_5 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_5 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_multadd_v3_0_5 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b226/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_5 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_14 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_1_7 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/c63e/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/ip/top_net_ap_fadd_0_full_dsp_32.vhd" \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/ip/top_net_ap_fcmp_0_no_dsp_32.vhd" \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/d8b0/hdl/ip/top_net_ap_fmul_0_max_dsp_32.vhd" \
  "../../../bd/design_1/ip/design_1_top_net_0_0/sim/design_1_top_net_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_0/sim/bd_6f02_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../current_c_cnn.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

