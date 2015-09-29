%Import Data_HW2 
%APSC 1001
%Randy Schur

data = csvread('Data_HW2.csv', 1,0);
x1 = data(:,1);
y1 = data(:,2);

x2 = data(1:100, 4);
y2 = data(1:100, 5);

plot(x1,y1)
figure
plot(x2, y2)