%% APSC 1001 Homework 3 Solutions
% Randy Schur
% Fall 2015

%% Problem 1
%part a 
v1 = [72 63 57 46 12 1];
v2 = [12 16 18 32 46 1];
ans_part_a = meters_to_inches(v1)
ans_part_b = kg_to_lb(v2)

%% Problem 2
n = randn(1,100);
my_avg = mean(n)
if (my_avg < 1)
    disp('Mean is less than 1')
elseif(my_avg > 1)
    disp('Mean is greater than 1')
else
    disp('mean is equal to 1')
end
    