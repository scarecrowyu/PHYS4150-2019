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
for ind1 = 1:N0-1
    theta = atan(R(ind1+1,ind1)/R(ind1,ind1));
    c = cos(theta);
    s = sin(theta);
    
    tmp1 = c*R(ind1,:) + s*R(ind1+1,:);
    tmp2 = -s*R(ind1,:) + c*R(ind1+1,:);
    R([ind1,ind1+1],:) = [tmp1;tmp2];
    
    tmp1 = c*Q(:,ind1) + s*Q(:,ind1+1);
    tmp2 = -s*Q(:,ind1) + c*Q(:,ind1+1);
    Q(:,[ind1,ind1+1]) = [tmp1,tmp2];
end
end