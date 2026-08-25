module mux4_1_tb;
reg [1:0] s_tb;
reg [3:0] i_tb;
wire y_tb;
integer m;

mux4_1 DUT (.sel(s_tb), .i(i_tb), .y(y_tb) );

initial begin
$monitor("Value of inputs and outputs are Time=%0t,s_tb=%b, i_tb=%b, y_tb=%b", $time, s_tb, i_tb, y_tb);

for(m=0;m<64;m=m+1) begin
{s_tb,i_tb}=m;
#5;
end

#1;
$finish;
end

endmodule
