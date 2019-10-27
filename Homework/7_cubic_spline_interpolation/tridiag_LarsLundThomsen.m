%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}
function y1 = tridiag( b, a, c, d )
%  Solve the  n x n  tridiagonal system for y:
%
%  [ b(1)  c(1)                                  ] [  y(1)  ]   [  d(1)  ]
%  [ a(2)  b(2)  c(2)                            ] [  y(2)  ]   [  d(2)  ]
%  [       a(3)  b(3)  c(3)                      ] [        ]   [        ]
%  [            ...   ...   ...                  ] [  ...   ] = [  ...   ]
%  [                    ...    ...    ...        ] [        ]   [        ]
%  [                        a(n-1) b(n-1) c(n-1) ] [ y(n-1) ]   [ d(n-1) ]
%  [                                 a(n)  b(n)  ] [  y(n)  ]   [  d(n)  ]
%
n = length(d);


c1=zeros(n,1);  
d1=zeros(n,1);  
y1=zeros(n,1);  

%Initial conditions to solve using Gauss elimination: see https://en.wikipedia.org/wiki/Tridiagonal_matrix_algorithm
c1(1)=c(1)/b(1);
d1(1)=d(1)/b(1);

for i=2:n
    c1(i)=c(i)/(b(i)-a(i)*c1(i-1));
    d1(i)=(d(i)-a(i)*d1(i-1))/(b(i)-a(i)*c1(i-1));
end
y1(n)=d1(n);

for j=n-1:-1:1
   y1(j)=d1(j)-c1(j)*y1(j+1);
end

end