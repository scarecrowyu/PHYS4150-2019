function ret = my_gauss_jordan0_inv(matA)
% matA(N0,N0) vecb(N0,N0)
% ret(N0,1)
% reference: https://en.wikipedia.org/wiki/Gaussian_elimination
N0 = size(matA,1);
vecb = eye(N0);
matA = [matA,vecb];

end