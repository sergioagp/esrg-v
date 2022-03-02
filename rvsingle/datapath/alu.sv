module alu(
    input   logic   [31:0] SrcA, SrcB,
    input   logic   [2:0] ALUControl,
    output  logic   [31:0] ALUResult,
    output  logic   Zero
);

    assign Zero = ALUResult == 32'b0;

    always_comb
    case(ALUControl)
        3'b000:     ALUResult = SrcA + SrcB; // add, addi
        3'b001:     ALUResult = SrcA - SrcB; // sub, subi
        3'b010:     ALUResult = SrcA | SrcB; // or, ori
        3'b011:     ALUResult = SrcA & SrcB; // and, andi
        3'b101:     ALUResult = SrcA < SrcB; // slt, slti
        default:    ALUResult = ALUResult;   // ???
    endcase
endmodule