
module traffic_light (

	input clk,rst,
	output reg [2:0] light_A,light_B
	
);
	localparam 
		Green = 3'b001,
		Yellow = 3'b010,
		Red = 3'b100;
		
	reg [3:0] counter = 1; 

	localparam   //5 seconds to green and 1 for red or yellow
		Sec5 = 4'd5,
		Sec1 = 4'd1;
	
	reg [3:0] states; // 4 states 
	localparam 
		s0 = 3'b001,
		s1 = 3'b010,
		s2 = 3'b011,
		s3 = 3'b100;

	always @ (posedge clk or posedge rst)
	begin
		if(rst == 1) // reset
			begin
			states <= s0;
			counter <= 1;
			end
		else
			case(states) 
				s0: if(counter < Sec5)
						begin
							states <= s0;
							counter <= counter + 1;
						end
				    else
						begin
							states <= s1;
							counter <= 1;
						end
				
				s1: if(counter < Sec1)
						begin
							states <= s1;
							counter <= counter + 1;
						end
				    else
						begin
							states <= s2;
							counter <= 1;
						end

				s2: if(counter < Sec5)
						begin
							states <= s2;
							counter <= counter + 1;
						end
				    else
						begin
							states <= s3;
							counter <= 1;
						end

				s3: if(counter < Sec1)
						begin
							states <= s3;
							counter <= counter + 1;
						end
				    else
						begin
							states <= s0;
							counter <= 1;
						end

				default states <= s0;
			endcase
	end

	always @(*) 
	begin
		case(states)
			s0: 
				begin 
					light_A <= Green; 
					light_B <= Red;
				end 
			s1: 
				begin 
					light_A <= Yellow; 
					light_B <= Red; 
				end 
			s2: 
				begin 
					light_A <= Red; 
					light_B <= Green; 
				end 
			s3: 
				begin 
					light_A <= Red; 
					light_B <= Yellow; 
				end 

			default 
				begin 
					light_A <= Red; 
					light_B <= Red; 
				end 
		endcase
	end
endmodule
