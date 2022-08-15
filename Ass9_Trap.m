clc;
clear;
format long; %more defined error
%Composite Trapezoidal Rule
f=input("Enter function "); %@(x) (cos(x))^2, @(x) 1/(x*log(x)), @(x) exp(-x^2)*cos(x)
a=input("End Point a "); % -0.25, exp(1), -1
b=input("End Point b "); % 0.25, exp(1)+1, 1
n=input("Subintervals "); %4,6,10,20

%for 4 : y=@(x) atan(1+x^2), diff(y), f1=@(x) (2*x)/((x^2 + 1)^2 + 1), f=@(x) sqrt(1+(f1)^2)
%@(x) sqrt(1+((2*x)/((x^2 + 1)^2 + 1))^2)
%step declare syms x, find diff then further

h=(b-a)/n;
s=0;
for i=1:n-1
    x=a+(h*i);
    s=s+2*f(x);
end

s=s+f(a)+f(b);
a=s*h/2;

disp(a);
