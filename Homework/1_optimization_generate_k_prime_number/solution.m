%{
complete information
name:[Ziyang Yu]
UID:[]
put on website:[yes or no]
%}
function list = code_template(k)
list = zeros(1,k);
list(1) = 2;
num = 1;   %how many prime numbers we have got
current = 3; %current number
while(num<k)
    if optimized_isprime(current)==true;
        num = num+1;
        list(num) = current;
        current = current+2;
    else
        current = current+2;
end
end
end

function  ret = optimized_isprime(current)
    for i = 2:current/2
        if mod(current,i)==0
            ret = false;
            return
        end
    end
    ret = true;
end
    