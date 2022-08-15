clc;
clear;
%Runge-Kutta of Fourth-Order Method
f=input("Enter function "); %@(t,y) (-y+2*cos(t)), @(t,y) (sqrt(2+y)), @(t,y) (cos(y))^2
a=input("End Point a "); %0
b=input("End Point b "); %1
h=input("Step Length "); %0.2
t(1)=input("Initial Value of t "); %0
y(1)=input("Initial Value of y "); %1, 0.8, 0

n=(b-a)/h;

for i=1:n
    K(1)=h*(f(t(i),y(i)));
    K(2)=h*(f(t(i)+h/2,y(i)+K(1)/2));
    K(3)=h*(f(t(i)+h/2,y(i)+K(2)/2));
    K(4)=h*(f(t(i)+h,y(i)+K(3)));
    
    y(i+1)=y(i)+(K(1)+2*K(2)+2*K(3)+K(4))/6;
    t(i+1)=t(i)+h;
end

disp(t);
disp(y);