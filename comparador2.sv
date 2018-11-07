module comparador2 (
  input logic [7:0] I0, I1,
  output logic [7:0] S0, S1
);
  
  always_comb
    begin
    if (I0 > I1)
    begin
        S0 = I0;
      	S1 = I1;
    end
  	else
    begin
  	    S0 = I1;
        S1 = I0;  
    end
  end
endmodule