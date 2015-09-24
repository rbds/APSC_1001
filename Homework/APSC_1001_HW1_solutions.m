%% APSC 1001 Homework 1 Solutions

% Randy Schur
% 10/2/15
%% Problem 1
clear
close all
clc

%a
t = 0:pi/100:5*pi;      %create array of time values
data_a = 2*sin(0.5*t);  %sine function: amplitude=2, wavelength = 2*pi*0.5 = pi
plot(t, data_a, 'r', 'LineWidth', 2)    %plot the function
title('Randy Schur')                    %label title and axes
xlabel('Time (s)')
ylabel('Amplitude (arbitrary units)')
axis([0 5*pi -3 3])                     %set axis limits

%b
hold on
data_b = 0.75*cos(0.25*t);  %cosine function: amplitude=.75, wavelength=pi/2
plot(t, data_b, 'k--', 'LineWidth', 2)  %plot additional data

%c
legend('Sine Function, \lambda=\pi, A=2', 'Cosine Function, \lambda=\pi/2, A=.75')  %create a legend

%% Problem 2
%a
figure
data = 5 + 3*randn(1,500);          %create random data sample
plot(1:length(data), data, 'x')     %plot data sample
title('Sample Data')                %set up title and label axes
xlabel('Sample Number')
ylabel('Value')

%b
[max_value, max_index] = max(data); %find min and max values
[min_value, min_index] = min(data);
hold on
plot(max_index, max_value, 'ro')    %plot min and max values of data with a red circle
plot(min_index, min_value, 'ro')
%c
mean_value = mean(data)             %find mean and standard deviation values
standard_deviation = std(data)



