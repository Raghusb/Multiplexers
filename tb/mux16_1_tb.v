module mux16_1_tb ;
  reg [3:0] sel_tb;
  reg [15:0] i_tb;
  wire y_tb;

  integer m,n;

  mux16_1 DUT (.sel(sel_tb), .i(i_tb), .y(y_tb) );

  initial begin
    $monitor ("Values of inputs and outputs are Time=%0t, sel_tb=%0b, i_tb=%0b, y_tb=%0b", $time, sel_tb, i_tb, y_tb );

    for(m=0;m<16;m=m+1) begin
      for(n=0; n<=15; n=n+1) begin
        i_tb=m[15:0];
        sel_tb=n[3:0];

        #1;
      end
    end

    #5;
    $finish;

  end

endmodule
