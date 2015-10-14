prime_numbers = [ ];   %create an empty array
n = length(prime_numbers); %create our variable for the loop condition
i=1; %create an additional index.
while (n < 10) %loop will continue running until n is 10 or larger.
    if (isprime(i))      %check if i is prime (this is a built-in function)
       prime_numbers(end+1) = i; %if it is, add i to the end of our list.
    end
    i=i+1; %advance index
    n = length(prime_numbers); %recalculate variable in loop condition.
end