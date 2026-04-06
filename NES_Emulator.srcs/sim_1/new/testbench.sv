module testbench(); //even though the testbench doesn't create any hardware, it still needs to be a module

timeunit 10ns;  // This is the amount of time represented by #1 
timeprecision 1ns;

// These signals are internal because the processor will be 
// instantiated as a submodule in testbench.
logic       clk;
logic       rst; 




// Instantiating the DUT (Device Under Test)
// Make sure the module and signal names match with those in your design


// TEST CLK DIVIDER
//logic cpu_clk_en; // clk / 12
//logic ppu_clk_en; // clk / 4

//clock_divider c1(.*);


// TEST VGA CONTROLLER
logic pixel_clk;        // 50 MHz clock
logic reset;            // reset signal
logic hs;               // Horizontal sync pulse.  Active low
logic vs;               // Vertical sync pulse.  Active low
logic active_nblank;    // High = active, low = blanking interval
logic sync;      // Composite Sync signal.  Active low.  We don't use it in this lab,
									            //   but the video DAC on the DE2 board requires an input for it.
logic [9:0] drawX;     // horizontal coordinate
logic [9:0] drawY;   // vertical coordinate


logic [9:0] hc;
logic [9:0] vc;



vga_controller vga_inst(.*);

assign hc = vga_inst.hc;
assign vc = vga_inst.vc;

initial begin: CLOCK_INITIALIZATION
	clk = 1'b1;
end 

// Toggle the clock
// #1 means wait for a delay of 1 timeunit, so simulation clock is 50 MHz technically 
// half of what it is on the FPGA board 

// Note: Since we do mostly behavioral simulations, timing is not accounted for in simulation, however
// this is important because we need to know what the time scale is for how long to run
// the simulation
always begin : CLOCK_GENERATION
	#2.5 clk = ~clk;
end

// Testing begins here
// The initial block is not synthesizable on an FPGA
// Everything happens sequentially inside an initial block
// as in a software program

// Note: Even though the testbench happens sequentially,
// it is recommended to use non-blocking assignments for most assignments because
// we do not want any dependencies to arise between different assignments in the 
// same simulation timestep. The exception is for reset, which we want to make sure
// happens first. 
initial begin: TEST_VECTORS
    assign pixel_clk = clk;
    assign reset = rst;    
    rst = 1;
    
    #10.1
    
    rst <=0;
    
    wait(vs);
    repeat (2000) @ (posedge clk);
	
	
	$finish(); //this task will end the simulation if the Vivado settings are properly configured

end
endmodule