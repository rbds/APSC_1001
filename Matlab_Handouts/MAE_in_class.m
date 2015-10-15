x0 = 0;  %[m], Initial Condition
r = 20; %[m], Reference Input
dt = .01;   %[s] time step
T = 5;      %[s] final time
N = T/dt;   %number of time steps
t = linspace(0, T, N+1);
k = 1;      %Gain
x = zeros(1,N); %initialize vector.
x(1) = x0;


for i = 1:N
   e = r-x(i); %[m] error
   u = k*e; %[m/s] control input
   
   x(i+1) = x(i) + dt*u; %next time step
end

plot(t, x)



