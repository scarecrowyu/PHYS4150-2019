%{
complete infomation in the sqare brackets []

name:[]
uid: []
put on course website: [yes or no]
%}

function ret = code_template(matA,vecb)
% solve linear equation Ax=b using LU decomposition
% matA(N1,N1), matB(N1,1), ret(N1,1)
% convention: diagonal elements of matL are 1
% reference: https://en.wikipedia.org/wiki/LU_decomposition
N1 = size(matA,1);
[matL,matU] = my_LU_decomposition(matA);
% solve: matL*x = vecb
% ---start of your code (almost 4 lines)

% ---end of your code

% solve: matU*y = x
% ---start of your code (almost 7 lines)

ret = zeros(N1,1);
% ---end of your code
end

function [matL,matU] = my_LU_decomposition(matA)
% decompose matrix A into lower trianglar matrix L and upper trianglar matrix: A = LU
% matA(N1*N1) matL(N1*N1) matU(N1*N1)
% convention: diagonal elements of matL are 1
N1 = size(matA,1);
% ---start of your code 
matU = zeros(N1,N1);
matL = eye(N1,N1);


% ----end of your code
end
