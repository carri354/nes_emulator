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
    output logic [12:0] ppu_chr_addr
    
    );

// Control registers https://www.nesdev.org/wiki/PPU_registers
logic [7:0] ppu_ctrl, ppu_mask, ppu_status, oam_addr, oam_data, /*ppu_scroll,*/ ppu_addr, ppu_data;

// Internal registers https://www.nesdev.org/wiki/PPU_scrolling#PPU_internal_registers
logic [2:0] fine_x;
logic [14:0] vram_addr, temp_vram_addr;
logic w; // toggles between first and second write to ppu_scroll and ppu_addr

// palette signals
logic [5:0] color_index, palette_doutb;
logic [4:0] palette_addra, palette_addrb;
logic palette_web;





// CPU r/w to registers logic
// UNFINISHED: still missing something about address  increment when we read from PPUDATA
// Also need to fix latching with ppu_data
// Fix: should prolly implement 2-always
always_ff @( nes_clk ) begin
    if(rst)begin
        // Control regs
        ppu_ctrl <= 8'h00;
        ppu_mask <= 8'h00;
        ppu_status <= 8'h00;
        oam_addr <= 8'h00;
        // ppu_scroll <= 8'h00;
        ppu_data <= 8'h00;
        ppu_addr <= 8'h00;

        // Internal regs
        temp_vram_addr <= 0;
        w <= 0;
        fine_x <= 0;
    end
    else if(en && cpu_we) begin // WRITES
        case(addr_i)
            3'b000: begin // Writes to PPUCTRL also write to temp vram addr
                ppu_ctrl <= data_i;
                temp_vram_addr[10] <= data_i[0];
                temp_vram_addr[11] <= data_i[1];
            end
            
            3'b001: ppu_mask <= data_i;
            // 3'b010: ppu_status <= data_i; read-only reg
            3'b011: oam_addr <= data_i;
            3'b100: oam_data <= data_i;
            3'b101: begin
                // PPU scroll reg technically not needed but kept for symbolism lol
                // ppu_scroll <= data_i;

                if(~w)begin // First write
                    w <= 1;
                    fine_x <= data_i[2:0];
                    temp_vram_addr[4:0] <= data_i[7:3];
                end
                else begin // Second write
                    w <= 0;
                    temp_vram_addr[14:12] <= data_i[2:0];
                    temp_vram_addr[9:5] <= data_i[7:3];
                end
            end
            3'b110: begin
                ppu_addr <= data_i;

                if(~w)begin // First write
                    w <= 1;
                    temp_vram_addr[14:8] <= data_i[6:0];
                end
                else begin // Second write
                    w <= 0;
                    temp_vram_addr[7:0] <= data_i;
                    vram_addr <= temp_vram_addr;
                end
            end
            3'b111: ppu_data <= data_i;
        endcase
    end
    else if(en && ~cpu_we)begin // READS
        if(addr_i == 3'b010)begin
            // UNFINISHED: Also might need to clear vblank??? not sure about this
            w <= 0;
        end
        else if(addr_i == 3'b111)begin
            // UNFINISHED: This should increment temp_vram_addr but I am a bit confused on this
        end
    end
    
end






// Physical color selection based on palette ram index
// http://www.romdetectives.com/Wiki/index.php?title=NES_Palette
always_comb begin
case (color_index)
    6'h00: {ppu_red, ppu_green, ppu_blue} = 12'h777; // 7C7C7C
    6'h01: {ppu_red, ppu_green, ppu_blue} = 12'h00F; // 0000FC
    6'h02: {ppu_red, ppu_green, ppu_blue} = 12'h00A; // 0000BC
    6'h03: {ppu_red, ppu_green, ppu_blue} = 12'h43A; // 4428BC
    6'h04: {ppu_red, ppu_green, ppu_blue} = 12'h904; // 940084
    6'h05: {ppu_red, ppu_green, ppu_blue} = 12'hA01; // A80020
    6'h06: {ppu_red, ppu_green, ppu_blue} = 12'hA10; // A81000
    6'h07: {ppu_red, ppu_green, ppu_blue} = 12'h810; // 881400
    6'h08: {ppu_red, ppu_green, ppu_blue} = 12'h520; // 503000
    6'h09: {ppu_red, ppu_green, ppu_blue} = 12'h078; // 007800
    6'h0A: {ppu_red, ppu_green, ppu_blue} = 12'h068; // 006800
    6'h0B: {ppu_red, ppu_green, ppu_blue} = 12'h058; // 005800
    6'h0C: {ppu_red, ppu_green, ppu_blue} = 12'h044; // 004058
    6'h0D: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
    6'h0E: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
    6'h0F: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000

    6'h10: {ppu_red, ppu_green, ppu_blue} = 12'hBBB; // BCBCBC
    6'h11: {ppu_red, ppu_green, ppu_blue} = 12'h07E; // 0078F8
    6'h12: {ppu_red, ppu_green, ppu_blue} = 12'h05E; // 0058F8
    6'h13: {ppu_red, ppu_green, ppu_blue} = 12'h65F; // 6844FC
    6'h14: {ppu_red, ppu_green, ppu_blue} = 12'hD0C; // D800CC
    6'h15: {ppu_red, ppu_green, ppu_blue} = 12'hE03; // E40058
    6'h16: {ppu_red, ppu_green, ppu_blue} = 12'hF80; // F83800
    6'h17: {ppu_red, ppu_green, ppu_blue} = 12'hE51; // E45C10
    6'h18: {ppu_red, ppu_green, ppu_blue} = 12'hA70; // AC7C00
    6'h19: {ppu_red, ppu_green, ppu_blue} = 12'h0B0; // 00B800
    6'h1A: {ppu_red, ppu_green, ppu_blue} = 12'h0A0; // 00A800
    6'h1B: {ppu_red, ppu_green, ppu_blue} = 12'h0A4; // 00A844
    6'h1C: {ppu_red, ppu_green, ppu_blue} = 12'h088; // 008888
    6'h1D: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
    6'h1E: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
    6'h1F: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000

    6'h20: {ppu_red, ppu_green, ppu_blue} = 12'hFFF; // F8F8F8
    6'h21: {ppu_red, ppu_green, ppu_blue} = 12'h3CF; // 3CBCFC
    6'h22: {ppu_red, ppu_green, ppu_blue} = 12'h68F; // 6888FC
    6'h23: {ppu_red, ppu_green, ppu_blue} = 12'h98F; // 9878F8
    6'h24: {ppu_red, ppu_green, ppu_blue} = 12'hF8F; // F878F8
    6'h25: {ppu_red, ppu_green, ppu_blue} = 12'hF59; // F85898
    6'h26: {ppu_red, ppu_green, ppu_blue} = 12'hF85; // F87858
    6'h27: {ppu_red, ppu_green, ppu_blue} = 12'hFA4; // FCA044
    6'h28: {ppu_red, ppu_green, ppu_blue} = 12'hFB8; // F8B800
    6'h29: {ppu_red, ppu_green, ppu_blue} = 12'hBF1; // B8F818
    6'h2A: {ppu_red, ppu_green, ppu_blue} = 12'h5D5; // 58D854
    6'h2B: {ppu_red, ppu_green, ppu_blue} = 12'h5F9; // 58F898
    6'h2C: {ppu_red, ppu_green, ppu_blue} = 12'h0ED; // 00E8D8
    6'h2D: {ppu_red, ppu_green, ppu_blue} = 12'h777; // 787878
    6'h2E: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
    6'h2F: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000

    6'h30: {ppu_red, ppu_green, ppu_blue} = 12'hFFF; // FCFCFC
    6'h31: {ppu_red, ppu_green, ppu_blue} = 12'hA4F; // A4E4FC
    6'h32: {ppu_red, ppu_green, ppu_blue} = 12'hBBF; // B8B8F8
    6'h33: {ppu_red, ppu_green, ppu_blue} = 12'hDBF; // D8B8F8
    6'h34: {ppu_red, ppu_green, ppu_blue} = 12'hFBF; // F8B8F8
    6'h35: {ppu_red, ppu_green, ppu_blue} = 12'hFAD; // F8A4C0
    6'h36: {ppu_red, ppu_green, ppu_blue} = 12'hFDB; // F0D0B0
    6'h37: {ppu_red, ppu_green, ppu_blue} = 12'hFEA; // FCE0A8
    6'h38: {ppu_red, ppu_green, ppu_blue} = 12'hFD7; // F8D878
    6'h39: {ppu_red, ppu_green, ppu_blue} = 12'hDF7; // D8F878
    6'h3A: {ppu_red, ppu_green, ppu_blue} = 12'hBF7; // B8F8B8
    6'h3B: {ppu_red, ppu_green, ppu_blue} = 12'hBFd; // B8F8D8
    6'h3C: {ppu_red, ppu_green, ppu_blue} = 12'h0FF; // 00FCFC
    6'h3D: {ppu_red, ppu_green, ppu_blue} = 12'hFDf; // F8D8F8
    6'h3E: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
    6'h3F: {ppu_red, ppu_green, ppu_blue} = 12'h000; // 000000
endcase
end






// Modules



// palette_ram
//
// Takes in a 5-bit address
// Outputs a 6-bit index to a physical color as defined in color_index case-statement

palette_ram palette_ram_inst(
    // Port A: PPU read-only
    .clka      (nes_clk),
    .ena       (1'b1),
    .wea       (1'b0),    // ppu never writes    
    .addra     (palette_addra),      
    .dina      (),      // ppu never writes
    .douta     (color_index),      

    // Port B: CPU read/write
    .clkb      (), // Shared clock, okay to leave unconnected
    .enb       (1'b0),
    .web       (1'b0/*palette_web*/),        
    .addrb     (5'b00000/*palette_addrb*/),      
    .dinb      (6'b000000/*ppu_data*/),       
    .doutb     (palette_doutb)       
);

    
    
endmodule
