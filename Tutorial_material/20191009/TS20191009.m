syms x;
expr = exp(-x);
taylor_coefficient = sym2poly(taylor(expr,x,'order',6));   %a0+a1*x+a2*x^2+...+a5*x^5,[a0,a1,a2,a3,a4,a5]
n = 3;
m = size(taylor_coefficient,2)-1-n;
reverse_taylor = flip(taylor_coefficient,2);
tmp1 = repmat(reverse_taylor(1:(end-1)),m,1);
tmp2 = full(spdiags(tmp1,-1:-1:(-n-m),m+n+1,m));
matA = [[eye(n+1);zeros(m,n+1)],-tmp2];
tmp3 = matA\reverse_taylor.';
p = flip(tmp3(1:n+1),1).';
q = [flip(tmp3(n+2:end),1).',1];
