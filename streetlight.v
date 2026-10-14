
module streetlight(
    input D,
    input M,
    input O,
    output reg L
);

// Conditional logic using if-else
always @(*) begin
    if (O == 1'b1)
        L = 1'b1;
    else if (D == 1'b1 && M == 1'b1)
        L = 1'b1;
    else
        L = 1'b0;
end

endmodule


// Gate-level implementation
module streetlight_gates(
    input D,
    input M,
    input O,
    output L
);

wire N1, N2, N3, N4;

and G1(N1, D, M);
or  G2(N2, N1, O);
not G3(N3, N2);
nor G4(N4, N3, 1'b0);

assign L = N4;

endmodule
