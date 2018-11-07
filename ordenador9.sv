module ordenador9(
  input logic [7:0] I0, I1, I2, I3, I4, I5, I6, I7, I8,
  output logic [7:0] S0, S1, S2, S3, S4, S5, S6, S7, S8);
  
  logic [7:0] zero, C1_4, C1_5, C1_6, C2_4, C2_5, C2_6, C3_4, C3_5, C3_6,  C4_7_1, C4_7_2, C5_7, C5_8, C5_9, C6_8_2, C6_8_3, C7_9_1, C7_9_2, C8_10_2, C8_10_3, C9_11, C9_12, C9_13, C10_11, C10_12, C11_13, C12_13;
  
  
      assign zero = 8'd0;
    
      
      comparador3 comp1 (.I0(I0), .I1(I1), .I2(I2),
                         .S0(C1_4), .S1(C1_5), .S2(C1_6));
      comparador3 comp2(.I0(I3), .I1(I4), .I2(I5),
                        .S0(C2_4), .S1(C2_5), .S2(C2_6));
      comparador3 comp3(.I0(I6), .I1(I7), .I2(I8),
                        .S0(C3_4), .S1(C3_5), .S2(C3_6));
      comparador3 comp4(.I0(C1_4), .I1(C2_4), .I2(C3_4),
                        .S0(S0), .S1(C4_7_1), .S2(C4_7_2));
      comparador3 comp5(.I0(C1_5), .I1(C2_5), .I2(C3_5),
                        .S0(C5_7), .S1(C5_9), .S2(C5_8));
      comparador3 comp6(.I0(C1_6), .I1(C2_6), .I2(C3_6),
                        .S0(C6_8_2), .S1(C6_8_3), .S2(S8));
      comparador3 comp7(.I0(C4_7_1), .I1(C4_7_2), .I2(C5_7),
                        .S0(S1), .S1(C7_9_1), .S2(C7_9_2));
      comparador3 comp8(.I0(C5_8), .I1(C6_8_2), .I2(C6_8_3),
                        .S0(C8_10_2), .S1(C8_10_3), .S2(S7));
      comparador3 comp9(.I0(C7_9_1), .I1(C7_9_2), .I2(C5_9),
                        .S0(C9_11), .S1(C9_13), .S2(C9_12));
      comparador3 comp10(.I0(zero), .I1(C8_10_2), .I2(C8_10_3),
                         .S0(C10_11), .S1(C10_12), .S2());
      comparador2 comp11(.I0(C9_11), .I1(C10_11),
                         .S0(S2), .S1(C11_13));
      comparador2 comp12(.I0(C9_12), .I1(C10_12),
                         .S0(C12_13), .S1(S6));
      comparador3 comp13(.I0(C11_13), .I1(C9_13), .I2(C12_13),
                        .S0(S3), .S1(S4), .S2(S5));
      

endmodule