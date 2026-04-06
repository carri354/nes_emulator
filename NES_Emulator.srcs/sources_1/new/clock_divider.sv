`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: Carlos Arriola
// 
// Create Date: 03/12/2026 10:53:27 PM
// Module Name: clock_divider
// Tool Versions: 
// Description: Generates clock enable signals (NOT CLK SIGNALS)
//              for NES emulator based on the master clock
//////////////////////////////////////////////////////////////////////////////////


module clock_divider(
input logic clk, // Master clock input
input logic rst,
output logic cpu_clk_en, // clk / 12
output logic ppu_clk_en // clk / 4
    );

// Timing based on https://www.nesdev.org/wiki/Cycle_reference_chart
logic [3:0] count;
logic [3:0] count_next;

always_comb begin
    if(count == 4'd11) count_next = 4'd0;
    else count_next = count + 1;
    
    ppu_clk_en = (count == 4'd2) ||
                 (count == 4'd5) ||
                 (count == 4'd8) ||
                 (count == 4'd11);   // triggers every 3 master cycles
                 
    cpu_clk_en = (count == 4'd11);   // triggers every 12 master cycles
end

always_ff @(posedge clk) begin
    if (rst)
        count <= 4'd0;
    else
        count <= count_next;
end
    

endmodule
