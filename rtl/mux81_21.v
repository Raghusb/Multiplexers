module mux81_21( input [2:0] sel, input [7:0] i, output y

    );
    wire [6:0] w;
    
    mux2_1 M1 ( .s(sel[0]), .i(i[1:0]), .y(w[0]) );
    mux2_1 M2 ( .s(sel[0]), .i(i[3:2]), .y(w[1]) );
    mux2_1 M3 ( .s(sel[0]), .i(i[5:4]), .y(w[2]) );
    mux2_1 M4 ( .s(sel[0]), .i(i[7:6]), .y(w[3]) );
    
    mux2_1 M5 ( .s(sel[1]), .i(w[1:0]), .y(w[4]) );
    mux2_1 M6 ( .s(sel[1]), .i(w[3:2]), .y(w[5]) );
    
    mux2_1 M7 ( .s(sel[2]), .i(w[5:4]), .y(y) );
    
endmodule
