`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2026 01:32:43 PM
// Design Name: 
// Module Name: mapper0
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


module mapper0( input  logic [9:0] DrawX, DrawY,
                       output logic [3:0]  Red, Green, Blue,
                       
                       //clk and reset
                       input logic clk, 
                       input logic reset, 
                       //cpu interface 
                       input logic [15:0] cpu_addr,
                       output logic [7:0] cpu_data_out,
                       input logic cpu_rw,
                       //ppu interface 
                       input logic [13:0] ppu_addr,
                       input logic [7:0] ppu_data_out, 
                       output logic [7:0] ppu_data_in
                     
                       
);

 always_comb
    begin:RGB_Display
        
            Red = 4'hf - DrawX[9:6]; 
            Green = 4'hf - DrawX[9:6];
            Blue = 4'hf - DrawX[9:6];
              
    end 
    
    //PRG and CHR internal signals
    logic [7:0] prg_dout;
    logic [7:0] chr_dout;
    logic prg_en;
    logic chr_en;
    logic [13:0] prg_addr;
    logic [12:0] chr_addr;
    
   always_comb 
   begin
   
   prg_en = 1'b0;
   chr_en = 1'b0;
   prg_addr = 14'h0000;
   chr_addr = 13'h0000;
   cpu_data_out = 8'h00;
   ppu_data_in = 8'h00;
   //prg rom from cpu side
   if (cpu_addr >= 16'h8000)
   begin
   
   prg_en = 1'b1;
   prg_addr = cpu_addr[13:0]; //16 kb mirror 
   
   if (cpu_rw)
   begin
   cpu_data_out = prg_dout; 
   end
   
   end
   
   //chr rom from ppu side
   if (ppu_addr <= 14'h1FFF)
   begin
   
   chr_en = 1'b1;
   chr_addr = ppu_addr[12:0];
   ppu_data_in = chr_dout;
   
   end
   
   end
   
    blk_mem_gen_1 prg_rom (
   .clka(clk),
   .ena(prg_en),
   .wea(1'b0),
   .addra(prg_addr),
   .dina(8'h00),
   .douta(prg_dout)
   );
   
   blk_mem_gen_2 chr_rom (
   .clka(clk),
   .ena(chr_en),
   .wea(1'b0),
   .addra(chr_addr),
   .dina(8'h00),
   .douta(chr_dout)
   );
    
    
    
endmodule