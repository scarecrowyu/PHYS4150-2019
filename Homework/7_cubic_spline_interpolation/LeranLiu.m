%reference to http://fourier.eng.hmc.edu/e176/lectures/ch7/node6.html
%step one: get M from getting u and v (left)
%step two: get second derivative matrix from divided differences
x0 = linspace(0,4*pi, 9);
f = [0 1 0 1 0 1 0 1 0];
x = x0

n = length(x0);

%%Constructing Matrix A
h1 = x0(2)-x0(1);
h2 = x0(3)-x0(1);
A = zeros(n-2,n-2);

for i = 2:(n-3)
    A(i,i) = 2 * h2;
    A(i,i-1) = h1;
    A(i,i+1) = h1;   
end
%i = 1;
A(1,1) = 2*h2;
A(1,2) = h1;
%i = n-2;
A(n-2,n-3) = h1;
A(n-2,n-2) = 2*h2;


%%Constructing Matrix d
d = zeros(n-2,1);
dy = zeros(n-1,1);

for i = 1:(n-1)
    dy(i) = (f(i+1)-f(i))/(x(i+1)-x(i));
end
for i = 2:(n-3)
    d(i)=6 * (dy(i+1)-dy(i));
end
%second derivative condition f''(0)=f''(4pi) = 0
d(1) = 6 * (dy(2)-dy(1)) - h1 * 0;
d(n-2) = 6 * (dy(n-2+1)-dy(n-2)) - h1 * 0;


%%solution
SecondDerivative = zeros(n-2);
SecondDerivative = inv(A) * d;


%%get the solution for 2.5
%as pi/2<2.5<pi
%get u and v
%for in
% f[x2,x3]= f(2)u2 + f3*v2 + f''2 (intv)(u2)+f''3intv(v2);
%u2 = (x3-x)/(x3-x2) =  v2 = (x-x2)/(x3-x2);
%
u2 = (x(3)-2.5)/h1;
v2 = (2.5 - x(2))/h1;
fpp2 = SecondDerivative(1);
fpp3 = SecondDerivative(2);
intv = h1 * h1 / 6;
u2p = (u2)^3 - u2;
v2p = (v2)^3 - v2;
result = f(2)*u2 + f(3)*v2 + fpp2*intv*u2p +fpp3*intv*v2p;
disp(result)
