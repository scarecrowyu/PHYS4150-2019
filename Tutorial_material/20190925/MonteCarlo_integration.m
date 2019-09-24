a = 1;
b = 3;
n = 300;
x = rand([1,n])*(b-a)+a;
I = sum(x.^3)/n*(b-a);
I_real = (b^4-a^4)/4;
error = I_real - I;