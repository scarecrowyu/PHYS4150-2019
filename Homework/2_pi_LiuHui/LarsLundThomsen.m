%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}

function pi_n = code_template( )
n = 6; %initialize the first polygon with 6 sides.
kn =1; %initial length of first polygon

while(n<100000)
    k2n=sqrt(2+kn); %Temoprary value
    Sn=sqrt(2-kn); % Calculate side length of n2
    Pn=1/2*n*Sn ; % Calculate the area
    pi_n=Pn ; %Area is just equal to pi
    fprintf('n, my_pi = %d,  %.15f\n',n,pi_n) % print pi
    n=n*2; %Update with new values of n to itelerate
    kn=k2n; % update with new values of kn to itelerate

end
%end
%{
Reprint my values up to n=98304
n, my_pi = 6,  3.000000000000000
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
%}