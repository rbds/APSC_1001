data = xlsread('Data ECE Lab.xlsx');
x = data(:,1);
y = data(:,2);
plot(x,y, '*')
title('Range Finder Data')
ylabel('echo time (ms)')
xlabel('distance (in)')
