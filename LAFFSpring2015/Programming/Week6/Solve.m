function [ A_out, b_out ] = Solve( A, b )

  LU = LU_unb_var5( A );
  
  z = Ltrsv_unb_var1( LU, b );

  U = triu( LU );
  
  x = U \ z;
  
  A_out = LU;
  b_out = LU*x;
return