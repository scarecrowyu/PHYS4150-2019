%{
complete information
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}
function y = code_template(x0, y0, x)
% neville interpolation
% reference: https://en.wikipedia.org/wiki/Neville%27s_algorithm
% x0(1,N0) y0(1,N0) x(1,N1) y(1,N1)
N0 = size(x0, 2);
N1=size(x,2);
y=zeros([1,N1]);
for kk=1:N1
    Y0=y0;
    for ii=1:N0-1        
        for jj=1:N0-ii           
           Y0(jj)=1/(x0(jj)-x0(jj+ii))*((x(kk)-x0(jj+ii))*Y0(jj)-(x(kk)-x0(jj))*Y0(jj+1));
        end
    end
    y(kk)=Y0(1);
end
end