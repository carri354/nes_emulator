//-------------------------------------------------------------------------
//    nes_top.sv
//    Alex Chang, Carlos Arriola
//-------------------------------------------------------------------------

module nes_top(
    input  logic       Clk,
    input  logic       reset_rtl_0,

    // SW Input
    input  logic [15:0] sw,

    //USB signals
    input  logic [0:0] gpio_usb_int_tri_i,
    output logic       gpio_usb_rst_tri_o,
    input  logic       usb_spi_miso,
    output logic       usb_spi_mosi,
    output logic       usb_spi_sclk,
    output logic       usb_spi_ss,

    //UART
    input  logic       uart_rtl_0_rxd,
    output logic       uart_rtl_0_txd,

    //HDMI
    output logic       hdmi_tmds_clk_n,
    output logic       hdmi_tmds_clk_p,
    output logic [2:0] hdmi_tmds_data_n,
    output logic [2:0] hdmi_tmds_data_p,

    //HEX displays
    output logic [7:0] hex_segA,
    output logic [3:0] hex_gridA,
    output logic [7:0] hex_segB,
    output logic [3:0] hex_gridB
);

    // USB and clocks
    logic [31:0] keycode0_gpio, keycode1_gpio;
    logic clk_25MHz, clk_125MHz;
    logic locked;

    // HDMI
    logic hsync, vsync, vde;
    logic [3:0] red, green, blue;
    logic [9:0] drawX, drawY;

    // Reset
    logic reset_ah;
    assign reset_ah = reset_rtl_0;

    // CPU signals
    logic [15:0] cpu_addr;
    logic [7:0]  cpu_data_out;
    logic [7:0]  cpu_data_mux;
    logic [7:0]  cpu_data_from_mapper;
    logic        cpu_we;
    logic        cpu_clk_en;
    // logic [7:0] cpu_data_reg;


    //BRAM signals (replaces unpacked array)
    logic [10:0] cpu_ram_addr;
    logic [7:0]  cpu_ram_dout;
    logic        cpu_ram_we;

    // PPU signals for later
    logic [13:0] ppu_addr;
    logic [7:0]  ppu_data_out;
    logic [7:0]  ppu_data_in;
    logic        ppu_clk_en;

    assign ppu_addr     = 14'h0000;
    assign ppu_data_out = 8'h00;

    assign cpu_ram_addr = cpu_addr[10:0];

    //BRAM write enable signal
    assign cpu_ram_we = cpu_we && cpu_clk_en && (cpu_addr < 16'h2000);

    // CPU data mux
    always_comb begin
        cpu_data_mux = 8'h00;

        if (cpu_addr < 16'h2000) begin
            cpu_data_mux = cpu_ram_dout;        
        end
        else if (cpu_addr >= 16'h8000) begin
            cpu_data_mux = cpu_data_from_mapper;
        end
        else begin
            cpu_data_mux = 8'h00;
        end
    end

    // always_ff @(posedge clk_25MHz) begin
    //     if(reset_rtl_0) cpu_data_reg <= 0;
    //     else cpu_data_reg <= cpu_data_mux;
    // end


    // NEW: BRAM instance replacing unpacked array
    blk_mem_gen_3 cpu_ram_bram (
        .clka  (clk_25MHz),
        .ena   (1'b1),
        .wea   (cpu_ram_we),
        .addra (cpu_ram_addr),
        .dina  (cpu_data_out),
        .douta (cpu_ram_dout)
    );

    //Keycode HEX drivers
    hex_driver HexA (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[31:28], keycode0_gpio[27:24], keycode0_gpio[23:20], keycode0_gpio[19:16]}),
        .hex_seg(hex_segA),
        .hex_grid(hex_gridA)
    );

    hex_driver HexB (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[15:12], keycode0_gpio[11:8], keycode0_gpio[7:4], keycode0_gpio[3:0]}),
        .hex_seg(hex_segB),
        .hex_grid(hex_gridB)
    );

    mb_unit mb_block_i (
        .clk_100MHz(Clk),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(keycode0_gpio),
        .gpio_usb_keycode_1_tri_o(keycode1_gpio),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .reset_rtl_0(~reset_ah), // Block designs expect active low reset
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss)
    );

    // Clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(Clk)
    );

    // VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );

    // Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        .rst(reset_ah),

        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),

        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),

        .TMDS_CLK_P(hdmi_tmds_clk_p),
        .TMDS_CLK_N(hdmi_tmds_clk_n),
        .TMDS_DATA_P(hdmi_tmds_data_p),
        .TMDS_DATA_N(hdmi_tmds_data_n)
    );

    mapper0 game_mapper0 (
        .DrawX(drawX),
        .DrawY(drawY),
        .Red(red),
        .Green(green),
        .Blue(blue),

        .clk(clk_25MHz),
        .reset(reset_ah),

        .cpu_addr(cpu_addr),
        .cpu_data_out(cpu_data_from_mapper),
        .cpu_rw(~cpu_we),

        .ppu_addr(ppu_addr),
        .ppu_data_out(ppu_data_out),
        .ppu_data_in(ppu_data_in)
    );

    cpu cpu_inst (
        .clk(clk_25MHz),
        .reset(reset_ah),
        .AB(cpu_addr),
        .DI(cpu_data_mux),      
        .DO(cpu_data_out),
        .WE(cpu_we),
        .IRQ(1'b0),
        .NMI(1'b0),
        .RDY(cpu_clk_en)
    );

    clock_divider nes_clk_en (
        .clk(clk_25MHz),
        .rst(reset_ah),
        .cpu_clk_en(cpu_clk_en),
        .ppu_clk_en(ppu_clk_en)
    );

endmodule