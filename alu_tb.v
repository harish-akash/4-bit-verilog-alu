`timescale 1ns/1ps

module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] opcode;
wire [3:0] Y;

alu dut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Y(Y)
);

task test_operation;
    input [3:0] a_in;
    input [3:0] b_in;
    input [2:0] op_in;
    begin
        A = a_in;
        B = b_in;
        opcode = op_in;
        #10;
        $display("A=%d B=%d Opcode=%b Y=%d",
                 A, B, opcode, Y);
    end
endtask

initial begin
    $dumpfile("waveforms/alu.vcd");
    $dumpvars(0, alu_tb);

    test_operation(5, 3, 3'b000);
    test_operation(5, 3, 3'b001);
    test_operation(5, 3, 3'b010);
    test_operation(5, 3, 3'b011);
    test_operation(5, 3, 3'b100);

    test_operation(0, 0, 3'b000);
    test_operation(15, 1, 3'b000);
    test_operation(0, 1, 3'b001);
    test_operation(15, 15, 3'b010);
    test_operation(10, 5, 3'b100);

    $finish;
end

endmodule
