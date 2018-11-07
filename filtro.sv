module filtro(
  input logic [7:0] E0, E1, E2, E3, E4, E5, E6, E7, E8,
  output logic [7:0] S0);
  
  logic [7:0] mediana;
  
  ordenador9 filtromediana( .I0(E0), .I1(E1), .I2(E2), .I3(E3), .I4(E4), .I5(E5), .I6(E6), .I7(E7), .I8(E8), .S0(), .S1(), .S2(), .S3(), .S4(mediana), .S5(), .S6(), .S7(), .S8());
  
  always_comb
    begin
      if (E4 == 8'h00)
        begin
          S0 = mediana;
        end
      else if (E4 == 8'hff) 
        begin
          S0 = mediana;
        end
      else 
        begin
          S0 = E4;
      	end
    end
  
endmodule