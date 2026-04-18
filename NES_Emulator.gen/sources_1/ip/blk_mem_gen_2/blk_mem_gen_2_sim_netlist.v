// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Apr 16 15:29:13 2026
// Host        : LAPTOP-2QU67J4E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/carri/ECE_385/NES_Emulator/NES_Emulator.gen/sources_1/ip/blk_mem_gen_2/blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.535699 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_2.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_2_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47616)
`pragma protect data_block
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
s0RvhMi/ShQWPucgc+7VUTHV8Vfs
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
