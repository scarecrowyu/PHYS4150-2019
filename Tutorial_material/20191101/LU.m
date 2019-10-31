function [matL,matU] = my_LU_decomposition(matA)
% decompose matrix A into lower trianglar matrix L and upper trianglar matrix: A = LU
% matA(N1*N1) matL(N1*N1) matU(N1*N1)
% convention: diagonal elements of matL are 1
N1 = size(matA,1);
matU = zeros(N1,N1);
matL = eye(N1,N1);

matU(1,:) = matA(1,:);
matL(:,1) = matA(:,1)/matA(1,1);
for ind1 = 2:N1
    tmp1 = (ind1+1):N1;
    tmp2 = 1:(ind1-1);
    tmp3 = ind1:N1;
    matU(ind1,tmp3) = matA(ind1,tmp3) - matL(ind1,tmp2)*matU(tmp2,tmp3);
    matL(tmp1,ind1) = (matA(tmp1,ind1) - matL(tmp1,tmp2)*matU(tmp2,ind1))/matU(ind1,ind1);
end
end
