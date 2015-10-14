%% APSC 1001 Homework 3 Solutions
% Randy Schur
% Fall 2015

%% Problem 1
%part a 
v1 = [72 63 57 46 12 1];
v2 = [12 16 18 32 46 1];

part_a = meters_to_inches(v1)
part_b = kg_to_lb(v2)

%% Problem 2
t = randn(1,100);
sample_avg = mean(t)
if (sample_avg < 1)
    disp('actual mean is less than 1')
elseif (sample_avg > 1)
    disp('actual mean is greater than 1')
else 
    disp('actual mean is equal to 1')
end