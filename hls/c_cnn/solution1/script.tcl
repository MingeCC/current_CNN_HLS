############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project c_cnn
set_top top_net
add_files c_cnn/utils.h
add_files c_cnn/top.cpp
add_files c_cnn/pool_core.cpp
add_files c_cnn/load.cpp
add_files c_cnn/conv_core.cpp
add_files -tb c_cnn/main_load.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 50 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_schedule -effort medium -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose=0
config_bind -effort medium
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog
set_clock_uncertainty 12.5%
#source "./c_cnn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
