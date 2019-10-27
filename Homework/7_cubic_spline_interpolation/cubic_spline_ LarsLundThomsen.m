%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}

x = linspace(0,4*3.14, 9);
y = [0 1 0 1 0 1 0 1 0];
n=size(x,2);

%Due to start from i=1 (notation x(i=1)=x(2), since i=0..N), I transform to x0(2), y0(2)
x0=x(2:n);
y0=y(2:n);


%Intialize coefficient from notes
d=zeros(1,n-2);
b=zeros(1,n-2);
a=zeros(1,n-2);
c=zeros(1,n-2);


%start and end conditions
d(1)=6*((y(3)-y(2))/(x(3)-x(2)) -(y(2)-y(1))/(x(2)-x(1)));
a(1)=0;
c(1)=(x(2)-x(1));
b(1)=2*(x(3)-x(2)+x(2)-x(1)); %Notice b should be b=2*(h(i+1)+h(i)) and not what it says in notes
d(n-1)=6*((y(n)-y(n-1))/(x(n)-x(n-1)) -(y(n-1)-y(n-2))/(x(n-1)-x(n-2)));
a(n-1)=x(n-1)-x(n-2);
c(n-1)=x(n)-x(n-1);
b(n-1)=2*(x(n)-x(n-1)+x(n-1)-x(n-2));





for i = 2:(n-2)
   h1=x(i+1)-x(i); %is constant so I did not need to make array.
   h0=x(i)-x(i-1);
   d(i)=6*(y(i+1)-y(i))/h1 - 6*(y(i)-y(i-1))/h0 ;
   b(i)=2*(h1+h0); %%Notice b should be b=2*(h(i+1)+h(i)) and not what it says in notes
   c(i)=h1;
   a(i)=h0;
   
 
end
%Solve tridiagonal matrix using Thomas algorithm in tridag
fdotdot=tridiag(b,a,c,d); % This solve the tridiagonal matrix, see attached file

%initialize coefficient in the polynomial p(x0(k)) = d(i) + c(i)*(x0(k)-x(i))+v(i)*(x0(k)-x(i))^2+d(i)*(x0(k)-x(i))^3 
d0=zeros(1,n-1);
b0=zeros(1,n-1);
a0=zeros(1,n-1);
c0=zeros(1,n-1);

fdotdot1=zeros(1,n);
fdotdot1(1)=0;
fdotdot1(n)=0;
fdotdot1(2:n-1)=fdotdot(1:n-2);
%Calculate coefficient in cubic powerlaw polynomial (see: http://www.maths.lth.se/na/courses/FMN081/FMN081-06/lecture11.pdf)
for i = 1:n-2
    d0(i)=y(i);
    b0(i)=fdotdot(i)/2;
    a0(i)=(fdotdot(i+1)-fdotdot(i))/(6*h1);
    c0(i)=(y(i+1)-y(i))/h1-h1*(2*fdotdot(i)+fdotdot(i+1))/6;
    end

%Interpolate around xtest.
xtest = linspace(0.05,3*3.14,100);

N0=size(xtest,2);
x_inter=zeros(1,N0);
for j =1:N0
    for k=1:n
        if x(k)>=xtest(j)
            i=k-1; % Need the value before x(k)> xtest(j)
            x_inter(j)=y(i)+c0(i)*(xtest(j)-x(i))+b0(i)*(xtest(j)-x(i)).^2+a0(i)*(xtest(j)-x(i)).^3;
            break
        end
    end
end
q=x_inter;

%plot result
plot(xtest,x_inter) 

