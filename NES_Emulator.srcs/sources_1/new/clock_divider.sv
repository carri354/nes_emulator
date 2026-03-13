`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: Carlos Arriola
// 
// Create Date: 03/12/2026 10:53:27 PM
// Module Name: clock_divider
// Tool Versions: 
// Description: Generates clock enable signals (NOT CLK SIGNALS)
//              for NES emulator based on the 21.477MHz master clock
//////////////////////////////////////////////////////////////////////////////////


module clock_divider(
input logic clk_21MHz, // 21.477MHz clock
input logic rst,
output logic cpu_clk_en, // clk / 12
output logic ppu_clk_en // clk / 4
    );

// Timing based on https://www.nesdev.org/wiki/Cycle_reference_chart
logic [3:0]cpu_count;
logic [3:0]cpu_count_next;

logic [1:0]ppu_count;
logic [1:0]ppu_count_next;



always_comb
begin
    
	if (cpu_count == 4'd11)
		cpu_count_next = 0;
    else
        cpu_count_next = cpu_count + 1;
		
	if (ppu_count == 2'd3)
		ppu_count_next = 0;
	else
	   ppu_count_next = ppu_count + 1;
	
	
	cpu_clk_en = (cpu_count == 4'd11);
    ppu_clk_en = (ppu_count == 2'd3);
end


always_ff @(posedge clk_21MHz)
begin
    if(rst)begin
        cpu_clk_en <= 0;
        ppu_clk_en <= 0;
        cpu_count <= 0;
        ppu_count <= 0;
    end else begin
        cpu_count <= cpu_count_next;
        ppu_count <= ppu_count_next;
        
    end
   
end
    

endmodule
