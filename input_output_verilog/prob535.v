module prob535(out,in);
	input [3:0] in;
	output [3:0] out;
	reg [3:0] out;
	always @ (in)
	out <= in + 2'b11;
endmodule

module prob535_tb;
	reg[3:0] tin;
	wire [3:0] tout;
	prob535 myCircuit(tout, tin);
	initial 
	   begin
		tin= 4'b0000;
		repeat(9) #20 tin= tin+1'b1;
	   end
	initial
		begin
			$dumpfile ("prob535.vcd") ;
			$dumpvars (0, prob535_tb) ;
			$monitor ("in = %b | out = %b", tin, tout) ;
		end
endmodule

