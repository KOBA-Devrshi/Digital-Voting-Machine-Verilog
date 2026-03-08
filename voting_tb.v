`timescale 1ns/1ps

module voting_tb;

reg clk;
reg reset;
reg cand1;
reg cand2;
reg cand3;

wire [7:0] vote1;
wire [7:0] vote2;
wire [7:0] vote3;

voting_machine uut (
    .clk(clk),
    .reset(reset),
    .cand1(cand1),
    .cand2(cand2),
    .cand3(cand3),
    .vote1(vote1),
    .vote2(vote2),
    .vote3(vote3)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    cand1 = 0;
    cand2 = 0;
    cand3 = 0;

    #10 reset = 0;

    #10 cand1 = 1;
    #10 cand1 = 0;

    #10 cand2 = 1;
    #10 cand2 = 0;

    #10 cand3 = 1;
    #10 cand3 = 0;

    #50 $finish;
end

endmodule
