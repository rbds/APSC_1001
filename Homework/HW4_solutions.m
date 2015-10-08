%% APSC 1001 Homework 4 Solutions
% Randy Schur
% Fall 2015

%% Problem 1
my_series = fib(4,6)


%% Problem 2
error = 1; %initialize error
t = 0;     %initialize caluclated value
n = 1;     %initialize counter
while (error > 1e-6)    %set up while loop
    t = t + 1/(n^2);    %calculate new summation
    error = pi^2/6 - t; %calculate error
    n = n+1;            %advance index
end
n-1 %print total number of iterations. Should be 1x10^6.