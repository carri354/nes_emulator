`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: Carlos Arriola, Alex Chang
// 
// Create Date: 03/19/2026 01:34:03 PM
// Design Name: 
// Module Name: cartridge
// Project Name: NES EMULATOR
// Target Devices: 
// Tool Versions: 
// Description: Mapper Switcher
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cartridge(

    input logic mapper_sel,
    input logic clk, reset,
    
    input logic [9:0] drawX, drawY, // VERY temporary signals just for testing mapper switching 
    output logic [3:0] red, green, blue // VERY temporary signals just for testing mapper switching    
);
    

logic mapper_sel_lock; // Locks-in a mapper selection on reset
logic [3:0] red_out [2];
logic [3:0] green_out [2];
logic [3:0] blue_out [2];


always_ff @(posedge clk) begin
    if (reset)
        mapper_sel_lock <= mapper_sel;
end

// Output RGB channel is assigned based on mapper_id
// Mapper0: 0
// Mapper2: 1
always_comb
begin
    red = red_out[mapper_sel_lock];
    green = green_out[mapper_sel_lock];
    blue = blue_out[mapper_sel_lock];
end    
    
    

mapper0 m0(
    .DrawX(drawX),
    .DrawY(drawY),
        
.Red(red_out[0]),
.Green(green_out[0]),
.Blue(blue_out[0])
);


mapper2 m2(
.DrawX(drawX),
.DrawY(drawY),

.Red(red_out[1]),
.Green(green_out[1]),
.Blue(blue_out[1])
);
    
endmodule
