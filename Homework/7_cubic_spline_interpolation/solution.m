%{
complete information
name:[]
UID:[]
put on website:[yes or no]
%}
function y = code_template( )
x0 = linspace(0,4*pi, 9);
f = [0 1 0 1 0 1 0 1 0];
h = pi/2;
mat_A = h*(4*eye(7)+diag(ones(6,1),1)+diag(ones(6,1),-1));
d = zeros(7,1);
for i = 1:7 
    d(i) = 6*((f(i+2)-f(i+1))/h - (f(i+1)-f(i))/h);
end
b = inv(mat_A)*d;
disp(b);
lam = (x0(3)-2.5)/h;
omega = 1-lam;
result = f(2)*lam+f(3)*omega+ b(1)*h^2*(lam^3-lam)/6+b(2)*h^2*(omega^3-omega)/6;
y = result;
end