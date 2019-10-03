%{
complete information
name:[Lars Lund Thomsen]
UID:[3030064476]
put on website:[yes]
%}
function pi_buffon = code_template( )
N = 1e6; %number of the needles dropped
Ntest=1:1:N;
random_number_pi_rad=rand(N,1)*pi; %MaKe N random numbers to simulate the drops in pi radians
random_number_x=rand(N,1)*0.5; %MaKe N random numbers to simulate the drops with nearest line
D=0.5*sin(random_number_pi_rad); %Calcuate distance in x directions from pi_rad simulation
number_of_hits_M=random_number_x(find(random_number_x< D)); % test if distance in x_direction is smaller than random number = crossing
M=length(number_of_hits_M);% calaculate number of crossings/hits
pi_buffon = 2*N/M; % calculate pi

%Find Pi as function of throws
Ntest0=Ntest(find(random_number_x< D)); %Make array as function of number of throws
Mtest=1:1:M; %Make array of succes
pi_test=2*Ntest0./Mtest; % Calculate pi as function of throws
figure
semilogx(Ntest0,pi_test) %simulation
hold on
semilogx(Ntest0,ones(1,length(Ntest0))*pi) %analytical
legend('Numerical','Analytical')
title('Pi calculation Buffons needle')
xlabel('Number of throw') 
ylabel('Value of Pi') 
ylim([2,4])
end