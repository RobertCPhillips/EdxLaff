function [ alpha ] = laff_dot( x, y )
%laff_dot computes the dot product of vectors x and y.
%  x and y must be either an n x 1 array (column vector) or a 1 x n array (row vector)

if ~isvector(x) || ~isvector(y)
    alpha = 'FAILED';
    return;
end

[m_x, n_x] = size(x);
[m_y, n_y] = size(y);

upper_x = max([m_x n_x]);
upper_y = max([m_y n_y]);

%ensure dimensions are compatible
if (upper_x ~= upper_y)
    alpha = 'FAILED';
    return;
end

alpha = 0;

for i=1:upper_y
    alpha = alpha + x(i) * y(i);
end

end

