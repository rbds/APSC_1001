% Homework 4 function solution.

function [s] = fib(v1, v2) 
    s = zeros(1, 10);
    s(1) = v1;
    s(2) = v2;
    for i = 3:10
        s(i) = s(i-1) + s(i-2);
    end

end

