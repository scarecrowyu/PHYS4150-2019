%{
complete information
name:[Wong Hong Tsun]
UID:[3035374852]
put on website:[yes]
%}
function list = code_template(k)
list = zeros(1,k);
list(1) = 2;
num = 1;   %how many prime numbers we have got
current = 3; %current number
while (num<k)
    if optimized_isprime(current, list(1:num))
       num = num + 1;
       list(num) = current;
    end
       current = current + 2; %optimization 1
end
end

function  list = optimized_isprime(current, known_prime)
for x = known_prime
    if x*2<current %optimization 2
        if mod(current, x)==0
            list = false;
            return
        end
    end
end
list = true;
end