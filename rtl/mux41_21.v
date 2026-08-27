module mux41_21( input [1:0] sel, input [3:0] i, output  y);

wire [1:0] w;

mux2_1 MUX1(.i(i[1:0]), .s(sel[0]), .y(w[0]));

mux2_1 MUX2(.i(i[3:2]), .s(sel[0]), .y(w[1]) );

mux2_1 MUX3(.i(w), .s(sel[1]), .y(y));

endmodule
