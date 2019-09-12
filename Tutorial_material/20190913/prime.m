k = 10;
list = zeros(1,k);
list(1)= 2;
num = 1;
cur = 3;
while(num < k)
    if prime(cur) == true
        num = num+1;
        list(num) = cur;
        cur = cur +1;
    else
        cur = cur+1
        continue
    end
end

function ret = prime(current)
for x = 2: (current-1)
    if mod(current,x) == 0
        ret = false;
        return 
    end
end
ret = true;
end

