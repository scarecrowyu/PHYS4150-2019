%{
complete information
name:[Tong Kaiyi]
UID:[3035335193]
put on website:[no]
%}
function ret2 = Neville(x, y, x0)
% neville interpolation
% Approximate the value of the polynomial @ x0
% reference: https://en.wikipedia.org/wiki/Neville%27s_algorithm
% x0(1,N0) y0(1,N0) x(1,N1) y(1,N1)
q = zeros(size(x,2),size(x,2));
% --- strat coding from here ---
for i = 1:size(x,2)
    q(i,1) = y(i)
end
for j = 2:size(x,2)
    for k = j:size(x,2)
        q(k,j) = ((x0-x(k-j+1))*q(k,j-1)-(x0-x(k))*q(k-1,j-1))/(x(k)-x(k-j+1)) ;
    end
end
approx = q(size(x,2),size(x,2));
ret1 = q
ret2 = approx
% --- end coding ---
end