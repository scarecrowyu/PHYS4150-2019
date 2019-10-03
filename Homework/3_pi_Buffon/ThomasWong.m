%{
complete information
name:[Wong Hong Tsun]
UID:[3035374852]
put on website:[yes]
%}
function pi_buffon = code_template( )
N = 1e5; %number of the needles dropped
pi_buffon = 0;
x = 0.5*rand(1,N);
y = rand(1,N);
M = sum(x < 0.5*sin(y*pi));
pi_buffon = 2*N/M;
end