// clk is the name for clk simulation of yosys2digitaljs
//
module tutorial(
    input clk,
    input rst,
    output test1, test2, test3, test4
);

 // Verilog Example: 
reg test1 = 1'b1;
reg test2 = 1'b0;
reg test3 = 1'b0;
reg test4 = 1'b0;

always @ (posedge clk or posedge rst)
  if (rst) begin
    test1 <= 1'b1;
    test2 <= 1'b0;
    test3 <= 1'b0;
    test4 <= 1'b0;
  end else if (test4) begin
    test1 <= 1'b1;
    test2 <= 1'b0;
    test3 <= 1'b0;
    test4 <= 1'b0;
  end else
  begin
    test2 <= test1;
    test3 <= test2;
    test4 <= test3;
  end

endmodule 

