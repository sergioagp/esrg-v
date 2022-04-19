module maindec (
	op,
	ResultSrc,
	MemWrite,
	Branch,
	ALUSrc,
	RegWrite,
	Jump,
	ImmSrc,
	ALUOp
);
	input wire [6:0] op;
	output wire [1:0] ResultSrc;
	output wire MemWrite;
	output wire Branch;
	output wire ALUSrc;
	output wire RegWrite;
	output wire Jump;
	output wire [1:0] ImmSrc;
	output wire [1:0] ALUOp;
	reg [10:0] controls;
	assign {RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, Branch, ALUOp, Jump} = controls;
	always @(*)
		case (op)
			7'b0000011: controls = 11'b10010010000;
			7'b0100011: controls = 11'b00111000000;
			7'b0110011: controls = 11'b1xx00000100;
			7'b1100011: controls = 11'b01000001010;
			7'b0010011: controls = 11'b10010000100;
			7'b1101111: controls = 11'b11100100001;
			default: controls = 11'bxxxxxxxxxxx;
		endcase
endmodule
