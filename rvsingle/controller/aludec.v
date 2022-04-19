module aludec (
	opb5,
	funct3,
	funct7b5,
	ALUOp,
	ALUControl
);
	input wire opb5;
	input wire [2:0] funct3;
	input wire funct7b5;
	input wire [1:0] ALUOp;
	output reg [2:0] ALUControl;
	wire RtypeSub;
	assign RtypeSub = funct7b5 & opb5;
	always @(*)
		case (ALUOp)
			2'b00: ALUControl = 3'b000;
			2'b01: ALUControl = 3'b001;
			default:
				case (funct3)
					3'b000:
						if (RtypeSub)
							ALUControl = 3'b001;
						else
							ALUControl = 3'b000;
					3'b010: ALUControl = 3'b101;
					3'b110: ALUControl = 3'b011;
					3'b111: ALUControl = 3'b010;
					default: ALUControl = 3'bxxx;
				endcase
		endcase
endmodule
