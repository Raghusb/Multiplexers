module mux16_1 (input [3:0] sel, input [15:0] i, output reg y);

  always@(*) 
    begin
      case(sel) 
        4'd0: y=i[0];
        4'd1: y=i[1];
        4'd2: y=i[2];
        4'd3: y=i[3];
        4'd4: y=i[4];
        4'd5: y=i[5];
        4'd6: y=i[6];
        4'd7: y=i[7];
        4'd8: y=i[8];
        4'd9: y=i[9];
        4'd10: y=i[10];
        4'd11: y=i[11];
        4'd12: y=i[12];
        4'd13: y=i[13];
        4'd14: y=i[14];
        4'd15: y=i[15];

        default: y=1'bx;

      endcase

    end
endmodule 
