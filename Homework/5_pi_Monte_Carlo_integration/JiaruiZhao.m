%{
complete information
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}

function ret = code_template(num_point)
a = -1;
b = 1;
%---start from here---
n=0;
x=rand([2,num_point])*(b-a)+a;
for ii=1:num_point
    if x(1,ii)^2+x(2,ii)^2<1
        n=n+1;
    end
end

pi_mc=n/num_point;
ret=pi_mc*4;
end

