function [ x_out ] = laff_scal( alpha, x )
%laff_scal scales a vector x by a scalar alpha
%  x must be either an n x 1 array (column vector) or a 1 x n array (row vector)
%  x_out will be the same kind of vector as x
%  If x or alpha are not a (row or column) vector and scalar, respectively, the output will be 'FAILED'.

if ~isscalar(alpha)
    x_out = 'FAILED';
    return;
end

if ~isvector(x)
    x_out = 'FAILED';
    return;
end

[m_x, n_x] = size(x);
upper_x = max([m_x n_x]);

for i=1:upper_x
    x(i) = alpha * x(i);
end

x_out = x;
end

