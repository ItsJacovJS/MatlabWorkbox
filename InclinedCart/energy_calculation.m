%% ------------SECTIONS------------
%            IA. SECTIONS
%            I. VARIABLES
%            II. COMPARISON OF ENERGY
%            III. COMPARISON OF MOTION

%% ------------VARIABLES------------
data = readtable('cart_incline.csv');

% ------------------------------------------------------- %
tme = data{:,1}; %TIME
frc = data{:,2}; %FORCE [var can be removed as it won't be needed to plot]
pos = data{:,3}; %POSITION
vel = data{:,4}; %VELOCITY
acc = data{:,5}; %ACCELERATION
ke = data{:,6}; %KINETIC ENERGY
gpe = data{:,7}; %GRAVITATIONAL POTENTIAL ENERGY
tot = data{:,8}; %TOTAL MECHANICAL ENERGY
% ------------------------------------------------------- %

%% ------------COMPARISON OF ENERGY------------
%To be able to illustrate the relationship between the kinetic,potential,
%and mechanical energy, it would be beneficial to make use of the
%kinetic vs time, grav. potential energy vs time, and mechanical energy
%vs time.
% ------------------------------------------------------- %
hold on
plot(tme,ke,'r--'); %TIME-KINETIC ENERGY (RED)
plot(tme,gpe,'b:'); %TIME-GRAV. POT. ENERGY (BLUE)
plot(tme,tot,'g'); %TIME-MECHANICAL ENERGY (GREEN)
hold off

%The appropriate labels for the table:
xlabel('TIME');
ylabel('ENERGY');
title('Energy Comparison');
% ------------------------------------------------------- %

%% ------------COMPARISON OF MOTION------------
%Just like the comparison of energy, making use of time, we can make use of
%the position-time, velocity-time, and the acceleration-time graphs to
%illustrate the relationship between velocity, position and the
%acceleration.
% ------------------------------------------------------- %
hold on
plot(tme,pos, 'c'); % TIME VS POSITION (CYAN)
plot(tme,vel, 'm:'); % TIME VS VELOCITY (MAGENTA)
plot(tme,acc, 'k--'); % TIME VS ACCELERATION (BLACK)
hold off

%The appropriate labels for the table:
xlabel('TIME');
ylabel('MOTION');
title('Motion Comparison');
% ------------------------------------------------------- %
