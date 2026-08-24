module mux2_1_tb;

reg s_tb;
reg [1:0] i_tb;
wire y_tb;
integer m,n;

mux2_1 DUT (.s(s_tb), .i(i_tb), .y(y_tb));

initial begin
$monitor("Time=%0t,s_tb=%b,i_tb=%b,y_tb=%b", $time, s_tb, i_tb, y_tb );
for(m=0;m<4;m=m+1)begin
for(n=0;n<2;n=n+1)begin
i_tb=m;
s_tb=n;
#1;
end
end
//$monitor("Time=%0t,s_tb=%b,i_tb=%b,y_tb=%b", $time, s_tb, i_tb, y_tb );

$finish;
end 
endmodule
