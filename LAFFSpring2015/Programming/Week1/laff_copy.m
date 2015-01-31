function [ y_out ] = laff_copy( x, y )
%laff_copy copies a vector into another vector.
%  x and y must each be either an n x 1 array (column vector) or a 1 x n array (row vector)
%  y_out will be the same kind of vector as y 
%  If x and/or y are not vectors or if the size of (row or column) vector x does not match the size of (row or column) vector y, the output will be 'FAILED'.

[m_x, n_x] = size(x);
[m_y, n_y] = size(y);

lower_y = min([m_y n_y]);
lower_x = min([m_x n_x]);

%ensure both are vectors
if (lower_x ~= 1) || (lower_y ~= 1)
    y_out = 'FAILED';
    return;
end

upper_y = max([m_y n_y]);
upper_x = max([m_x n_x]);

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
    y(i) = x(i);
end

y_out = y;
end

