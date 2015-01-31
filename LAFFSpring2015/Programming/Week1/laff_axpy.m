function [ y_out ] = laff_axpy( alpha, x, y )
%laff_axpy computes alpha * x + y given scalar alpha and vectors x and y.
%  x and y must be either an n x 1 array (column vector) or a 1 x n array (row vector)
%  y_out will be the same kind of vector as y
%  If x and y or alpha are not a (row or column) vector and scalar, respectively, the output will be 'FAILED'.

if ~isscalar(alpha)
    y_out = 'FAILED';
    return;
end

if ~isvector(x) || ~isvector(y)
    y_out = 'FAILED';
    return;
end

[m_x, n_x] = size(x);
[m_y, n_y] = size(y);

upper_x = max([m_x n_x]);
upper_y = max([m_y n_y]);

%ensure dimensions are compatible
if (upper_x ~= upper_y)
    y_out = 'FAILED';
    return;
end

%place into the same shape
if (m_x ~= m_y)
    x = x';
end

for i=1:upper_y
    y(i) = alpha * x(i) + y(i);
end

y_out = y;
end

