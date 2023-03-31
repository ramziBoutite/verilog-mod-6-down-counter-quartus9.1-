module nvm00 (
input clk,
input rst,
output [2:0] count 
);
reg [2:0] tempo;
always@(negedge rst, negedge clk)
begin
if (!rst)
tempo = 3'h0;
else if (tempo == 3'h0)
tempo = 3'b101;
else tempo = tempo - 3'b1;
end 
assign count = tempo;
endmodule 