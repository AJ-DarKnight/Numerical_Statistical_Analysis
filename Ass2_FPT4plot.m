clc;
clear;
x=0:0.01:10;
y1=atan(4.*x);%9*exp(-x)*sin(2*pi*x)-7/2;
y2=x;
plot(x,y1);
hold on;
plot(x,y2)
hold off;