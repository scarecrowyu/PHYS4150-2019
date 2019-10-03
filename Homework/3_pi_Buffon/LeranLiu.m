%{
complete information
name:[LIU Leran]
UID:[3035448407]
put on website:[yes]
%}
function pi_buffon = code_template( )
N = 1e7; %number of the needles dropped
pi_buffon = 0;
m = 0
for k = 1:N
    x = unifrnd(0,0.5);
    p = unifrnd(0,pi);
    if x<0.5*sin(p)
        m = m+1;
    else
        m = m;
    end
end
p = m / N
pi_buffon = 2/p;
end