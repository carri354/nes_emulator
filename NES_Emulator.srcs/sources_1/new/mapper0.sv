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
                       output logic [3:0]  Red, Green, Blue
);

 always_comb
    begin:RGB_Display
        
            Red = 4'hf - DrawX[9:6]; 
            Green = 4'hf - DrawX[9:6];
            Blue = 4'hf - DrawX[9:6];
              
    end 
    
    
    
endmodule
