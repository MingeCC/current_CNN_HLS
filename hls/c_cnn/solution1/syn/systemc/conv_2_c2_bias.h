// ==============================================================
// File generated on Mon May 13 18:06:54 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_2_c2_bias_H__
#define __conv_2_c2_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_2_c2_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_2_c2_bias_ram) {
        ram[0] = "0b10111110001000001011001000010110";
        ram[1] = "0b10111101001110110010001110110000";
        ram[2] = "0b10111101001100000100101111010110";
        ram[3] = "0b10111101001000111110011001011110";
        ram[4] = "0b10111101110101010101101101010110";
        ram[5] = "0b00111011100010011010100101110100";
        ram[6] = "0b10111110000011111110000000001001";
        ram[7] = "0b10111110000000000000000000100010";
        ram[8] = "0b10111110000101010100001000011111";
        ram[9] = "0b10111110000010011000011110010111";
        ram[10] = "0b10111101000010010100011111010110";
        ram[11] = "0b10111101000101000101101100011011";
        ram[12] = "0b10111100011001010001000111001001";
        ram[13] = "0b10111101110110011011000011010011";
        ram[14] = "0b10111101100000110101000111101111";
        ram[15] = "0b10111011010101010011011010100100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(conv_2_c2_bias) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_2_c2_bias_ram* meminst;


SC_CTOR(conv_2_c2_bias) {
meminst = new conv_2_c2_bias_ram("conv_2_c2_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_2_c2_bias() {
    delete meminst;
}


};//endmodule
#endif
