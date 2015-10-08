%calculates x! (x factorial)
x = ones(1,10);      %initialize x
for k=2:10           %set up for loop from 2 to 10
    x(k) = x(k-1)*k; %each value in x is the current index
                        %multiplied by the previous value in x.
end
