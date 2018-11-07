module comparador3 (
  input logic [7:0] I0, I1, I2,
  output logic [7:0] S0, S1, S2
);
  
  logic [7:0] C0, C1, C2;

    comparador2 comp1(.I0(I0), .I1(I1),
                      .S0(C0), .S1(C1));
  	comparador2 comp2(.I0(C1), .I1(I2),
                      .S0(C2), .S1(S2));
  	comparador2 comp3(.I0(C0), .I1(C2),
                      .S0(S0), .S1(S1));

endmodule