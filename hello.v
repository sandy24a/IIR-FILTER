module iirfilter(clk,rst,a,x,y);
input clk,rst;
input[3:0]a,x;
output[3:0]y;
reg[3:0]y_val;
wire[7:0]baugh_prod_actual;
baugh_mult bm1(.a(a), .b(y_val), .p(baugh_prod_actual));
always@(posedge clk,rst,x,a)
begin
    if (rst) begin
        y_val<=x;

end
end begin
    y_val <=x + booth_prod_actual[3:0];
end
endassign y= y_val;
endmodule