module voting_machine(
    input clk,
    input reset,
    input cand1,
    input cand2,
    input cand3,
    output reg [7:0] vote1,
    output reg [7:0] vote2,
    output reg [7:0] vote3
);

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        vote1 <= 0;
        vote2 <= 0;
        vote3 <= 0;
    end
    else
    begin
        if (cand1)
            vote1 <= vote1 + 1;

        if (cand2)
            vote2 <= vote2 + 1;

        if (cand3)
            vote3 <= vote3 + 1;
    end
end

endmodule
