module key_expand(
    input [127:0] key_in,
    output [127:0] round_key
);

assign round_key = key_in ^ 128'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F;

endmodule
