%{
complete information
name:[LIU Leran]
UID:[3035448407]
put on website:[yes]
%}

function ret = code_template(k)
list = zeros(1,k);
list(1) = 2;
num = 1;   %how many prime numbers we have got
current = 3; %current number
while(num<k)
    if optimized_isprime(current) == true
        num = num + 1;
        list(num) = current;
        current = current + 2;
    else
        current = current + 2;
        continue
    end
end
ret = list
end

function  y = optimized_isprime(current)
for x = 2: ceil(0.5 * current)
    if mod(current,x) == 0
        y = false;
        return
    end
end
y = true;
end