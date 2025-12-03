module full_adder_behavioral(

	input a,b,carry_in,
	output reg sum,carry);

	always@(a,b)begin	//
		case({a,b,carry_in})
		3'b000:begin	sum=0;	carry=0;	end
		3'b001:begin	sum=0;	carry=0;	end
		3'b010:begin	sum=0;	carry=0;	end
		3'b011:begin	sum=0;	carry=0;	end
		3'b100:begin	sum=0;	carry=0;	end
		3'b101:begin	sum=0;	carry=0;	end
		3'b110:begin	sum=0;	carry=0;	end
		3'b111:begin	sum=0;	carry=0;	end

		endcase
	end

endmodule
