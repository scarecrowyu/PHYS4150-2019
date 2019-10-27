%{
complete information
name:[Tong Kaiyi]
UID:[3035335193]
put on website:[no]
%}
function ret = pi_mc(n)
%---start from here---
M = 0;
N = 0; 
for i = 1:n
    x = rand;
    y = rand;
    if x^2+y^2>1
        M = M+1;
        N = N;
    else
        M = M+1;
        N = N+1;
    end
i = i+1;
end
ret = 4*N/M
end