%{
complete information
name:[]
UID:[]
put on website:[yes or no]
%}
function code_template()
N0 = 1000; % initial number of uranium atoms
N=N0;
years = 2000;  % the year interval
dt = 1e7;           % time step in years
tau = 4.4e9;        % mean lifetime of U238
ret1 = zeros(1,years); %save the value with
ret2 = zeros(1,years);
for i = 1:years
    N = N-(N/tau)*dt;
    ret1(i) = N;
    ret2(i) = N0*exp(-(i*dt)/tau);
end
figure
plot([1:1:years],ret1)
hold on 
plot([1:1:years],ret2)
end
