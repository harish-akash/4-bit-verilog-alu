`timescale 1ns/1ps

module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] opcode;
wire [3:0] Y;

reg [3:0] expected;
integer a, b, op;
integer pass_count = 0;
integer fail_count = 0;

alu dut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Y(Y)
);

initial begin
    $dumpfile("waveforms/alu.vcd");
    $dumpvars(0, alu_tb);

    for (op = 0; op < 5; op = op + 1) begin
        for (a = 0; a < 16; a = a + 1) begin
            for (b = 0; b < 16; b = b + 1) begin
                A = a;
                B = b;
                opcode = op;
                #10;

                case (op)
                    0: expected = (a + b) & 15;
                    1: expected = (a - b) & 15;
                    2: expected = a & b;
                    3: expected = a | b;
                    4: expected = a ^ b;
                endcase

                if (Y === expected) begin
                    pass_count = pass_count + 1;
                end else begin
                    fail_count = fail_count + 1;
                    $display("FAIL: A=%0d B=%0d Opcode=%0d Y=%0d Expected=%0d",
                             A, B, opcode, Y, expected);
                end
            end
        end
    end

    $display("--------------------------------");
    $display("Total tests: %0d", pass_count + fail_count);
    $display("Passed:      %0d", pass_count);
    $display("Failed:      %0d", fail_count);
    $display("--------------------------------");

    if (fail_count != 0)
        $fatal(1, "ALU TEST FAILED");

    $display("ALL TESTS PASSED");
    $finish;
end

endmodule
