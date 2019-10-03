%{
complete information
name:[Wong Hong Tsun]
UID:[3035374852]
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
    N(i+1) = N(i) - N(i)*dt/tau; %numerical
    t(i+1) = dt*i; %numerical
end
figure
plot(t,N) %numerical plot
hold on
syms x
fplot(1000*exp(-x/tau),[0 2e10]) %analytical plot
legend('numerical','analytical')
%hold on
%plot([1:1:years],ret1)
%hold on
%plot([1:1:years],ret2)
end