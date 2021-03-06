%% APSC 1001 Proportional Control Example
% In Class 10/16/15
% Randy Schur

%% For Loop Example
close 
clear
x0 = 0;  %[m], Initial Condition (actual position)
r = 20; %[m], Reference Input (desired position)
dt = .1;   %[s] time step
T = 10;      %[s] final time
t = 0:dt:T+dt; %vector of times
%N = T/dt;   %number of time steps
N = length(t);
k = 17.5;      %Gain
%k = 1/dt*1.75;
x = zeros(1,N); %initialize vector.
x(1) = x0;

for i = 1:N-1
   e = r-x(i); %[m] error
   u = k*e; %[m/s] control input
   
   x(i+1) = x(i) + dt*u; %calculate position at next time step
end

plot(t, x)
title('position vs. time of car - for 10 seconds')
xlabel('time (s)')
ylabel('position (m)')
%% While Loop Example
clear
x0 = 0;  %[m], Initial Condition
r = 20; %[m], Reference Input
dt = .1;   %[s] time step
T = 10;      %[s] final time
k = 17.5;      %Gain
%k = 1/dt*1.75;
x = x0;     %set initial position
t = 0;      %set initial time
e = r-x;    %calculate error
i = 1;      %index variable
while (abs(e)> 0.01)
    e = r-x(i);             %calculate error
    u = k*e;                %calculate control output (speed of car).
    t(i+1) = t(i) + dt;     %calculate new t
    x(i+1) = x(i) + dt*u;   %calculate new position
    
    i = i+1;    %increment index
end

figure
plot(t, x)
title('position vs. time of car - while error > .01')
xlabel('time (s)')
ylabel('position (m)')
