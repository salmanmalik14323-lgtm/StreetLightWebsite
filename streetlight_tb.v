
module streetlight_tb;

reg D, M, O;
wire L1, L2;

streetlight uut1 (
    .D(D), .M(M), .O(O), .L(L1)
);

streetlight_gates uut2 (
    .D(D), .M(M), .O(O), .L(L2)
);

initial begin
    $dumpfile("streetlight.vcd");
    $dumpvars(0, streetlight_tb);

    $monitor("D=%b M=%b O=%b | Conditional=%b Gate=%b",
             D, M, O, L1, L2);

    D=0; M=0; O=0; #10;
    D=0; M=0; O=1; #10;
    D=0; M=1; O=0; #10;
    D=0; M=1; O=1; #10;
    D=1; M=0; O=0; #10;
    D=1; M=0; O=1; #10;
    D=1; M=1; O=0; #10;
    D=1; M=1; O=1; #10;

    $finish;
end

endmodule
