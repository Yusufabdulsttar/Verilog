`timescale 1ms/1ms
`include "traffic_light.v"

module test;

 //inputs
    reg clk;
    reg rst;
 //outputs	
    wire [2:0] light_A;
    wire [2:0] light_B;
  
  // Instantiate design under test
    traffic_light uut(.clk(clk), .rst(rst),
            .light_A(light_A), .light_B(light_B));
          
  initial 
	  begin
      // for wave simulation 
      $dumpfile("traffic_light.vcd");
      $dumpvars(0,test);

      clk = 0;
      rst = 0;
	  end

  always 
	  begin
	    #500 clk=~clk;  // every period is 1 second
	  end	     
  
endmodule