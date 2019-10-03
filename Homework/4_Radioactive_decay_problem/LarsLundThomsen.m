%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}
function code_template()
N0 = 1000; % initial number of uranium atoms
N=N0;
years = 2000;  % iteration times
dt = 1e7;           % time step in years
tau = 4.4e9;        % mean lifetime of U238
ret1 = zeros(1,years); %save the value numerical value in
ret2 = zeros(1,years); % save the analytic
for i = 1:years
    N=N+ (-N/tau)*dt; % Begin numerical iteleration
    %start from here%
    ret1(i)=N0*exp(-dt*i/tau); % Analytical
    ret2(i)=N; % Numerical
end
figure
plot([1:1:years]*dt,ret1) % Plot analytical
hold on 
plot([1:1:years]*dt,ret2,'--') %Plot Numerical
legend('Analytical','Numerical')
title('Radioactive decay')
xlabel('Time in units of years') 
ylabel('Number of uranium atoms') 
end