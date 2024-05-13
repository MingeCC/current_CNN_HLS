# This script segment is generated automatically by AutoPilot

set id 1
set name top_net_fadd_32nsbkb
set corename simcore_fadd
set op fadd
set stage_num 1
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 2
set name top_net_fmul_32nscud
set corename simcore_fmul
set op fmul
set stage_num 1
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 5
set hasByteEnable 0
set MemName conv_1_c1_weight
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 150
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "00111011110100100011110001110011" "10111110001111011001011110000010" "10111110010100101101100011100110" "10111110000011101100111000011010" "10111110000010101110110010101011" "00111100111010001001101001011001" "00111101110010001011111001001001" "10111110000110001000110101010110" "10111110011101100101000100010101" "10111101100110011111110101010000" "10111101100101110001100101100100" "10111101100101000010011010111100" "00111101001110100111111101011111" "10111110000101110110101011000011" "10111100110001100100011100011000" "10111101101100010011100011001100" "00111101010110011101111000001111" "00111110010101111000101111100010" "00111101011001000001110101011101" "00111101011100010111011110100110" "00111110100000011001101111111011" "00111101000100001101101001111111" "00111110001001010011110000100011" "00111110101001100001101110001101" "00111110000111100000010110010011" "00111101000000001010100101110110" "10111101101011000000010100010011" "00111101110010111111010100010011" "10111101010010101101010000101000" "00111100101010100001100100000101" "10111110000010000101100111000110" "10111101010111101010000001111011" "10111110001010100011011101100111" "10111101000110101110110100010000" "00111110010010111111110011111111" "10111110001000101010100100100000" "10111101000001111001000010100010" "10111110010111101101000010100101" "10111110010000110110101110001100" "00111110011010100000001011011100" "10111110000010101000010000010100" "10111101001110101011100000101101" "10111110010000010101000111011011" "10111101000110001010001101101000" "00111110101000001111000000011001" "00111100101110011110011100100001" "10111110000010101110010010111010" "10111101000101111000011000101101" "00111110001001101010010011010101" "00111110100010010110011001100000" "00111110000011011100001010101010" "10111101101011010010001001001010" "00111101111011001111010010111100" "10111101111000011110101000101000" "10111100111010001011100001011101" "10111101101000100100111000110100" "00111110100101110000001011011100" "00111110001001111110011001101000" "10111110101000010110000010001011" "10111110100100100011101100001000" "00111101010100100011110100100001" "00111101101001001100011100010100" "00111110101110101111011010111011" "00111101011100101010000111101010" "10111110101010001001101001011111" "10111110001100110100111110100000" "00111101010110000010111011111001" "00111101111001100111100111110001" "00111110100001101100100101000111" "10111110010110001100001011000001" "00111101001000010111101011111000" "10111110000010110111001001011010" "00111110001100010101010110001010" "00111110100100100010010110011000" "00111110010000000111111101010101" "00111110010001101101100011100000" "10111101000000000100000011000101" "00111101110110110101110010110111" "10111110010011000000110001000100" "00111100010110000010001101001101" "10111100111101010011001000011101" "00111110001000011111001011011100" "00111101101111111010111000111010" "00111110101000101000101110111000" "10111101001001111000010001010100" "00111101111111110101111100010110" "00111110010011110111110010101001" "00111110101001100110011010000111" "00111110011111011011000110000000" "00111110011100110111010111101000" "10111101100110010110011110000010" "10111110001101110010000000101100" "10111101011001100001101111000111" "10111101111100000011101110010110" "00111101101111000001111111011101" "10111110101010100110011011101010" "10111110100100100101000101100011" "10111110100101001100111111111101" "10111110010100011100101100000100" "00111101010111110001100001111010" "00111101100011010011111101010100" "00111100101011001000111011011010" "10111101011110011101100010101110" "10111100101101011110111111010111" "00111110000100110001101001101111" "10111110100100010010100100111010" "10111110100100001001010100010010" "10111110011111001000000111101000" "00111101101110001011010101000101" "00111110001010000111101101010011" "10111101111010101101000101101011" "00111101101011101111000110101110" "00111110010000000100000111101101" "00111101000010001011101101000100" "10111101101011000001010110101110" "00111110100100000001110100011001" "00111110000111101100111001110010" "00111110010011101111111100000010" "10111101001111100010011100111001" "10111100010000111000101011110001" "00111100111001001000011000100010" "00111101001011101111100100011100" "10111110001010001010010111011111" "10111110001101100010111000110100" "00111101100100010001011000101111" "10111101011000101010011100000011" "00111110010000011111000000011011" "00111110011101011101001000001111" "00111110010101000100001110110101" "10111101000101000011101110110011" "00111110001001100101111010001010" "00111101110001000100101010010111" "00111110001110101111001010011010" "10111101000100111000000100000111" "10111100111101010100011110101100" "00111100011110100010100101111000" "00111110011011100000111111110101" "00111110001000001110101001110000" "10111110001111010001000000001010" "10111110011101001000001011000110" "00111110010110100000011110000101" "10111101010110110011111110000010" "00111100101111111110111011101011" "10111101100101101001110100001010" "10111101010001101000010100000000" "10111101000011110101101010011101" "00111101011110100011011000011011" "00111011110101110001001001110100" "10111101100011001111001010101010" "10111110100011010110011001001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 50
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 6
set hasByteEnable 0
set MemName conv_1_c1_bias
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 6
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "10111110011001011011100010001101" "00111110000111110111110010000010" "00111101110010111010111011111101" "10111100001000000101101000110011" "10111101101011011101111000111011" "10111110000011100100001011110000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 50
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 9 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 13 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name in_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_r \
    op interface \
    ports { m_axi_in_r_AWVALID { O 1 bit } m_axi_in_r_AWREADY { I 1 bit } m_axi_in_r_AWADDR { O 32 vector } m_axi_in_r_AWID { O 1 vector } m_axi_in_r_AWLEN { O 32 vector } m_axi_in_r_AWSIZE { O 3 vector } m_axi_in_r_AWBURST { O 2 vector } m_axi_in_r_AWLOCK { O 2 vector } m_axi_in_r_AWCACHE { O 4 vector } m_axi_in_r_AWPROT { O 3 vector } m_axi_in_r_AWQOS { O 4 vector } m_axi_in_r_AWREGION { O 4 vector } m_axi_in_r_AWUSER { O 1 vector } m_axi_in_r_WVALID { O 1 bit } m_axi_in_r_WREADY { I 1 bit } m_axi_in_r_WDATA { O 32 vector } m_axi_in_r_WSTRB { O 4 vector } m_axi_in_r_WLAST { O 1 bit } m_axi_in_r_WID { O 1 vector } m_axi_in_r_WUSER { O 1 vector } m_axi_in_r_ARVALID { O 1 bit } m_axi_in_r_ARREADY { I 1 bit } m_axi_in_r_ARADDR { O 32 vector } m_axi_in_r_ARID { O 1 vector } m_axi_in_r_ARLEN { O 32 vector } m_axi_in_r_ARSIZE { O 3 vector } m_axi_in_r_ARBURST { O 2 vector } m_axi_in_r_ARLOCK { O 2 vector } m_axi_in_r_ARCACHE { O 4 vector } m_axi_in_r_ARPROT { O 3 vector } m_axi_in_r_ARQOS { O 4 vector } m_axi_in_r_ARREGION { O 4 vector } m_axi_in_r_ARUSER { O 1 vector } m_axi_in_r_RVALID { I 1 bit } m_axi_in_r_RREADY { O 1 bit } m_axi_in_r_RDATA { I 32 vector } m_axi_in_r_RLAST { I 1 bit } m_axi_in_r_RID { I 1 vector } m_axi_in_r_RUSER { I 1 vector } m_axi_in_r_RRESP { I 2 vector } m_axi_in_r_BVALID { I 1 bit } m_axi_in_r_BREADY { O 1 bit } m_axi_in_r_BRESP { I 2 vector } m_axi_in_r_BID { I 1 vector } m_axi_in_r_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name in_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_offset \
    op interface \
    ports { in_offset { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


