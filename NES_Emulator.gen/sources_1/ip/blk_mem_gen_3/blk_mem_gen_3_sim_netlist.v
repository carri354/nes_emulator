// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Apr 16 20:49:51 2026
// Host        : LAPTOP-2QU67J4E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/carri/ECE_385/NES_Emulator/NES_Emulator.gen/sources_1/ip/blk_mem_gen_3/blk_mem_gen_3_sim_netlist.v
// Design      : blk_mem_gen_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_3,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3396 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_3.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_3_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18656)
`pragma protect data_block
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
yek0XFsh9GD6fcTkkDy99lc=
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
