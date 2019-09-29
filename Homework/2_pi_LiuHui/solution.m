%{
complete information
name:[]
UID:[]
put on website:[yes or no]
%}
function pi_n = code_template( )
n = 6; %initialize the first polygon with 6 sides.
Ln =1;
while(n<10000)
    n = n*2;
    h = sqrt(1-(Ln/2)^2);
    Ln = sqrt((Ln/2)^2+(1-h)^2);
    pi_n = n*Ln/2;
    fprintf('n, my_pi = %d,  %.15f\n',n,pi_n)
end
end