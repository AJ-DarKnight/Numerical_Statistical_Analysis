clc;
clear;
x=0:0.01:10;
y1=(5./x.^2)+2;
y2=x;
plot(x,y1);
hold on;
plot(x,y2)
hold off;