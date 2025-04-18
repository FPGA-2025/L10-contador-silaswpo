module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

// Insira seu código aqui

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        saida <= 8'd106; // reset inicia com 106
    else if (acrescer && !decrecer)
        saida <= saida + 1;
    else if (!acrescer && decrecer)
        saida <= saida - 1;
    else
        saida <= saida; // mantém valor atual
end

endmodule  

