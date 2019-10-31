function ret = my_gauss_jordan0_Ab(matA, vecb)
% matA(N0,N0) vecb(N0,1)
% ret(N0,1)
% reference: https://en.wikipedia.org/wiki/Gaussian_elimination
N0 = size(matA,1);
matA = [matA,vecb];
for ind1 = 1:(N0-1)
    matA(ind1,:) = matA(ind1,:) / matA(ind1,ind1);
    matA((ind1+1):N0,ind1:end) = matA((ind1+1):N0,ind1:end) - matA((ind1+1):N0,ind1).*matA(ind1,ind1:end);
end
matA(N0,:) = matA(N0,:)/matA(N0,N0);
for ind1 = N0:-1:2
    matA(1:(ind1-1),ind1:end) = matA(1:(ind1-1),ind1:end) - matA(1:(ind1-1),ind1)*matA(ind1,ind1:end);
end
ret = matA(:,(N0+1):end);
end