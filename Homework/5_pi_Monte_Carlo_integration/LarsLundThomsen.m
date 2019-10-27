  
%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}
function ret = Monte_Carlo_pi(num_point)
a = 0;
b = 1; 
n=num_point;
%We know the integral value should give pi/4, so we can use this Monte
%Carlo integration to estimate pi.
x=(rand([1,n])-a)/(b-a); %last bit only neasicary if a is not equal to 0

I=sum(1./(1+x.^2))*(b-a)/n; %last bit corresponds to dx 
pi_mc=4*I; % result is I=pi/4, so pi=I*4 

ret = pi_mc;
end

