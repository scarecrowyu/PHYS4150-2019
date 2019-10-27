  
%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}
function y = Neville(x0, y0, x)
% neville interpolation
%x0(1,N0) given N0 values of x0
%y0(1,N0) and given N0 values of y0=f(x0)
%x(1,N1) we want to find y-values at given x points
%y(1,N1) 

N0 = size(x0, 2); %The number of point given
N1 = size(x, 2); %The number of point to be found
y=zeros(1,N1);
pij=zeros(N0,N0); %Following https://en.wikipedia.org/wiki/Neville%27s_algorithm
for i=1:N0
  pij(i,i)=y0(i);
end
for k=1:N1
    for p=1:N0-1  %We calculate the next j coulumn vector in the matrix pij
        for i = 1:N0-(p) %The column-vector j becomes 1 smaller each time making the tree 'branch' 
            j=i+p;

            pij(i,j)=((x(k)-x0(j))*pij(i,j-1) -(x(k)-x0(i))*pij(i+1,j)  )/(x0(i)-x0(j));

        end

    end
    y(k)=pij(1,N0); % Save the last interpolation step
end

end
