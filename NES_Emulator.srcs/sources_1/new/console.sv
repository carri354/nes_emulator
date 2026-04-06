`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: Carlos Arriola, Alex Chang
// 
// Create Date: 03/19/2026 01:34:03 PM
// Design Name: 
// Module Name: console
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module console(
    input logic clk_25_MHz,
    input logic reset,
    input logic [31:0]key0, key1,
    
    output logic [3:0]red, blue, green
    );
    
     // CPU
    logic cpu_clk_en;
    logic cpu_we;
    logic cpu_irq;
    logic cpu_nmi;
    logic [15:0]cpu_address_bus;
    logic [7:0]cpu_read_bus, cpu_write_bus;
    
    
    // PPU
    logic ppu_clk_en;
    logic [7:0]ppu_data_o;
    
    
    
    /*
    cpu_6502 nes_cpu(
        .clk(clk_21MHz);              
        .reset(reset);            
        .AB(cpu_address_bus);      // address bus
        // MAKE SURE TO IMPLEMENT MUX LOGIC FOR READ BUS
        .DI(cpu_read_bus);         // data in, read bus
        .DO(cpu_write_bus);         // data out, write bus
        .WE(cpu_we);               // write enable
        .IRQ(cpu_irq);             // interrupt request
        .NMI(cpu_nmi);             // non-maskable interrupt request
        .RDY(cpu_clk_en);          // Ready signal. Pauses CPU when RDY=0 
    );
    
    clock_divider nes_clk_en(
        .clk(clk_25MHz),
        .rst(reset),
        .cpu_clk_en(cpu_clk_en),
        .ppu_clk_en(ppu_clk_en)
    );
    
    ppu nes_ppu(
        .nes_clk(clk_25MHz),
        .en(ppu_clk_en),
        .rst(reset),
        
        .data_i(cpu_write_bus),
        .address_i(cpu_address_bus[2:0]),
        
        .ppu_red(red),
        .ppu_green(green),
        .ppu_blue(blue),
        .nmi(cpu_nmi),
        
        .ppu_data_o(ppu_data_o),
        .ppu_vram_addr(vram_addr)
        
    );
    */
    
    
    /* Ignore this for now
    apu ???
    */
endmodule
