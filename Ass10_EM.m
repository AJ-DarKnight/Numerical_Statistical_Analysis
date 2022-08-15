clc;
clear;
%Modified Euler Method
f=input("Enter function "); %@(t,y) (-y+2*cos(t)), @(t,y) (sqrt(2+y)), @(t,y) (cos(y))^2
a=input("End Point a "); %0
b=input("End Point b "); %1
h=input("Step Length "); %0.2
t(1)=input("Initial Value of t "); %0
y(1)=input("Initial Value of y "); %1, 0.8, 0

n=(b-a)/h;

for i=1:n
    t(i+1)=t(i)+h;
    y(i+1)=y(i)+(h/2)*(f(t(i),y(i))+(f(t(i+1),y(i)+h*f(t(i),y(i)))));
end

disp(t);
disp(y);