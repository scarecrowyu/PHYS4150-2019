%{
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}

function pi_buffon = code_template()
N=1e5; %number of the needles
M=0; %number of the needles hitting the line
x_rand=0.5*rand([N,1]);
y_rand=pi*rand([N,1]);
for i=1:N
    if 0.5*sin(y_rand(i))>x_rand(i)
        M=M+1;
    end
end
pi_buffon=2*N/M;
end