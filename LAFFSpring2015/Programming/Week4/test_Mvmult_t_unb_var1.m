A = randi( [ -2, 2 ], 4, 4 )
x = randi( [ -2, 2 ], 4, 1 )
y = randi( [ -2, 2 ], 4, 1 )

if ( isequal( Mvmult_t_unb_var1_unb( A, x, y ), A' * x + y ) )
    disp( 'Mvmult_t_unb_var1_unb appears to be correct' )
else
    disp( 'Mvmult_t_unb_var1_unb has a problem' )
end

