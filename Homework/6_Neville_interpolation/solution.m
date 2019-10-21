%{
complete information
name:[]
UID:[]
put on website:[yes or no]
%}
function y = solution(x0, y0, x)
% neville interpolation
% reference: https://en.wikipedia.org/wiki/Neville%27s_algorithm
% x0(1,N0) y0(1,N0) x(1,N1) y(1,N1)
N0 = size(x0, 2);
pij = num2cell(y0).';
for ind1 = 1:(N0-1)
    for ind2 = 1:(N0-ind1)
        pij{ind2} = ((x0(ind2)-x).*pij{ind2+1} + (x-x0(ind1+ind2)).*pij{ind2}) / (x0(ind2)-x0(ind1+ind2));
    end
end
y = pij{1};
end