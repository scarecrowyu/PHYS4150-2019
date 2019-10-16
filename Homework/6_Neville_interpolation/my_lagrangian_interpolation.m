function y = my_lagrangian_interpolation(x0, y0, x)
% reference: https://en.wikipedia.org/wiki/Lagrange_polynomial
% x0(1,N0) y0(1,N0) x(1,N1) y(1,N1)
N0 = size(x0,2);
y = zeros(1, size(x,2));

for ind1 = 1:N0
    tmp1 = x0([1:(ind1-1),(ind1+1):N0]);
    y = y + prod(x- tmp1',1)/prod(x0(ind1)-tmp1',1)*y0(ind1);
end
end