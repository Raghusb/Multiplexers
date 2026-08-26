module mux8_1 (input [2:0] sel, input [7:0] i, output reg y);

  always@(*)
    begin
      case(sel) 
        3'd0: y=i[0];
        3'd1: y=i[1];
        3'd2: y=i[2];
        3'd3: y=i[3];
        3'd4: y=i[4];
        3'd5: y=i[5];
        3'd6: y=i[6];
        3'd7: y=i[7];
        default: y=1'bx;
      endcase
    end 
endmodule
