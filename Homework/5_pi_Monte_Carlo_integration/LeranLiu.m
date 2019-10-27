%{
complete information
name:[LIU Leran]
UID:[3035448407]
put on website:[yes]
%}

function ret = code_template(num_point)
a = -1;
b = 1;
%---start from here---
x = rand([1,num_point])*(b-a) + a;
ret = 0.5 * sum(4 ./ (1 + x.^2))/num_point * (b-a);
pi_mc = ret;
end