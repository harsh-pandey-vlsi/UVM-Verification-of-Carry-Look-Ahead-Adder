`timescale 1ns/1ps
module cla_4bit(
  input logic [3:0]a,b,
  input logic cin,
  output logic [3:0]sum,
  output logic cout
);
  logic [3:0]G,P;
  logic [4:0]C;
  
  assign C[0] = cin;
  assign G = a&b;
  assign P = a^b;
  
  assign C[1] = G[0] | (P[0]&C[0]);
  assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
  assign C[3] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
  assign C[4] = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
  
  assign sum = P^C[3:0];
  assign cout = C[4];
  
endmodule
                        
