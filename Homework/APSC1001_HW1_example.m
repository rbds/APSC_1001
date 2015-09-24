%% APSC 1001 Example Document

% Randy Schur
% 9/18/15
%% Example 1
clear all
close all

t = 0:1000;       %create sample numbers
x = 2 + .25*randn(1,1001);      %create random samples
plot(t, x, 'r.')        %plot random samples
hold on

sample_mean = mean(x);      %calculate mean
sample_stddev = std(x);     %calculate standard deviation
plot(t, sample_mean, 'b:')  %plot mean, standand deviation bars
plot(t, sample_mean+sample_stddev, 'c-')
plot(t, sample_mean-sample_stddev, 'c-')

%set up plot with labels, title, and legend
xlabel('Sample Number')
ylabel('Value')
title('Random Samples')
legend('samples', 'mean', 'standard deviation')

%% Example 2
clear all
close all

n = 1000;
x = randn(n,1);			% uniform distribution

figure;                 %new figure
[count,x_cent] = hist(x,50);    %get bins and histogram
bar(x_cent,count/sum(count)/(x_cent(2)-x_cent(1)));	% normalize histogram so its total area = 1, plot the bar graph

% plot analytical distribution
x_an = linspace(x_cent(1),x_cent(end),101);     %get x values for plot, spaced along sample
y_an = 1/sqrt(2*pi)*exp(-x_an.^2/2);            %get the gaussian distribution as a function of x
hold on;
plot(x_an,y_an,'r');                            %plot gaussian distribution

title('Gaussian Distibution')
xlabel('random value')
ylabel('frequency of values (normalized to 1)')
legend('bins of random samples', 'gaussian distribution')