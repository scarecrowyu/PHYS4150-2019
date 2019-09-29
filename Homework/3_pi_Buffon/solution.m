%{
complete information
name:[]
UID:[]
put on website:[yes or no]
%}
function pi_buffon = code_template( )
N = 1e5;
theta = rand(1,N)*pi;
drop = rand(1,N)/2;
M = sum(sin(theta)/2 > drop);
pi_buffon = 2*N/M;
end