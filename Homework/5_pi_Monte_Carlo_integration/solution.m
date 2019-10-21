%{
complete information
name:[]
UID:[]
put on website:[yes or no]
%}
function ret = code_template(num_point)
a = -1;
b = 1;
%---start from here---

x = rand([1,num_point])*(b-a)+a;
ret = sum(sqrt(1-x.^2))/num_point*(b-a);
ret = 2*ret;
pi_mc = ret;
end