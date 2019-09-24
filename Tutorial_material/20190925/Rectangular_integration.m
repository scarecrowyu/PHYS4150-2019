a = 1;
b = 3;
N = 10;
h = abs((b-a)/N);
x = linspace(a,b,N+1);
I = 0;
for i = 1:N
    x_i = (x(i)+x(i+1))/2;
    fx = x_i^3;
    I =I + h*fx;
end
I_real = (b^4-a^4)/4;
error = I_real-I;