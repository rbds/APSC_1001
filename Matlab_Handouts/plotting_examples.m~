%APSC_1001 Plotting examples
close all

T = 10;     %final time
N = 101;    %number of steps to take
t = linspace(0, T, N); %create time array
x = sin(t);
y = cos(t);
plot(t, x, 'b:', 'LineWidth', 2)    %plot x vs. t in blue with dotted line and linewidth of 2
title('My Example Plot') %create title
xlabel('x axis label')   %label axes
ylabel('y axis label')
hold on     %turn on hold so that the plot is not overwritten
plot(t, y, 'k--', 'LineWidth', 2)   %plot y vs. t in bloack with dashed line and linewidth of 2
legend('x', 'y') %create legend