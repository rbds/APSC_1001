x0 = 0;  %[m], Initial Condition
r = 20; %[m], Reference Input
dt = .1;   %[s] time step
T = 10;      %[s] final time
%N = T/dt;   %number of time steps
t = 0:dt:T+dt;
N = length(t);
k = 17.5;      %Gain
%k = 1/dt*1.75;
x = zeros(1,N); %initialize vector.
x(1) = x0;


for i = 1:N-1
   e = r-x(i); %[m] error
   u = k*e; %[m/s] control input
   
   x(i+1) = x(i) + dt*u; %next time step
end

plot(t, x)



