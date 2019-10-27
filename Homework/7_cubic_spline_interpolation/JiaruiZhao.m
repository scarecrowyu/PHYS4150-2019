%{
complete information
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}
function y = code_template()   
x0 =[0 pi/2 pi 3*pi/2 2*pi 5*pi/2 3*pi 7*pi/2 4*pi];
f = [0 1 0 1 0 1 0 1 0];
N=length(f)-1;
d=zeros(N-1,1);
A=zeros(N-1,N-1);
for ii = 1:N-1
    d(ii)=6*((f(ii+2)-f(ii+1))/(x0(ii+2)-x0(ii+1))-(f(ii+1)-f(ii))/(x0(ii+1)-x0(ii)));
end
for ii =1:N-1
    A(ii,ii)=2*(x0(ii+2)-x0(ii));
end
for ii=1:N-2
    A(ii,ii+1)=x0(ii+2)-x0(ii+1);
    A(ii+1,ii)=x0(ii+3)-x0(ii+2);
end

ff=A^(-1)*d;


a=linspace(pi/2,pi, 500);
b=zeros([500,1]);
c=sin(a);
for jj=1:500
    b(jj)=(pi-a(jj))/(pi/2)+ff(1)*((pi/2)^2)/6*(((pi-a(jj))/(pi/2))^3-(pi-a(jj))/(pi/2))+ff(2)*((pi/2)^2/6)*(((a(jj)-pi/2)/(pi/2))^3-(a(jj)-pi/2)/(pi/2));
end

plot(a,b)
hold on
plot(a,c)

fprintf('the value of interpolated value of f(2.5) is%6.2f\n',(pi-2.5)/(pi/2)+ff(1)*((pi/2)^2)/6*(((pi-2.5)/(pi/2))^3-(pi-2.5)/(pi/2))+ff(2)*((pi/2)^2/6)*(((2.5-pi/2)/(pi/2))^3-(2.5-pi/2)/(pi/2)))

end



