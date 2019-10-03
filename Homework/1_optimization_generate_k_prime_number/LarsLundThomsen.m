
%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}

k = 10000; %Find 10000 prime numbers
list_of_primes = zeros(1,k); %rename to list_of_primes
list_of_primes(1)= 2; %Give first two primes
num = 1;  %number of primes
cur = 3;  % check if prime


tic; %begin time taking
while(num < k)
    if prime1(cur) == true  %  True, then it is prime so
        num = num+1;   %update number of primes
        list_of_primes(num) = cur;  % update list of primes
        cur = cur +2; % update current, modified to two, since even numbers (except 2) cannot be prime numbers.
    else
        cur = cur+2; % Was not a prime, so don't update but try again (modified to two)
        continue
    end
end

toc; %end time taking
%Conclusion prior to change 8.3 seconds after change 6.6 seconds (25% decrease) 
function [ret] = prime1(current)
for x = 2: int16((current-1)/2) % we only have to check N/2 because of factorising   
    if mod(current,x) == 0 % (it is divisible, so not a prime)
        ret = false;
        return 
    end
    
end
ret = true; % Not divisible so prime.
%fprintf( 'Found prime number, Prime= %4.2f ',current) %print prime as we move on
end


