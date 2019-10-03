%{
complete information
name:[Wong Hong Tsun]
UID:[3035374852]
put on website:[yes]
%}
function pi_n = code_template( )
n = 6; %initialize the first polygon with 6 sides.
Ln =1; %the length of the initial hexagon
while(n<10000)
    %start your coding from here
    n = n*2;
    Ln = sqrt(2+Ln);
    pi_n = 0.5*n*sqrt(2-Ln);
    
    fprintf('n, my_pi = %d,  %.15f\n',n,pi_n)
end
end
%{
please paste your print out here:
 like this£º
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
%}