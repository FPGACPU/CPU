// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Feb 17 13:16:35 2023
// Host        : aleok-epictop running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/aleok/Documents/programming/CPU/CPU.gen/sources_1/ip/memory/memory_sim_netlist.v
// Design      : memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "memory,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module memory
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.70645 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "memory.mem" *) 
  (* C_INIT_FILE_NAME = "memory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  memory_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20416)
`pragma protect data_block
pd+g4BB8qUiU5rdUuHN9HH1yiefMGZjm1Z11gs6i2TdgGWUi2VUU5sE/pEFXNQISJqK1zOETFYzD
FDYFr6WyPeJOaD/3ThRC+hQ65xNKumhRb4Zui3Lmp9sTc3zLnRRvvZQ0ELZHyo3/OyHS8bakNAd9
QWUYCS5EZgLlwfVwiBRmC0aqFzB6uP6TH6vG9rYONBbIlC8rt04HhcfTWORM1Q+Al9EyJUS8VROw
FrK0dR+33BlpvtkO6qQAuWuXlTTjIoraFgkmp6AgUupMrc2fgVwML6wIUUOAXK0uiej0GGOHBi7W
lghGAaSXdbJx1ACmyRD3Qs3q/++SIyS2ckEm4zqqyVB7aoqAPySw2DplCX6WD90yJzHGGoBRQrYk
vtCPpZ5VO7BrSN/YAM7GDUWuYpPmlrdUs/QlUppW8MpBVXf3Pc5tibxhkLFoZUttyZxcRa27LvcC
fyzmrz8Gpu9DJ9qppdxbPyh9YjV7VukPCWVYZz0MUHoUkge83XU/fhEhVgpa6rD+Zaf7RSOatciN
qCHcTz0c1rRIKMrJubO3bZJoICMOPMgqolFkEuQF0vxcn9jK545p6j8T8fIoBLIECNO3O/XG2LWN
ilQ2drndSNXu6LaglO/k802DYu54UAXHRAalYm44TNj6eIm9HHRug07VtXsd/kTwORG+Y4FkmTPo
AjiQ/FXLkSFQ2/Qv9STk1rGXNUQ/toUAvajPMXjczT1wCtvv5e09TOX8Ob8BeJ/NZbUeLvWhTphX
27jHQnjk+eWsbfRN8dRYmzhdyN/rHmeui7M66PCsn4qp2jgdKKMeU0TqCx2id2HAdyZXGp7OU/Jj
AxHcVeAPwGueOUVkW+ZI0dOd5XEOyS+ZB8tASN9v5zqV+K9wbxIhsuFKB5/9MXMIl+drrp9v3jwH
W7bQvcoHRbrKKBod/i/iTlJX1cj7QkQraBFwPX7TAVdniCRh5iLWKO0Kb3C+F93UwCKeIigCh+WR
UYWa4e+YWCj0GZ7+VBfybvWEFSQvg3ATKGL0xkBtIOcv/ssdQl5k6FbFmfjXWEKXqR5bseOL4y7n
U77C+dM5K7t1f6fH0cwxoHo83asAnHC8iN/E1XNKxpu5dCgmyZvrXe3w2/Oy8zj107JL/v52CXUU
q+k9o6xxoDLcDXtv8KrrAaRm+646rZ1OBDYsfNYj0LjwEAR3PysbhQnCPcRVz7AHlX4qBRkgWW90
sO5Lr3GPd34fLx3jOxZhlE5fMAZw39Yifp9WaM8WVrsgf056+Mtb2trJt95FBjKZQJjdTZJt6JM/
m464IjL9IsGe05FAruXsgl0kmddqStFCv3cb/ltvHgtB/ZFq+aIHl1ZnrY7NRDvLAblnqIrfLnRh
03a9bL+v5AZHE2RZJ7+TQ8cLt7hbi6JSc6uAme4bC5efIWOsY9+JhpQ7Z0/tWsSvo0awW+XwwfQZ
iRUUeAU2yI208kjycYTT4VBSaVF+SbDVo2OXQe880TX8BjCa/egUEbtS49mR6i19oGBU0J518yjj
Uuveglpaxtp+CHURS+rCtdRQNMiZbLalbflasGnoE9eiL61m2BMocx4SZTaE07/eXka5tmqjEbyV
Y7jNmD3/K3TvXWT6c2m58/gRtseZe4rUP9NvIFc2SnrC9109OpoulEkgip3cWt0nwM9OLgzRSXhM
SIv16iB4frFnpoJtuNTJOH5MJLygHe1msDr4JwQpoQYg+/BV5KG5IBBoAaJXbkj2X/LFGNlPXAXj
/s4ifOadjdhSBCnbcXTxnvmNoa+Y0TFHNyGGBZYL/9twq4W1ReMfuRxKpR9oOb1c4+XJiB36wKqg
DcjbZstpI/emvoZTSV1v2GVMms8zwefd2Avib/ctVGTdjJjNKmEWQwHgv2OYBaX/hTsqr0C1GJx6
+oZJQQaP9GaLpnEmfURblYj0ubZmeCxEJD5PE3tLScprwt6UvBAeNU8CuAOPrauUw0RX+JvHMK6U
mpI7Ekg9TcPjnWUuLy27dgSSP3k0AEfPhHsGkwI08BR3ratCmnPX1Ie18FzTXvY2SdeAwTnRkjWQ
yatWD0fpSW+ww9pxo9M2BZPHMS6Gm9eW13EGvmZADis/KqZsnFw3nSryMh8RxfImjCDbsIU0k/7p
QcIFy1UoFbegiwX+sGrASFEsjCzBvv1R9l+FVS21nKx33vgrd8+8HWEi3YE0OaPSg7ubdAHHOamn
HUJ8iXnjHPgbRKijyDoVVi9dtdlMBAati+km96OtdfjefdrVtWQjNfIRTWmLpFim3WrW6Or6Srqw
frFd+RnffBicvgKG8Ym7rnZxCPTiXPXXf80//0nVKtUqyLBivq/LUjEPrHvgVWVOlAkAOaX2iTDJ
Kpil9xBvQJJ6XpAmzlYxT6YocCrdj6ZMpq7TP+UleP4Tmv4ntRJWFMOhKjegDUpiScZg1jMKDSms
AMJgZEGPraWo9lTW6ZHy62dB0Omo+//Z2OBsBYtR2CEPCL/vu744lg78d99gzrSYq+x1zQWdHz3r
8Dllu/SdRQ/HGjX7G4xBRQdGN6eMgDDa/gXy7Ho3YFMhi7ujQUDiGi1aMcELsCKM4CVXbIhK9Fcj
nheGTMf44BGMB4TmP27UpcLhe80ku3S3t/b7oI0YTlEm77KTyJMiqbJ6P7Fnm6or5X7hFaukWnF9
kW9t5zsvdW9fSJ5e63HWI/7TyVaz5BA8UpM8F2A8s5PovwRl9yRTKREq4jCctCaJDkT7xrZL22Ty
HwxvO8pF5eLggIw0lSr1/K8n7raV0bQvUYjk17ZNWvElCwSjlJDMFvshog0I7IbOhi4WjfIqNG8V
K4xkgw7A2xcGA2aG/fR5h7bxvicfzkhgBA154zvKXQrXlidKZK+7kBy1X2THQPh/cTdTa5EsgYWK
JeySRqVuAne5SlN/aovvQc+qX/UJ/T0mth434Ej82r3utDFghJCEPnnBhaEr4ehzuK2ZWmLmvvgN
d6m4JSmAiG/z8cAgueLorNsqrm5wGOmPqHO8lm59gz5fzq29KNUMfvjMqlDajiHNdQCWCvELZ347
xRs57hsSy44GdIpMwm04sn4N2yrVR/gf8HDh5NtA25W9Lj+r7Agnh3gxhcADc382waLJZ7LsV/WG
1Hqg2tfqxPw0qiAxYFDhA2lEgLRO4uAy/HJJJougrpVvXoXJ7BCruH8jBNe9tKP6JjJIURZ8eRLy
PcwgUXyU9lJNsrCZW6hp5M/FCDrvfsi+2BeZFv/OegPzhMRW665hpoRP4knQk/eum3B+hnjazth5
yoju3+WIZBVmoCotIcBn6j0eetYTVO0ASYDK/A2eO79KUF9KAeNlvGhhsSa/MdjkEBIOOxL6TKvz
UDEk5SPFtk7MXwk08gHPvMJHQCvTdlum9h1K9bKREyaVN9H3nQsYQeJEuKagmu3iAeq9U5tfoRv7
DkDdWuv783tB/1n/Kf0sZEmGFk8k7tLO/qhy9Gt9BCqa3Yv+D24+l5l4HYAk1L9oXgRfSTAw+D7/
Dti8VrMsMUBiSw1JRh2e6vdniuGcm8KvYdjinVw0wgI08cyqsswAT5WMObBasTjliB6qMjYH1zwr
GeKs/FTMZZ2kyLg+6N55yvqQiNdiX3/zE7h4AjREB9baEQy/rbcb/UrdHEoUTFfvcsBKLT52bC6D
8aErmP5nzMfGmXEbNemLpmPHnADMEg0JESO3zZ6XlqqguAvxi+oq2vxJsii9jwnFYB2E6ybKlbiY
Uzefp8zRTQjxFKIaGUoZopVaO1lIrKAplBVSmEXxHZi6HoBA2EQIsDk5F6N0mqyE9HQaG88QXcxH
gNU04sVUBV4DST4+hFOx0dUg1JpXUWgnTKpQlvs2fqNImrHhJkVjmgousDgW8LIs+m7KdMWo3oVL
h4K7mt+2WcnYaPQ3n6g1cXoeSF1ieaV1lrVpEL9m6imlwXD5mXgqapIm/b9hmuZIey8U9GvAicFe
Xnnj8eyC8m1XD/usc6BOrPj5SJR5OL1Vgw0x0eWY85YiJilpKsBRwSQ4jY7qt9Xe+xVUSYpdF3u3
cqTaz+fS6QUczRLZGgLXIKutybYyOYiPxN1bGqGbMI1nVHjVBHBY0/3Kekf/AknAZ2KQpZvy+Kos
dvMu4v35UKYVS6PYzKXtmFi3VQn7bUvkxeZFZ7IRC2+cpEvA5k7NGOPOlxKbNV3lDsWVNveyAdzA
aK5FU9QKthfGktmGEYa83vH/EP1GGvOiTvmAYNzIelAUs2d75pmV1T+3Jluq5Pv/OA6a5Wg/0aol
fBIVbUEVC8HgLWftZrjp/HwwKt28jpcTimgSK5Pn4yUES/Ldm1OGSx23VGE8t3abtSBkKt2F2ni1
+lBjcN+py+c8e2Umah4jCbuaOMWmM3/im8EU6eDbRV4B7usDIenn9ZF4+tmJ8d1fD9djmPgGHMdi
hae5N8aDdVRp2/jv0BmFhc7cnrBDRktMa+hA3mlhtuJCkouJ0x2DLnIopkHN/aBGAMQ2+Nc0xb1a
TYWX/p2u2+zbjYBgqEvQBaW2FrK2hRNAHuUC9y5r34XS++LeKRDARfiwY579t+tOtvnBbqY/OxV+
kK4xI5Wxu3RrDAe1Wrq8XFdEYCOESJXrwzcGxW9YNyhYqJXz+4c2WWydefBT97QZ0y9O8nnXAT/q
AUrHIgQhC/LMkEj2VreVwmcMfwjjcP/IB++gKLnYrXzU3NKv04DbIJ0vg9qm66NSyUWc7LjG2U0U
PWHhg4Fb7q47gFLKtXIB2jxaLaydVKZ6MVGyAnvSdfLjiqxlCHaBd+ZHGW8l4mtWVvaVdOmOhJCX
EMvZYZjeM4+dyaSU0pxC7ntb64LOlMa8XbHbKuflLPsvR+Zy7B7vPRAtDBDRtvW1dy22QRDBiOPk
JMnmwqixa31kwEFoUH+qk/9JfaBA+iPmIT4wOpU5hlSxrViKnqVw4MhktFF0fvj2LR53yuN3p3tX
e0+fXtiQscKoVnDIET8LWD7J3cvcAUY22+kE3wtpFW98/9ygjbcVCbjLaGKygjibbYw80dzINzQv
CutjDaXG3V4DjsIVFu8PhfL5bCvo4p3dDRUlOB6zDqy3Sol4MApfT+Is/XIlRxvyxK8O5MLHv1A0
Im3eqjoyXtcUHWLANjg+qVU6DTfrbQl21kgGEnfKNx4NDGjXvohZ7yy0ERhJOhTUExEG852n5+9F
f6bQRrk+mwZxoCnILopYRbdqrSihBYsAIzWXZWukYZL4/CpgjXZKVDunQvPnNrLtNJqMLgAgBK7t
FU8epQePz3245DdpaT98aCrwEaXWxj6Ta1xaKtZ+BXS+cwlBYxFp7slET0rSelY5NANYVP2yemAl
URcIvd5MvSJDplyP/2wUk/Xa4G0w34JfFS9t8oJBrHS4ZEV6ZDR/nz1iehC3blW47hmVNIiceqdQ
agKMix1il+8Ql/MJWz04RcaMFpbQGr6ZA2yaXyRKQRscw+9dz+D5X8XHPVlJdZsM1521E3OBNTC4
MsYxR+IiWGg8qNL0fLf9JHtM3rAWN1JGDPPo9N7qwsAjQdAzZvTGPlvasK5l8ggoAXArPIdOpKQu
QIrUP1qmQFMKxjtOvGYNDmYu+yEc1wIT0dZpEbmTtiGP4XL9nW2PfMDEqV9V10DXmIY8TH97Cgi+
sun+VBE9+H7RY+NMPxeqFoCE3qgNQDza6P1wozqATTZjbv5vZp0OCy8Whg6Z3W5GsI+rt4Gg1u9I
9dZsxdl3yJz9urlmJY/QxbE9l/M5jEgwn2ND6wtDzurvgBBj4NgJbxlqrXKQdPV6cdbu3YvrBybX
Rc5dVwVLyBgog4+pQNwbH5Wp5sMwHaxq9EZiimwV4T18LsmNEOs4xSbVSmDPelYIov3QpXSDbGeA
pF4vkfH/vnr1MbtxiW1KbO+nSGMC6y+jHeoy2Td3CaAgsrj7WS3kKxqjpSlo11Iz1U8n3lOthhRQ
hqRg9/FdRRv+4O0D+pv0wb8S8tkRhmUf+Rb9MMHyBUdfxo1kJyzvwPUCW9rEhXNrqQnKf3cu+2wF
5Xw7PsdWfXR776eIONSY+acNQPUmlaFBJHpRDP5HT44ZEYzolwCCHzRWAsexIurk27l6jlIyT2bJ
UGsvmU0RpxNZ3otvlyCKfqR9ygZLf1akh56P7CDMzZ/depP44eWLR505xGCoY5351cPzX9SiooxA
C2u1Qtwc1WuHirndDjiIL7bWCKDGe3tX9UawEjwdZ+UyQ9qgGVj1Z5d8g8L/x6jCZi6NgL9aw/io
8fX3re6pqr0SaaIkxSyIVlXzRM+usVcAdhXPVLPWeDPo3lqbLiabXFHrDPxv329q+zJ0SqxuJ2+R
B5BapSYHSdzbbLm1P1RS+eUJPrLrrN7mpyEUvp9QqgpJkTv926H/l8uQSlskNBTFfIInaZZREey0
nfdFkV/jM8OTSWABI65Dv3Gd7hCVc0x5FA5Bj7mp5r3NOAzdcGMYv35a8sB9n4mJUpeMR5XSA7vF
8cfdeELvRomOZapVYwPTIMq7uDL1yLxp0eeOQzIcCbctilxTAFD0PijZZFurA7Woo8xeEdRy8/fm
0UOXr6Ufflgz3ZGmUJVh0h2aX+6L8BYmZVaClGlIsKXDrV/M3+5UlGckZhf/qBD26lhrDzFudcw8
wuhJiClbp79mK7KoZ9C72GLyknORMPvdiOxWP0zwGiy4a50k8r15ZLdaBlallgQ/Wpo4sPpijdcP
qv92hl4fENiyMkZFlREYyBzffWN/4tNCNdnTgd7GqfoxsNALjkDK0U4k6LSfazE/vdyLhgjct31n
7uKlmCV6OtRXNstef0yfbOXdg1AqOUgIN3ylD+810PoMsdTSkexwpp+kHkkIcW0LeW7A9ysgZqH4
iL4qDHWn1kYhTxrvhoo5RChkk3U01hT+juXt0Az/ZO10DgOmtPmveM/Kc+gpadZ9Gl1qAMyEB/bE
2rk6R+TnBEuMaaNAVKw/yT1IwXNQewTrx97pkueT1QU+4PBSDgoLHSPAUBCeF/H1fRnFoW3UNqC8
5VsKOXqh9FBbL+DXc4pakgUztuvvrBcfjkMAAXD4ET2RSI9vUsyLV5mgYP0Ik7+4yCKtsSBfFa3R
fddbCX561DiAd3NO0rdC12YjB8BhkLPkQ93uaKhLjIuZMF1GCFAWtxJ1rzAnfuxzwZCpA34/xTG4
ybeYgAAOk4h+m075wusGkXqMPoqNzcfdbZy6D5DY6NgskJhXsYpzVFZbQmqEWanJZghilrZ6T229
1KOSpFG2oXFZw7yg2fGKyxTxC8TqAOp91/o5XUSdYwq4MR4ktGV5WmOokVklOzugk7350npChkXM
K8baGSM/z1ffh+DBz2qi29unVSLsKH6aPRGfgFiAHwe1NvMCLmgB4Pvm01EZgP7AQ33+u+GxbhiD
91wDDPidMCRpAfp8R+z4bVHA5D2LU/1WCiFo6YwMTg3G2Z2gpdgq/Mrbh0SiptatEiS8REq9dHcW
fBDVp45N/QD2ivW56yADo6lmjYwIDGCClN3ljaIEUUHrG8TYtPInhp9NOR3I7MDc0IIw7RfKWPuN
8AZUxUs7ILTmcPJkughe/j1Uq7Bv/9puAz6l7iWe2yeIhtAC+5PNmhOdBnDho2ERjC13x/0PlWP5
HFN6t+g/rVZlDAiHS7TZ66r+iAVPYQbEKaC5NBbAzsSYodOcPhatR6Ddp45DKTrmPEEev0/PNedS
pz9IIhBkQnSzapYl/vwiXaTrCWJRDeW+rs7IDlw9jmh2R+W+pXkw7qRVTTq8FGIusT+Kvesr95fw
M6GUgsioOotGcP/6SBuCNm43ZiBskRMv72XP43aniW0WEfhRnq1NWdn6nXX4LP3FP/y/uv7uI/Mq
1iZrnQC54s9ylhtUbQFhEoyrbASvu6XkcvGSPl28gXe4viphZrPI9/ynzrWz1mBSKn7CpcMjMnfq
DZ87eQhH0AQ+9GUE0ZJOg9v5lpiuHTTeJw8jZuA6OQ+GxGcqa5jI5NNDnboN76yZKUiPFS2YAOhQ
sd4ZdIid2B48q1lU0XtSodk3880uSQt39uJln12VD+1MlvnYKH1GMf0A3igwt5c77OkA7H3j8BuX
9Fe4CTH/Xpg+L7PMvvT4rPbtaC8Di+QSOBeOsnsRcQfwpddaeRdc7ve19yQrmdNvewWoubdPOZ9k
vqLLzUl+hfsh8Rjct9yrsh0wmMd6yXSk8RgUF0bDU62Z249uNxvsNpe99q6NzQpnaEl7keWe1lub
Ck2YU38GM95KWOxpPgNESC81M9G8t7yRnuohPEb+CusR5HbcnGPTCbai86SgPFqvpJM66yNSWZ3x
e42Qpebjjqaj/tYnUWa9tDB2nuFpZT9dKo6QOn8De3h1fPABWCQK18q7+nRTSfZl7eZHcO/uuAQv
jpqYAchyvDG1QZs/EtTKII5fzcdPkiDThqRDU+Ss0TALjOrrK9nMopeWUqNlWrmar/ctk6gl1AX4
pqSE6o0GUMd8dkL8okkjiCTS44iUf+T/Z2Iik6zrmSM4PeJ000cVVKB/YZLZrNDraIXh8fcboxJ4
XElr4SBRLdqVyUSLZl0Cq+eNdgiNo+hnxUPtRm9kt20Q0Dh/VV9lMFRMxLCCxIyrm2/0ozUXcwHa
KBesbKANI6uh2fjFf+lQDBGqr2b4YOyypFtBkMh0T1uxFVBTiITkaU0QfClHiNjatLPuHdw4pSKe
XBPG/+w/mR6fmh1IzJZnqUR4ehyBbojWqAcM5yQtyhbww13BpUvvKQwuZGCT64bJ4qkHjIV9BJ9G
fjjSeFMflfkEvzJZLI6IU4RmBR9rDH51ooEalUH/e/D7lF7RPxK922/0Xnq+e7bte5aNtvRTYG3o
+eYNgmD+dH6fm+dVlJqKRc5w873hSR9PlDQOxK1HrhBw8FViSrWkNQfDP+zbonnTcc1OIxENyzhy
IE6bJ/EUrlKgQMd+KE+L8WhXEX4AVjKay6t1NS8bkAQN/47Di2Gy7m+lQ5GsL4bACZ58DypJDo0j
/LQRbRhREodCuQmxU/P5dooJKxsKubUDnG8si7vN8vgYrxwP67CT16xdwu4tFC1SXfRDJqRVKfZ5
oa1gebQFaq+EpeLRGay5xRV0EgCczC1X9Y9gZHigGdTnTGaKZyv13b5gsgAmSTftFoOCUEk1J9/l
9dHJ53o+LKpXjtXNmtdZGYccGd2qFDUQ0G7b9FveDnARsdDjdgaSgwORBJTRooQ5X9r//ZoD7S1W
otMyltrnIJhgPG8iKR2N/hi6S8wbwhFzh/kSeh7e0OqYQSMxw1j6GWYPBf2pdtfvuwuxU7SzW4YA
KLXwEmngtvJiE3WDZlB/FDnG2sHIIsysNMYXCaJVTb4iGbtgVZrnclUW9JKK80VEwZ31eYwre8bG
TtmLCIEUMVxZBTyesl6hXxx8rzDyDGZHfmWGlZ8IXSgN5qITXZ+DuTZbrhcBy/GubHNq4RGbvb0Q
6Dr+dlEdDlTuV/++JUaa9J+quypNndXxSeDlBx+SqmDKttQp09GJW7KSyUrlomiyfjf68mQaAay8
BNrFY8Cc4gixp02LDrd/gvYiVhuq+pYHn1Bc2jLNpIQcJimfnPoRTJZ5TtxKCAdGUPhprefmLi5E
w43Q1YEFB4MdwuDJd1wQIYV6giTPRz1jupzADGcxthoyHMUK65/z8rXlXsNFoV7xs+plpWra9/kq
0FVXe0K2lR1puZooRF9hW3mVmXrJOzJlIZ6DlhgmgTNsGCEz0tg6ewBWv3/xt0uYF0CnN1Bwv+pp
JmrrkaAW7dA2BTZYvP+jQ3lMq/aVWttYHzS/2PyU98V/hDQREh43Pyr7vo/1VffuPJkSLoiKZCjD
91Ar+pBqLn2M0XGyjyELExoEEmKrZfqbdKAlrYHl640nTXaencISHteeIO9LJMdGfP7wpYYiiSfw
aKed/lCWOl+nFVIFWjfOoC1WydXLl7a9mItPAu8dvoZ341sg5EYr1bz/5OGKZxWqPDNJnpNiQYbZ
7wkHQyTawo9gWEgQthLCQiMgaRQ1qHa/qhNocVTlKCizeeWC5iehiGchwaz9G5Ig2TmjCqjSbo5S
iHD2V+G9Z2La6xWjQpEk5AjfOmmqBqacCyNIOgP9+L31PUPPK5YbOdHKL+2PXFGY3WmEbRGO09jl
i0e/elyX4b5o8Es+Ix1+8Qc87hFG6FZumhFBQeeNkOOXN4wPTGyjVfnOmV40hlFpNRaAlL6Nv4zm
mDmQk9d4KzEVJrX9PN59Z42My0CIvqZkIY8e/lKdApSvs3+RQqp/KEngHhhvpsuZFFXb1gx4E2Yi
NO4P2c8vt5eTGOhUNPStO2mkhFELhC6+ZV8C+7oFI9B2AA50gMHa1svV1xwtsFpadecGJEn+64rx
0cG/PcvnPkAxg8sNf9vLH9XJ3GL3q/J8hUbUwe40+c5+XIe8dT7PxexNcJ8PhVM5fiisN1/3ezUn
ml9Ou+0KPtkfFjsz1sZ7e+mcfHNJv0of1kWDO4CRR+8oqIoFECefOn9BaGtCrYafaT2G5h/icT3W
VLqjFotaY3wa9yEbmt2QyLfNN6mgBYldrrw+9d7kcbLq3zJO7mXQjxMStSorW8Zlv+YHTu5VnI31
TyNzy+0EmS6GhV/gwg86oXGLuY2W6C0k9LuKjkbF+QFlO+d1Wt43KPCBMmjmNhpEywA8eYOGlbY7
7nE98EnUoxo5kE5cbBfoIoy3hyxklkAWVT7wjRFlXJ7RhVpBNjD68Q7E7vWuMySSj01vIOc2ScWs
VrzMqJOG5If0TI5g7aYG74mSrDIv7eqJvvLNyQ3ioBGo6J2nC6XpO1bOEHEC2pI8CwMUAvYuQjVr
Vg+r16N0v0+kGDSQcteURoSafnYit8qq8fsk+NEy1pwb61VtDtLDEIo1kU4Fx/z3WtJAaXaq5hdA
KgjJ0LK40SL0N7ZGbbLSSrQJQ9iLBiiGJLokmrjZU8ZPYyTnImh4Y1UC9wXYKP2lkR1sniBJJIlW
MwCpx5tzrNDh8kGxjXFNKESPT/TEGAdg6k2TKje1wJ2CXXsyLmUDOnQDnVFjYDR/ls8dXgFZfu6o
n6wPiRNKpwcb9WsmyXp4M6MS5912+Jn9GfyV2IGI41SHDkfHTOAychDXm3SAlUNOccz/xu4jH7vN
qqie/Fl0qJ6SB9j078OnD08X8E7XrWtR8dtFOTUjcKegUZN+l6wCnvy48XxJk8nzt6bEYyKEatWT
GG9VvAuvrU6xteAKOLfUvuJoAXGCt008Xd84ZHB/vvVNO8zMY7OzH9sYvFyLx5QzPtdapliO0RTI
At5rUj6dj7mfCIxJqH5lB4ogMfm6PbpuolRDU1Kxpy5iu4XVFN+d3SZh9vX5avfgi6c58p40+FI4
q5tJKTTk3dFjnJiPXWqK08RVn+S8ZsL26OULNxmkLLFD9wkVMmk1l0TKda5LsLJZv+S9CPqvzFKj
5vCbt7NNSNFgBH3YBmeT57v8PQu+5Ms63b8xYmbenDImB23N9rENlgy2mQSmByJ1eLvJXTJQgfDk
YVNAx+M8/Xzif7AfY89kJuMMChET/V2bCstmo1H1y4HnI0Bye9uHimeO2J4tmIyVtaPlSPLnyXfE
7JmKmaLgVmYSUdTmrf/ei29bsjEEaM1FmsyPA7Gqy1na6d4x+I/T+fPc/dF6ogCqoi8qhFxGtFKo
0MXXAHa7emBl+ycmVzm6cdpLRlyfXgsWsEQ4c9P7k9Hq61DvJK5BQOS0pcCP/lZLCHPAiZitGG7m
y4TwGqUULlqqCoM2FOXcTZ0tbuEPfAg1LOF8t3Qa1jxRffy2lu7LbQT1EFf6ro3hacN2n3ShVzLD
B4IfvLikyuPGoTvHWJrkegFUn/8Fa09Z40v1PuHqMRrtKAURdo9gorMrqiCJV/YcUhGoRpCh5muJ
3YdNv9ioNrOcCfO2cyUHDwnHaZIHf7pIcR3DYs3eWFPcTaeCwnhg2lw4RGcys1sVQ1ILz36n6RD6
iEZCBoJbQvMLcdJZY38TE8lh9kQcR981crTc9QS9i1Q3eX/hqDhPqIByJ7tPBz3PhBUuAz+iishP
OZCclsI6mr15a1n2SRLXIGmDsLERLpxgoftQhckwQg+6JRu8up4sy49yFmdDXNasDiJy0H1iNGHS
A6iPYBw3PX4KgfZuLvMxGV7//aDBlcumVS7JsOA4n7icZWCDT8HSGC1hl0YrcCm4GgkMBPGAorkJ
Mkj0afBaZSW8hYmc4J15kKpl8k71Xgp0jxyBrLdgoug3wBKUPZPJA7AxQtVMddkeRxBe+Lj0SWCf
W7ViFyDrCqBHQGqbuTbgQOZmXw1ts9EZ3ZxI+2/TwxiHebSoXcyZpsARu2Hy8hgP7vCwBx9UJIm6
vZFJQW/KliwEnyhMdg56kxRHCcIM8kXudXaxc0PMn3bQedMe3IODfL0SASuzOI+fXPNKxTrkqNV2
24tSj+PP5oR65eYN9rs5OzY6kULcVwQy+kkTX2FPfKTOtsx/d4vTEceQ3bMdaj/m+46bXstov5+j
hzm0OlbM7VqufzU3rI2rlD96FlzwcWIiw9Dd8c/JDrQH2YNGU1OfnKch5ywCsSNOK0Nw0Wm0xTQj
FJd9Dh0q+DNYE62XXKhnEIKu3IBTA9A4Rp1yWgLXytIzfXjV3/7Iz7fDKgQI7ruwvoanwepL4YUR
vB7tXfDaY7eM6zqHYuVbx3KHIvlxN0nFJ9LHXrvlt/lzaQNoiL7xCkX14D1aSxkIa8Jvc/xiDdnI
47MqH+1NdzoWmJGSfCotUund93JuCAQvw7otKdYGpRXRNQfRghidOQUZ0ngugUrhQgQ9VVZKa9ZA
RSl2uEvc6MVqTP5tcR2mZXusm1fE3DX1MorPAfxbQNu492gMkKYM7mOcMON2w2Q7Y1yYFpPtbl0B
P8yGsf6Rr2CwRJ7ZMFuuR58t5SOgaKN/N3fLVFqu8w88hL/+ximVXgMQhk5w58kz41+EmJBFszg0
kl68KiPxNJ30MVO62+DeItt+d/MJQtdLSo7shkBVlk620ir+ITJNmSzIYPcCh0ihfgnKYu12uJwL
pqOrS+mB7nchKnTIzWXIHiH32wWtNcIjjrqPjeYtebVLQV3IvzsZAZNfJKOg3p/pC1ruJU/iqX1n
GwW/R4vquxPMi3q2jiDqvlJDOd/dcqRShBPV3jR9hScazpTvgsJ3KdjZJtmx8SFiPuCYP0tXUTY8
DnvxXQ8/Avlkv6wuJYyThNfChhcKFrfWoW/YZwjc/gaJRMRdmZatIbg1d1q9f7MhadDvg42kGTM/
uPfN1Ts5FJEhca+/cQ9gheSeg4LFashSGWFmvhMhFy+QhfiX1OKqtvtEcQfyLjrIT5wK8qOhzZ78
XG+tk+ZYILRB2TfAPs3DU/z2hrj+jM2YvU3Wy/pBDLUWxaL8dRxFQdR/wj3CI+hoAfWrGvz73gSN
yivvAiZ8y7IzkTtrNI5akzfdU43bG+TEpAXJ+MmApDrb0NPPtOtCRmN3j6hKNJHUD+jEAeAy9yfn
KqM5YctuOzG9O3mh4FonjZA04/0MGtE1HY8kj6m98ip96rQ5QRDL9S3OxRBBE/v1ylRgOyd3KGi5
v2WZdfkt+ceVSlhNQH1uuRZqTcjF0m2gfWYss40rEaRnar9q90qFutzcLiwTKD51sPA5nWSie5ou
qcTZTzQiAQkUwv9nT7iIU+ib9C8TnRvEdIqy4YZN6YFhK6OqxLJzQnmB1eCI7w/g/pQkUbzb4c+R
ax41AqqvwHYfOy1YuiJxzR5E5mCJgXES1ATzzYsp5Q6s+KaY4UJAu28dItA5A2GRJgP+kYGZ2y/j
8WCEzsKfH7AC5NNKqtSDlS2KAmwFJ4I53Csbucor9v8lv8sS6HZsIOwYhpTpzfLXqlMkS/FJoudy
oTh68XILiEv0AEGRYqzmiSw4O/MSwyKy/Ighe89Iea2fuhOR4OlrdyRNeKn9pa+g2VoXJ0JmK32u
Jg9BkpH6PzRWWmWU4qZBkK+2n8zqfd8ecyOsWw3PyuacWDY23+SuPkBfPCDAw2+fT1d1zZUk2dho
y8pngfFrEb4uktI8gsMkyW74Q3GFdQ0VjjdRm1YQ3Xc5vzlikLQVlSpYOUqRAZtObMWUtDvFw+UL
tD6LtY6RxAwjhZKqG2NGdiKi+ex6MVZuAce/l4kMmDyFYtBw13pXDI5ca+8mRdMDSbB6LCkqktdL
+JNWslK4a28/6sjR4d7YsLy3253Y1Qu7SdqR4UKzIJHiqjBjkJJjBP0YcyQJSeE0Oh7IW2vl+Ffd
IgOp1pNZPKGNDeJlxFpa0iusLsrDpu31MZX0oGgSjdtfOuSemXRhJlJNemwVOcfxPnWTBEKEOdRl
f7wmdXLQ9ccb+I0T928L3Rqg1sLNQqm8qI58qnoFQAYJSs2rtwtxAjrgrvYvQNkIpiZGFg4ejI05
cTMMJQgSy5rhKKkTocHT6umZuo0jMoVUMkp09iDRcHQejW13eGkQmWjRr7ypuHFL/1/La56Sm1FA
qnuvtpNR0Vde4qElApyDP4Vu+Mh34nOIHe6YS0uxNOrik/kWzLbKuQ0X/is0GqaUWovjntiDJ1pm
ATzxpLvMHY0JX65g1Q+lyq94aOOaHMbDvQQCa54xDeKpTvvHWGFwYcByOs34HurEHphq1lxuccMf
R8YWGuLV55fa2C+Px+lcWh6ZD+lyoTgk8z41BW4aNIJptgi3QBqLhY8oAfUBxPeTtpqjx1iGKrgD
116moB/qt3NQevfskOnpVn/4ktIRuGwHiDGeWV7sfwOFoN1kNVs5PXTeDQtL/8olVMIOUtavTEVf
ot9tk8Rl2BcKbtEYbJkkoaHjwSN0t9wF6rqVhheltFFpnxt+6940+V69NdCziTiN8L+1krjla72b
K+8C+t9/YD70smmDwW+N/lsCl+h31aqQwgnMAeReYBg+RtYv/8uq5dgFXnYNZgLFFR6QOkPGSZnF
+j2xOvHe4iuKXuA8TDvydywqAZzNbdKe/44FEBJAn9kJoxzaPoeB31FxeE6WUVz6oafR5ciPh6qX
bZWdrA5KK3CP2cbMp1jR5+ZbG9RwAbFopbaeRt6x+K24mwhohYd2aLsDbvQW6U1MXQSW7Hvyef8u
TPM9vJCDMYY8O9T0v7qer4hu9uRxWcnxhTJba2cTyK0ikgwhE7d2eq0QpadnE1a/2WnHuHt7wCVF
646c+4uruuEpBxCAWyqEMHPE+zAvsGDZDC9BrxcxqmHTQHafBYLvxZWZ/NRUGDuuXzWYATX6E6BP
KZN320+48AuQ/8YgBm53m8/26+ordQl0Wn4y+g3+pu7/7KjAwZDC80PGUgvGg8zDwVzkx42y4Wve
i8A9+K8EFFV6Yy9tzFF5UFV37vv9n9Tg9nC/wa7D1wxZ5RGMNyZRVhS9d7UmvtQmselTVWeyC8Ak
2Ayhc66u+kK0rjFwc7lucvLuyuHknGyK4wASCwtS2MT/tY3uhAS0ygshqkNQNtJvJYtWAf4Ue+a3
2k8+SBfitGhsivQewATPmmreRfFpq1GTXUvlhvmQXz+TibV25fXvh/QXDu/lmr5rBbgkeiHe57UH
/AK9pS2uDwPgT6nkyaXrGGUrNqB4FMsRvvxLEPQLGI2fIqwncAbH2fCR48CO3O0SKpDpOBbufa9k
83NwoZ3C/Gu2Vfkh9gRNE7E3C1Ug7SQi4QYl+3OchWzFL3iRfc89y1YbA2sA+rBrvU1uJ9EvjLxq
FPVrvzhnaKLWQYDvd+MLi9TV5TvJrd49FAHpF7TJp0cFgQFhYGC7WiXxBXuxA3Rm3PZrsgB9RrYr
H5y3QjjGwgJlTIbzk1M5b9CpplfAosgM1Me4sF2TxAvD90+YuU+h24lHmemH4kF/Nvb7omNTsONT
40DtnNVFhrTEeQDkxAFrDahAAxLwhwrlKg8rn6ttl7xVRodnsH2iwTMBxg2pOSgX+m207moBmPAs
BHQvYXMIy5RElmDM0gN2w5dc1LqUzelzRoH4w7GeDEpRkn8/4F0n2mHHkVV/zccYbsgzLfWXCEnU
5FPBkvDjRl6OUtoAzhntCJK2Djyl1cMMgfl+9tFMSbk/346osWws7viT1TG0N7gpMBnG18YeXK7g
6cu5u/6wSTRnA4Bf7tznJJdMfRDR3zQEnG5/fiSmN6imxttq9EEtWlWj30ZOO7J1Gh1yb+Oq2Jun
aY+P9+uHatWQGM+DBklNwQqaebGyKK0h1N+SFEk+WUgnZh9fmeEsoenDtGqbAgwBqxMnpHg4Y13V
BA91V6bdUSzUG8THbXPxKrjkzXX0EOnimiyMXe9xfl8TRX6on0bSeBqGG5O53B/lveTPxd61j7As
2jIRCnP/+DiRnhu9BXQFnA/bTYXOostOiO8ff9ho1cUP2XQvkKs9vmiBi0JGuE9fKqAJSI4L5Otr
20Ec9fEu0i49LvOi6PAFXQFjGvAkd8YFfrPdrA3hM9AVK5vFX5CRXSdJydlLfdEHaF7sDdS0XC1q
1DCC5Dc5rvfDFD+zhOv1JQX4M0cQ80qwm4gqn1CsFb4/vzHTPw/Vx4n9LcxwroR5sLJZBa9CTceX
67l+J1Q6sMBC9rWRFSmiDyKHGRYMscoiASA+kK96m26uEVpj7mqQmzTDo6dsXP/RDWrDPCcaUgZQ
uo9udiQ6j86XrxooV1H+d+5c9+Awf+PcZq6XEKqbfpH8bWov0dFGfYl9BMDomqn0quyJmJPXGLTs
NvHocuYInXja9tFiwlomC6lTD8/UUePETwj5yhOIT5RDBHmalrCLL3i8DmFLhOnGQtTXxJsZcSfy
iTxfZs7RFonsPzwfPcKMSkTG+rlSt3HJQgevmQ2n+vpO+U7Pw9ijhwT7Kx2O3/VLZ2sz5/bmpmaV
o1VWpukInQcdEUGbPDBVvpf4mR1PHA4ddcT7i7+PlzYyqOirjDEQ3LxQ6KsmBtcwV816GdEJta1c
/WZ7SWlbc6XSwyBVFY0p1UmTAImDx6cqWBQprlANKLC9Au7tpxtrY8gC4eNx3Qr9YYwo6Yy/LL0G
Y3AI6OBID9IwpRLbAYSYKz8inFRrgD5hKtpwNgpL79ITdidcnOSzxlf3M3TY4WG67fPZMvBw0BUV
oIRSdqwT9+kD9/GfzdYdy1Cm163iKi/TQWc4OcB/BVVWNEVNh2fEjSLO8QEsO/7Qd5bKrkKXrdNv
ynlxVA+y6vNgFKLbHFwVri2BA+GIe7LHKHl9WLasDzlSxINSs5c8AOo7BiXmNK+CxFCKlWt6Mxdh
OkIecX1Mot74syLR1ydBdzmJdDkfRbG8QnZb391V06Q7TyFvKubZolq7o4gdS+mobyqON3tnQfxC
dQF6y82C46fu+4xwKO0RgC3uT1XuQXvCN5kDmX62DhsqPns/pOquxGceGiecwOGYUUMGqJlTG7LK
ItailZjzMxRj0t8C385s/UYvx9/DtxOYrwejKFSko96ederea/k2QQYG20jdy4z2+nH2PUR+HLJi
L33p82pFv3OihVmjvJBodHs32O3JdExqcPpdFxUGXZUVf1Tb6jmvrudgUUQQIBCe7NDQpOdYp+XJ
Kowru09hwT+NdDXZeCp3XKRZIE7CSOCARBJ0bGSo9yzheOxnFztmmS/9Ru9jPlYjz04cgfHV4Oyx
lavV6G/9Gs/4AWHyTCe5CARj7JXSwGo+8Np2OgiEWTzaztYK8QT+ZkNLUaNQMy2MdqtbFSAz3Eop
jCWKtNta6XCIedqlstxV6T8a2dwP6LMRrrEnBV5IB+jruvAEotT+Ge5t9I4Hojpfd1OOX+uJxsud
E1iLsY8+BxPyBjJ+5/r4jV+hFvTIpFfE5UQqqOA8xWiITbveHyu+zE0PBVuWVNcr1GvB0tKOJxPg
FbvktR2QAboj7bIe/r/SxPJWcN5OvkGs+rrXaBv5BaiAZRRZlzfeYJXQE8jV+jLJqmj88oola/9Y
DkoeGr2KAJg9WFSrGyaZZHiykFVkYkREEklzzb6jTbg5HhBAA6Mh98tp6SpDfrpJYzTmSGv7humN
84NhCY7IEuvRLu5Vm1+DpeHN3oblqsmHnLbZSLJVT3nXjiGvI4CCjDAD2iaicU0KuegWa2UlnDQ8
uPyHSNN6ktahMTpvqefvu6YcDww+gEXzcqo9vkweZc9T3Fm4xz8Pj2QwxrBKLyzsF+csdwVjaKLX
VY7T7YuILao8UhtVQkTMhLJ+ahE2gweF5qGcH60+QfwJjPkn1vZVJwIeb3Rm1NSV0F7kogP5YhLJ
OZTGd34O0qrHpb5X+Gf+goMEDBKiy+d7O2izt7JSsIlTt8Qeok50P0DZQkA4UFqDUmMlnes7N4H2
3y8cyPh2MKuNlqiQc5E39544OP4poRjDS/UOfORdC4VvtaInoUXaE8dfsvF8e0a1vCGx9nwDpQwM
ZazsG5JF/lVDTRhH0DF6Z3C8InWxdNQX56VYGOwWN99wP9QSmLk6PvMBla5WHr/Sg9jMtiSgjVh+
Z5iczTmcOG64iVHUVh5QVn7t8Rx1GruMO1EumONDBl5GsGAIz6ng3kBgGxCYZ3/cvf4cPIaT3wa1
JJs9UkOf1Ko41SXroQ1JS2B545Hr4w1pu21TaQEJztLPjbAzCYv1fO2eM8GSmhY0eXlWAd3+2eLC
h6v4vwRS5TThxi514yx6AXHIHo+vYzk2wT2bTDVqEPgjxKJyD4D7Tx7lwEteBqYnKDilXf6Kqsfe
ExHWXH8g7N1M52x17XXXpiFYgmegu8BZvfzOXmGP5jTu7HD0rkO8bH3mY+eoR3foOIvO0Mkcwy5d
ea5SRQSVGE3uP103gK/hUwC7SKVuMFfuOuSHrf94kteL3biVqsERRKrWe+jMagX5v/ygupO/KrY/
U5jgf9n5RNn4WWamiksuieLSFA0vTYnIAKm05TMfEqt45WKhq9fviWcH7ttgfvGNEG92MTyU+6VP
V1hosBBBs7V+VJHTMFFJ8JNaQjDsMj90y186W46oL40ESyfnO6fX8ihJz8OZcChL9UE9k6VMwkc1
GFWu26lS0GHNDYMg33w6PNxqwtEHJfYNTCGpGDGsa/acoIpnOuU4URh2QRvcYi5OnON0/qf9RwPx
b+z5DE/AwK7pkzAGOPDxYwU8maq7ryhk42I9ghs6oIT6DZpEx/9DPQnT4NUn38VwfHpdSLFAF7EU
M4VtyekC016C3cdfUnAdT0O7zNNkpWgolfF0gWTVpBOv93LAdmhaBJ2siFMBJ0/yR8Moe5yzxQoh
zq2e5eEkGQuQ0O8Lrl4O/oAbBa4BV9hBhR7B/EA+vwind2vzWGjCNG4DwlRWg3ieeas1wSVjEjHy
hecAqHf9C9edwenCX456TDOebO6arjJ/rEcZYkrj+YymqkHn1sFR2gieLfMZASaqe3PcKgDOAdtH
CQfiBxnpCfVYY6HUkClSWSUxCkok/9W8sA6Vy17WBFa9qyVvovSMpBcA/AjWoaRCBJkGhJk3uF0U
1uNQdvL5z6bTp1JRb1wPo4Kqv0Kzx3/ngZFV4Re/wta2B6EiiDVweFt+tIbbEc4VIwS2E6NjacVI
OSPpxaDuDiclhhEpimiwYpDb7w35hBx8ILYIjeqoEBWqQFTyCEtgTP1dOSYdujIE7UW/6gq0ciWz
4SvUAq+BvN6drVehVvF+0UaQdHYm1V1URv76FoB3bPDvEEc80Sf1tz4O9T2uHCBM6wPaP7HQ2gA/
rlMBQZUVCdtoMmzc4cbXnACOUZ8nxIj+g0OWMvFcTJb/saPhOYf+DFInSAUOy5pEXHy9mOU6v9aF
x8sLc6/XVRbD+Oa2Kk3hk8xDaI+w0VRfudHXOPYZOausfGgTychExQS/zpd7k7brwro8218Jcg0K
WXEhV3BVnwoUFmboICwtRM/bYK/OJLNDX22NlROhnB3Go28ND6ce7IR7CRtPPN6j5r2rMGy2MYli
W7+/rITYxLME7pPPB3yPNM/CCG/bmYpjM1QH7mcEzK2wtoTVRZrRXzHWlkAUB/pG3/v62+mdU2Ll
sOuZ6m+Gejh+V8aO4ltXsathCzYQwemiC4jB+nmbyBJb4hsj6mXdg8zoHLU4VH3ADUM9aArtYvNZ
PTKpqF8+T84IXGhNN4R1UM4raFQxjsQeByeV8UlGSEyHtcj8bD5P/d7pADeBibv4J23EIv9TSLHz
wxGQnpPZ48KNq09j/o01u81bHhzOPahKLaYIpb2qguvozP/QHHretMh2cQn9H5MhsYvs7zrIPaiw
myakA7io0N7Xu0dAX7vP3Zfg18M81aRBbP5l5DqISRHMsY7nMhKgnluIxsIC6PKEoObLgHFPm7Pr
7BIF+VZwFPeKeqE8H8wuokxMfh/4hRh3fBpF8fmYcRKj3IdWuRhLCYabwsvmebMVPQN7ftCbLbNV
r9Jp/PSz6guIA67sWsOyMVzi0bbIDp2eyy+BZX0X2fXYx3t9uXlK1PJAXNI5PBN4/btYIS8fMngy
SOmsDqqZNvNn8cqXOjwgajlgnR24Y9tnDohwjvpsvynEEtJ4sKkRzjgkhOxWfh0+W5ofmRb1IqPp
7rAY/ratvVCspKHJM2mpOFNoV3C1JxrumHZsO6+CPQ0oVoBI8fjdpYLnZB2NEpOf65HDvOf1b7dh
C4kFJNvrmxQcec/TFVwD7FypttPQmVW1bSrsf6wrUSZ1fvjDPvMu8C/dxbTMFbgrhHRNkJbUXujN
cAhNrBPdipClltb3Gtv6b8dgMrKzwXXszN2fuosZhT4bUl+wajAjnDV1yuMdc3M1e8ievlAT8vxO
k6CLnb3F/PFAOxUACUf+eeEcjM8fA4zqRXtjvAX7dEf+1ThtqAoZi8WXOcxRe63LgnY1CYUPvBgE
jvS1roTwVy7pbEsFXw06y6CGbgOnN+fNGmnlS/acEUCKJRgwzwJzgVPFyS9xCVQLkG2TDQtxyWc7
yfp3vo2YS6SqRdvU8OkDif8t4F615rvsg6Q9g3l9ZlYuW07X6TVOIAaz7YBuokNa4uUk2pXJ6jOD
hPdZ6Is/l6uGJKQX6eG9t3ljIKQwiiVH++uusNI2xqET1Gf2tMw1t+nL4+GeyjfEF7UG3n5sd6zA
zjrhIFd8FvGUSeAWydH5gt41FcwRvnEeXom+9WsHGanTvrDKeBN6sbpQ38gBMvCRL7zL12rCfecU
QZWd8GCQR9/B7b72izN79Crwv+iTW9UjRInBAJ1lXW1+8Fd1kHl1khcVpmvv3f+WhOuShEEVgSEb
5dnCY3bQsbpw1g6aUH5y1BfpNQ/zxdXOccIMNdshLJkILQLC9va+8ZDNXTfcen8hgx5sXtwLUXmX
OrF1xA1RlqkAJJBM/azpIubaWq83J0TxxXqr+GQN+4nhEDoI1HREb0Kee4fivo/7dRAZYs/UomsL
3EpyvP1coWhzSDLpWwFJfFl2gUYbLWuBOsQqnBrGiLyJUfYwIzg6f+aHOCzaC8SG2quZShqoMMdk
YSbYfYfg5iIadFezv2uNGLXelA16Iaj/RM4suRdxc/364NC8ZaVpzVuCbCnDC2QhPV8rmzimOQam
/fCTlNJM9SGYBE8eSQVs+EgShE0aKXTTrrHG7fumNsPkpD/EGbnURma12wQcKk6P5r6LbatezyXp
ombBZ3Cmrct6HoHVKPMHxTur6iOYhDX02H3mTD9DehDMcwU1Yz+2OLGD7O5niasz2I0h+ipCjBW4
mjnD1zliiLKU5NgWerfgqNCA2cbtXxK6Yuv2ZsG0XwDFFXs93AIE04doOCEbhNcRnvCjG5ihgI/a
lE1h79CpZNB7E6/jjnBQfjOdqk6BtTybpl74HlgLWwdjmxfv1PuSj2fYHW4Z/Sjc4C8AsQcofGVh
QnugpY1bOuLNBtfAMJPk8Vo3cyCskOda15HXomg1G84AjMjxSS1lokygPhjmMq55e1pWhhTd727Y
uH58EGYCPy9/+9qtu6eyRUdxhIHnW/6L6HEzj9nprqidTdCP22W+gaCw2egAS4H5DvcYvB0ADX4z
jcbbJ+wNT+z4KpwFesgfYMhGb0Yva+npVnLLxYzv0eL+MspTVyyz4/D8HVidyMftG0nLy98q01Vm
AHK9TAq1k+GIcfV0Aq1oAFTYrJgXtOQI6w/FssfzHVA2vHmHB2u8zf3x5CeCPENJMGCnudbOMa8A
US8axDGuStleO/P1CFQbBBOBjzJxoLKSdHd2cT9OsEP3tB0xRKJaddWbx3/1vG591GrZJV0gBBJZ
t+M8WV/dCdrk+QRjMwDme7k70TzHWjh2hsU/kduj51bDWYsld7JBhUjzrAshtJrNQqqXMiOfmRoR
ex25slkLBwkg79FNXu2RnCMIOCye4eRvyXaJ3rA4aREHaqmd95/eaIdJL2CTWoEBj5KbWKKcJBW8
GK36GnHy3lvqTRvX0exTZGGYf8sJiTdsBXrbfOBVQgd461EkhSdrO9YGy2ZyytHYd3YYJf3NZI96
ZYzAvEPBDS8Z+C2yxZ/ggtU4eo2lUjVFuUXI2iAh6gUYP/xoO324rLKv0duFAmmBoiu9xHA6JSYU
diDDBB7pwYt145pT/kYT4US6+kjL1acdazdk7p8EE4+ircWpuNTfCU5CbbnUVg2zpyKiIRDAbm+/
xxIo6nICYK94qBlzXpTU3emPs3WCpR61ZQy1FZ2BxJnn6/keYtf+cHM6qz8IzrOmvBTSjYce+Unf
HmlTRVrW1BEUr+4ZEsF6NNNavHFc5cwcgrn+rQ/mk+BvI1IX9y7hYbfgMaYKqZht31FOPz08hiUS
VA0uk8603vyF/WchLXG31QGT4tWeU3m7Bs4ovaKHw7PUnUr9BCiFNGIycMT/n0AxrYynXCRoAxfg
fvwEaJfelRtGRmddjsz7w/3LUfOkIcXwnmPwnI63styEjnm3FdqXvr/bZzJxyf24NUMRQvVv3CXw
ByevNopEtwKNfvfL/E+hse+EWcToxnC/tYra+TWoMe0tezyk4GoHHJVAk9uK2jRxRJ3fgHljpH1M
ijX2P1yptK0HWxkge5bMXf11V9Y1+QslIRZxrRbz8FJGVGqipU66M5NEwOT3mibpZoHr3WsRWJBX
Hl4o/YQUef6EGdwAKR0cMN2tb3JcAK9jprhz/mw3LWXg9q3m8FsuPfMghN1kTIuWWq1Ez2rJaWPY
0CaRWLVti5PPeWII9jP0sUUJHyx4foxPYir4z5uGdHim8jPhHv48mMe/vdalLUAocaEXFvcLeSkc
wf9oOl7Sa+nerZejhbZi2C0Mk2Ze+OmHgtuELiWNuCCJ4XeSldTAvJzvNQeJ4U4dc88/wJ1p6l65
B9J73Mb2cwvpHN0jeWvEYDsNyIJV+GyIrKO4W8Jd30YsScATNZShScvCvATxLdWKsq3jZf4gIhWx
UPwE4pIVCOm4qITnuHUHyue9p7pENqQYOISbI6xblVOgNat0xYABMGSnCT42AmEwVwLVx3bRmh4l
ayrraKgUHORDyuGEcNnN+9jBhqdJdRLoCeHN9bjyhl/apZJPw0Gna82IyYxzQKaPXhlQKWy4AUwD
DLejejewIbWwzV/80nJgdYIIuJPQ/TmGTYByNLKSVOhL4EKvMF3ybKZaVf+warUg/WhvJS/GiX+Z
g2AnmfWeCOawYWQwb4su6vBl6h956S0ybBEUSKhfSHBHYaTTdYCHP6cHEBSzXXAYW+5rPiKCeUdo
J3Ur397m3QfJuwJJXp38hztcBau6n7NirHT/hCCccfVue/87Ze8BrXBKagEhgSyJnD5OWyRbWUZE
CWMlK1r9rUxclHcIvfugUV3IBPIl6pfe4AW+MJW/7ZOfv6BZIzSvihtFJli3fAbRVYZzXZd51NBu
INyY77tLUs+sWqk+7RxaUXDMD9RMFA60DemXSP5INtgsbQy1kP02lBCJgpr5KblqgosmqYw+lgul
1htfFbsveHShkBwHUmZKhTxPG61jN2oFZEqlD14B6fEZTfR+PZ0FRYmyD6aT8MDaTArMocqFqTYu
Ih7MpNXb0Tc9xWD+9Hwhj9hf17v9/8cW7oJbOJeHAyKFIr04IDklKY/H3XJPkZLFZIGXA2X8DDh7
Kg6d+DVzMD/LdrLTS/8Ql4b4Lde6iqWWO9n/l8R5nTBVtHOkmaNt9HumXETiEnX5o1V9UpkqJVyT
ndDOBuE8o1wla/2MGyuvbABGKpYxDFRfWt28C7vMvdQKLf/kcz8FHX9axL5OyR5FyxQdFECI8gSy
c+NG+3oLhKY83jn3XENY62Asitna0nMousiK+OKqKbT0T9mb08S9pLSs8Gy3C6wDgU3uMPRWgO6p
K1Whh8bMDImybAaRTPJj30cSfs9R6G0fhQ7LhDFY6nN+GiQg5veodFrJ0Uv8fURNg57wIliL+xtR
6BsfckzXTnBVPeAFRLKNImfE7RDIhoKUSkcukcuQQNv2/X92Gb4qZJ74P0OZbfvi4Uo6qkkJ8FPy
R4fArCYy1st92CRpIIezeOECQn/w2Eox546lt9tMewJzb+KEnwlkHsjLGOoiwpwJGgL+6Ptcq99T
sxF3zhicEex3ATvRZfjRMqJ1b9y6vi3IdXQXjWs2Czs/Z6sl03jTyb3PS7iq4y6WOhLnQBmBLpEQ
hltqp+47d+mQELvr62U8cVUZFRdhdETXi+vx8wF5D+yJJ1TTtfzKNxXewP5qwN4k4KjYJyczJL3s
Yd3ZnmktpPibMFy8bTi1qEyCH1cLwgKq7EaD8UbNH7U/1c86PcxCHstfRb1cGsmxv37K0Sap2kez
g3dQSw/yXzL/uB6IvpulJl8fvw9uRrCVgAi0jYobwgt+HTC5bN3u2eGIlby+ZoF3f0gKorIxNeoZ
v/m6aGWPyLQz66t3Vso+rkbVoGyd00KZW2CTJa+zhQDq1oaXFLaXuAMnkDFArth3sUtXV/iw9jHC
I2OmLYCGWPhzdqp92kYMiJw+FVwFyMi29P33M1nZ/+wqaXTM1IYPShXxv7OSentztRUSE5VXIMJL
cGh+1W5Wc6NLF9iO+N9HTBYY7vRzOWIFC2Ot1nnKUon6J8ykz1zjqnwVJNZWNQTDIJwj7qRi3Vva
f0iE3M9BExAAkaLWUFgH4j4DKXfd96+MmmKX5gfZYHr4GjNbhQbwdDe2ijJRHG1wQJEKp9xo99wj
BOg0Hd6pBMDsMA1BZ3vJt+O0Jd47ttjFQxefH7OsoUPhUGlH7VbquM6/zzfTkB1pRUT8i16b23pK
FlyWZbx6nYaVJwZFUZhBOSL6XuigdNdvvbixjUwW2HoHqBorCdEHplH01nqG4M+Erew3wWZWCrsN
l1bbTljJYGTcLsmtJ3t0QqUkNsx/87m60k9ZAdfg81uqXy7YnS2XQonvhJ8TOaALmIvz02Ed1Faq
Z6d1xZUkvo1HgdFukY0Gwy4OJSq8E8T+AXqVgmOpZTp7i05EudGjqm2sbh0elSvP4zo0h25Yp2hg
Zw17ZLzug2qmOgKqMZ8PxaTKGc0yrHQGS6Am/ZSCLdivmW4TfYE9Z4Mm3YLEu63ZW04Ejv0QEK3c
e8Jdc32X63b1w9a+iU+MQCNnZk4VkXXKDWiOOfrGEKyW0JehSDOXjpSxshbktQ6/c404AnwwUmgV
Qp/V5+h5Ru5ylhpYEIORUtWNjfi9H4bv4ejSduvjNHR+G+T5u+BS34BdEoalxz0VaYHTiCPcZ2Nd
wrbzmajYOxrZAYHHU0+x6snyJNAKUzbb1C1Ae/kPJB6o8+ht0GLVsYh3Mq/nH9E9PsZyfV6hu8G1
A0d0HFKS7Slx7OzIo07UksD5AanDqjNx63DORUv7KTV7wcdSOVLP/Ed1rfoiRO39lqBcBkJbiTda
mgGmDaPOicv77UoDhZR8CVwnaV+JYw5AKZ+bI1qOmyUs2u12QeAbnWApggYt2sDKhmKQsK2DQW68
I0OgQMIa0pj/1CLEAhX2W4war9hLylVx5L1VOdjATFdQiu/LYIiC6SgbcabbOrWauLYOCh97huR1
qW5vxWSoLj5viXiI2WaQAahxg+bpPofezcRVqmjZ+Bvxbvu+gBmn4q4m3MS4ea8PLXuXge+A381g
v9vf3kNbhd0GIscIvW2rNZvvmOezpOwNBlIYbzFDXZek8wTVM53SgkvH/a/70NnDA/S+KhqLD00v
n9yKuQjlpv79SzZ53F5KfrGqTxgVXvgbzpR1i1JafEyGIVpeytHxtgXSwYnfjcTu0hrjIokHn4yP
lagCGzgDTQQX2mCCGsDluUYLg09ArYAG5EIYHTzMI9UkH8vpgFR4VACxqp4HnnPxphmgMyasweaP
W9s8dzb0oSRD4ScvfAjg8DWvL0wvTtbYqWRqD6xTdJdKVSXWrMmSDgkEjY8UuJR8E5e2pR/bEcYZ
RDn88OzSmW/DuSqhKJwCWRd4s+EbRGkTm/cJk+b79fxVt0gKGPAz5mvmpfHnD3pCHbhGmnnNngty
hRLUIcXiq08FztHVy2izA5xo/cqobJroF9ychO6kF0tDHx2HVytrUfHwAbUKi56j3QAjkk4I9Hhv
9KWZ85zxdKkz0d9DIeaBFVwZzX1noBXgfbsK5L5cDy8GGAaSFfH/vz9Wuodt/rzwNINNW2C8JzTP
hr1ZVLsY45yx5NTIhUtTCjLUrwYUk36eQLj5Cy30FCCbhuBN2w/ynEPOwpvczOaq8nVlanLXaMjr
82spBZXL2pT1apyS3zDw9eTei47w2jV08bdgsuMoYs9AJX/K8iWMT19kU14jnDZXihgZ2tia6p7H
PmbknF/4GjX9dhmqv9SWJjuSQLafrFHAS6/2UHgYbz3BOf+BIJhtl1rxKifHbuJ9PBEqdJ5jSMqU
1itUEK2sTKSbG0mCziHkGBjXJaDLxHlsmeXbaDWUBK7rUgIIawLRbL0VDAG2OTzPiy0AmjGNfhNz
ff3cNKMbThr/ZlwvEiaolr6jV8fNXiwza/nvVLDxnf3rW6ftoramtM5OnuFxVA41CxjJElZFNaFH
kNy1oKbHSKnquNPULlLgrprb6Q5FlcI8KvQ+cMVVtoc0vLk9hdgDH1CoNxnbWohdlFlggKWY7jPb
XyVanLXn0L8zkSoEcXDeAcm22+I8A+Tsn7BGMusjl7tfXsbwofSkPOkSE1VMcBRVf5SpnqG9o0Ug
k51Zfc1C/UxVx9+cQ5fsz0btWtclx3p2R59toxuMjq91jbMjuSCKTdiG1KZOv2vjDRs/s9kMnYkj
TPQM8lnTatB3rKTM4O0xwpW9B2qWKiAudFjKsUZGGhehSi+Wi0bC8YUpPxb4TMjc9aHsQpuUAB7i
N99VHJVTQUo8qjyRUJWQKmpD2Uvm+tR0CcsAlX6JOtJ9XeQIM/3r4NU7XVVeFmpnutbpiWEI/HNg
CB0WQ3vlDbDuJw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
