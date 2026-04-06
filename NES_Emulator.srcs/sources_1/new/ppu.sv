`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: Carlos Arriola, Alex Chang
// 
// Create Date: 03/18/2026 11:30:27 AM
// Module Name: ppu
// Tool Versions: 
// Description: Generates color signals to be displayed on monitor
//              
//////////////////////////////////////////////////////////////////////////////////


module ppu(
// nes_clk = 25MHz, same as VGA signal
    input logic nes_clk, cpu_we,
    input logic en, rst,
    input logic [7:0] data_i,   // Incoming data
    input logic [2:0] addr_i,   // Address to access (one of 8 registers)
    
    output logic [3:0] ppu_red, ppu_blue, ppu_green,
    output logic nmi, vblank,
    output logic [7:0] ppu_data_o,
    output logic [12:0] ppu_vram_addr
    
    
    );
    
    // Control registers https://www.nesdev.org/wiki/PPU_registers
    logic [7:0] ppu_ctrl, ppu_mask, ppu_status, oam_addr, ppu_scroll, ppu_data;
    
    
    
endmodule
