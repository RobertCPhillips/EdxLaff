function [ alpha ] = laff_norm2( x )
%laff_dot computes the length of vector x.
%  x must be either an n x 1 array (column vector) or a 1 x n array (row vector)

if ~isvector(x)
    alpha = 'FAILED';
    return;
end

[m_x, n_x] = size(x);
upper_x = max([m_x n_x]);

alpha = 0;

for i=1:upper_x
    alpha = alpha + x(i) * x(i);
end

alpha = sqrt(alpha);
end

