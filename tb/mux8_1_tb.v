module mux8_1_tb;
  reg [2:0] sel_tb;
  reg [7:0] i_tb;
  wire y_tb;

  integer m;

  mux8_1 DUT (.sel(sel_tb), .i(i_tb), .y(y_tb) );


  initial begin
    $monitor("Values of inputs and outputs are Time=%0t, sel_tb=%0b, i_tb=%0b, y_tb=%0b", $time, sel_tb, i_tb, y_tb);

    for (m=0; m<2048; m=m+1)begin
      {sel_tb,i_tb}=m;
      #1;
    end

    #1;
    $finish;

  end

endmodule
