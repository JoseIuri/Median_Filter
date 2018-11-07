// Code your testbench here
// or browse Examples
`include"ordenador9.sv"
`include"comparador2.sv"
`include"comparador3.sv"


module top();
  logic [7:0] I0, I1, I2, I3, I4, I5, I6, I7, I8;
  logic [7:0] S0, S1, S2, S3, S4, S5, S6, S7, S8, testedofiltro;
  
  ordenador9 DUT( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .I8(I8), .S0(S0), .S1(S1), .S2(S2), .S3(S3), .S4(S4), .S5(S5), .S6(S6), .S7(S7), .S8(S8));
  
  filtro DUT2( .E0(I0), .E1(I1), .E2(I2), .E3(I3), .E4(I4), .E5(I5), .E6(I6), .E7(I7), .E8(I8), .S0(testedofiltro));
  
  initial begin
    
    for(int i=1;i<101;i++)
    begin
      $srandom(i);
   

    	
      #5 I0 = $urandom_range(255,0);
    	#5 I1 = $urandom_range(255,0);
    	#5 I2 = $urandom_range(255,0);
    	#5 I3 = $urandom_range(255,0);
    	#5 I4 = $urandom_range(255,0);
    	#5 I5 = $urandom_range(255,0);
    	#5 I6 = $urandom_range(255,0);
    	#5 I7 = $urandom_range(255,0);
    	#5 I8 = $urandom_range(255,0);
    	
    
    	#5
      $display ("filtro: %h", testedofiltro);
      $display ("correta: %h", saidaCorreta(I0, I1, I2, I3, I4, I5, I6, I7, I8));
      
      if (testedofiltro == saidaCorreta(I0, I1, I2, I3, I4, I5, I6, I7, I8))
        $display ("ok");
      else
        $display ("Erro - Entradas: %h %h %h %h %h %h %h %h %h Saida: %h", I0, I1, I2, I3, I4, I5, I6, I7, I8, testedofiltro);
    end
  end
  
  function logic [7:0] saidaCorreta(input logic [7:0] I0, I1, I2, I3, I4, I5, I6, I7, I8);
    logic [7:0] q[$];
    
	  q[0] = I0;
      q[1] = I1;
      q[2] = I2;
      q[3] = I3;
      q[4] = I4;
      q[5] = I5;
      q[6] = I6;
      q[7] = I7;
      q[8] = I8;

      if (q[4] == 8'd0 || q[4] == 8'd255) 
      		q.sort();
     
    	saidaCorreta = q[4];
    
  endfunction
  
endmodule