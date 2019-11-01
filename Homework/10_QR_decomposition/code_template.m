function [Q,R] = qr_tridiagonal(matA)
% apply qr decomposition on tri-daigonal matrix
% matA: tri-diagonal
% (ret1)Q(N0,N0): orthogonal matrix
% (ret2)R(N0,N0): upper triangle matrix
tmp1 = (max(max(abs(triu(matA,2))))<1e-7) && max(max(abs(tril(matA,-2))))<1e-7;
assert(tmp1, 'qr_tridiagonal require tri-diagonal matrix')
N0 = size(matA,1);
R = matA;
Q = eye(N0);

end