% matA(N0,N0)
% ret(1,1)
% reference: https://en.wikipedia.org/wiki/Determinant
N0 = size(matA,1);
sign = 1;
for ind1 = 1:(N0-1)
    [~,ind2] = max(abs(matA(ind1:end,ind1)));
    if ind2~=1
        sign = -sign;
        matA([ind1,ind1+ind2-1],ind1:end) = matA([ind1+ind2-1,ind1],ind1:end);
    end
    tmp1 = -matA((ind1+1):N0,ind1)/matA(ind1,ind1);
    matA((ind1+1):N0,ind1:end) = matA((ind1+1):N0,ind1:end) + tmp1.*matA(ind1,ind1:end);
end
ret = prod(diag(matA))*sign;
end