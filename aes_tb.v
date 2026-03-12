`timescale 1ns/1ps

module aes_tb;

reg clk;
reg [127:0] plaintext;
reg [127:0] key;
wire [127:0] ciphertext;

aes_core uut(
    .clk(clk),
    .plaintext(plaintext),
    .key(key),
    .ciphertext(ciphertext)
);

initial
begin
    clk = 0;
    plaintext = 128'h00112233445566778899AABBCCDDEEFF;
    key = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("Ciphertext: %h", ciphertext);

    #20 $finish;
end

always #5 clk = ~clk;

endmodule
