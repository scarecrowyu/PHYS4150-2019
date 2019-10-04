%{
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}

%generate 20 prime numbers using the two functions
code_template(20)
optimized_isprime(20)

%compare the time consumed for the first 10000 prime numbers of the two 
%functions.t1: original version; t2:optimized version
tic
code_template(10000);
t1=toc

tic
optimized_isprime(10000);
t2=toc


%the function which generates the first k prime numbers and the its optimization
%original version
function ret = code_template(k)
   list = zeros(1,k);
   list(1) = 2;
   num = 1;   %how many prime numbers we have got
   current = 3; %current number
   while(num<k)
       res=mod(current,list(1:num));
       if min(res)~=0
           list(num+1)=current;
           num=num+1;
       end
       current=current+1;
   end
   ret=list;
end
%optimized version
function  ret = optimized_isprime(k)
   list = zeros(1,k);
   list(1) = 2;
   num = 1;   %how many prime numbers we have got
   current = 3; %current number
   while(num<k)
       list_cut=list(list<=sqrt(current));
       cut_size=size(list_cut)+1;
       res=mod(current,list(1:cut_size(2)));
       if min(res)~=0
           list(num+1)=current;
           num=num+1;
       end
       current=current+2;
   end
   ret=list;
end
    