// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Apr 16 01:31:51 2026
// Host        : LAPTOP-2QU67J4E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/carri/ECE_385/NES_Emulator/NES_Emulator.gen/sources_1/ip/palette_ram/palette_ram_sim_netlist.v
// Design      : palette_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "palette_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module palette_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [4:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [4:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [4:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [4:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [4:0]dina;
  wire [4:0]dinb;
  wire [4:0]douta;
  wire [4:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.43175 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "palette_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "5" *) 
  (* C_READ_WIDTH_B = "5" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "5" *) 
  (* C_WRITE_WIDTH_B = "5" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  palette_ram_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[4:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22432)
`pragma protect data_block
+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
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
