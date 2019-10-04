%{
name:[Jiarui Zhao]
UID:[3030064517]
put on website:[yes]
%}

function code_template()
N0 = 1000; % initial number of uranium atoms
N=N0;
years = 2000;  % the year range
dt = 1e7;           % time step in years
tau = 4.4e9;        % mean lifetime of U238
ret1 = zeros(1,years); %save the value with
ret2 = zeros(1,years);
for i = 1:years
    N=N-N*dt/tau;
    ret1(1,i)=N;
    ret2(1,i)=N0*exp(-i*dt/tau);
end
figure
scatter([1:1:years],ret1,'g')
hold on 
plot([1:1:years],ret2,'k')
xlabel('years')
ylabel('number of uranium nuclei')
legend('numerical result','analytical result')
end
