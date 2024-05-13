// ==============================================================
// File generated on Mon May 13 18:06:56 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_5_c5_bias_H__
#define __conv_5_c5_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_5_c5_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
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


   SC_CTOR(conv_5_c5_bias_ram) {
        ram[0] = "0b00111100100000101001100010001001";
        ram[1] = "0b00111100011110110101000011111110";
        ram[2] = "0b10111101100001010011101110000101";
        ram[3] = "0b10111101110101001111101011000100";
        ram[4] = "0b00111101001000111100111011110100";
        ram[5] = "0b10111101000010100110001111111000";
        ram[6] = "0b10111101001001000010100001101110";
        ram[7] = "0b10111100001011000110110111001010";
        ram[8] = "0b00111101100110001001010010111001";
        ram[9] = "0b00111101101000010011011000011100";


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


SC_MODULE(conv_5_c5_bias) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_5_c5_bias_ram* meminst;


SC_CTOR(conv_5_c5_bias) {
meminst = new conv_5_c5_bias_ram("conv_5_c5_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_5_c5_bias() {
    delete meminst;
}


};//endmodule
#endif
