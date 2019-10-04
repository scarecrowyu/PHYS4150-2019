%{
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}
function pi_n = code_template( )
n = 6; %initialize the first polygon with 6 sides.
Ln =1; %the length of the initial hexagon
while(n<100000)
    %start your coding from here
    n=2*n;
    Ln=sqrt(2-2*sqrt(1-Ln^2/4));
    pi_n=n*Ln/2;
    fprintf('n, my_pi = %d,  %.15f\n',n,pi_n)
end
end
%{
n, my_pi = 12,  3.105828541230250
n, my_pi = 24,  3.132628613281237
n, my_pi = 48,  3.139350203046872
n, my_pi = 96,  3.141031950890530
n, my_pi = 192,  3.141452472285344
n, my_pi = 384,  3.141557607911622
n, my_pi = 768,  3.141583892148936
n, my_pi = 1536,  3.141590463236762
n, my_pi = 3072,  3.141592106043048
n, my_pi = 6144,  3.141592516588155
n, my_pi = 12288,  3.141592618640789
n, my_pi = 24576,  3.141592645321216
n, my_pi = 49152,  3.141592645321216
n, my_pi = 98304,  3.141592645321216
n, my_pi = 196608,  3.141592645321216
%}