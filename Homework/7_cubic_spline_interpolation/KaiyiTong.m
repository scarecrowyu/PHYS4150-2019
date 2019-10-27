%{
complete information
name:[Tong Kaiyi]
UID:[3035335193]
put on website:[no]
%}
function ret = CubicSpline(x)
x0 = linspace(0,4*pi, 9);
f = [0 1 0 1 0 1 0 1 0];
n = size(x0,2)-2;
h = zeros(n,1);
p = zeros(n,1);
q = zeros(n,n);
a = zeros(n+1,1);
b = zeros(n+1,1);
c = zeros(n+1,1);
d = zeros(n+1,1);
m = zeros(n+2,1);
%start from here
for i = 1:n
    a(i,1) = x0(i+1)-x0(i);
    h(i,1) = x0(i+1)-x0(i);
    p(i,1) = 6*((f(i+2)-f(i+1))/(x0(i+2)-x0(i+1))-(f(i+1)-f(i))/(x0(i+1)-x0(i)));
    q(i,i) = 2*a(i,1);
end
for j = 2:n
    q(j,j-1) = h(j,1);
    q(j-1,j) = h(j-1,1);
end
disp(q);
disp(p);
r = inv(q)*p;

disp(r);
for k = 2:n+1
    m(k,1) = r(k-1,1);
end
for l = 1:n+1
    a(l,1) = f(l);
    b(l,1) = ((f(l+1)-f(l))/(x0(l+1)-x0(l)))-((x0(l+1)-x0(l))*m(l)/2)-((x0(l+1)-x0(l))*(m(l+1)-m(l))/6);
    c(l,1) = m(l)/2;
    d(l,1) = (m(i+1)-m(i))/(6*(x0(l+1)-x0(l)));
end
g = zeros(n+1,1);
for y = 1:n+1
    g(y,1) = a(y,1)+b(y,1)*(x-x0(y))+c(y,1)*((x-x0(y))^2)+d(y,1)*((x-x0(y))^3);
end
ret = g(floor(x/(0.5*pi))+1,1)
end