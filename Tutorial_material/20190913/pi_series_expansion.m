sum = 0;
n = 100000;
for i = 1:n
    sum = sum+((-1)^(i+1))/(2*i-1);
end
format long
ans = 4*sum;