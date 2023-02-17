// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Feb 17 13:16:35 2023
// Host        : aleok-epictop running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/aleok/Documents/programming/CPU/CPU.gen/sources_1/ip/memory/memory_stub.v
// Design      : memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module memory(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[8:0],dina[11:0],douta[11:0]" */;
  input clka;
  input [0:0]wea;
  input [8:0]addra;
  input [11:0]dina;
  output [11:0]douta;
endmodule
