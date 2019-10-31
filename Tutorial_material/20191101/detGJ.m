function ret = my_gauss_jordan_det(matA)
% calculate matrix determinant using Gauss Jordan Elimination no pivot
% matA(N0,N0)
% ret(1,1)
% reference: https://en.wikipedia.org/wiki/Determinant
N0 = size(matA,1);
for ind1 = 1:(N0-1)
    tmp1 = -matA((ind1+1):N0,ind1)/matA(ind1,ind1);
    matA((ind1+1):N0,ind1:end) = matA((ind1+1):N0,ind1:end) + tmp1.*matA(ind1,ind1:end);
end
ret = prod(diag(matA));
end
