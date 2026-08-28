module mux81_41( input [2:0] sel, input [7:0] i, output y

    );
    
    wire w1,w2;
    wire en1,en2;
    assign en1=~sel[2];
    assign en2= sel[2];
    
    
    
    mux4_1 M1 (.sel(sel[1:0]), .en(en1), .i(i[3:0]), .y(w1));
    mux4_1 M2 (.sel(sel[1:0]), .en(en2), .i(i[7:4]), .y(w2));
    
    or o1 (y, w1,w2);
    
    
endmodule
