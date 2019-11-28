function ret = solution(matA,vecb)
% solve linear equation Ax=b using LU decomposition
% matA(N1,N1), matB(N1,1), ret(N1,1)
% convention: diagonal elements of matL are 1
% reference: https://en.wikipedia.org/wiki/LU_decomposition
N1 = size(matA,1);
[matL,matU] = my_LU_decomposition(matA);
% solve: matL*x = vecb
for ind1 = 1:(N1-1)
    vecb((ind1+1):end) = vecb((ind1+1):end) - matL((ind1+1):end,ind1)*vecb(ind1);
end

% solve: matU*y = x
for ind1 = N1:-1:2
    tmp1 = matU(ind1,ind1);
    matU(ind1,ind1:end) = matU(ind1,ind1:end)/tmp1; %normalize
    vecb(ind1) = vecb(ind1) / tmp1; %normalize
    vecb(1:(ind1-1)) = vecb(1:(ind1-1)) - matU(1:(ind1-1),ind1)*vecb(ind1); %Gauss Elim
end
vecb(1) = vecb(1) / matU(1,1);
ret = vecb;
end

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
