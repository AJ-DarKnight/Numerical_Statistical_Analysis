clc;
clear;

n=input("Degree/Data Points "); %4
x=input("Number "); %[0 0.25 0.5 0.75]
f=input("Function Value "); %[1 1.64872 2.71828 4.4816]
p=input("Data point for polynomial "); %0.43

for i=1:n
    F(i,1)=f(i);
end

for i=2:n
    for j=i:n
        F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
    end
end

P(1)=1;
for i=1:n
    P(i)=1;
    for j=1:i-1
        P(i)=P(i)*(p-x(j));
    end
end

s=0;
for i=1:n
    s=s+(F(i,i)*P(i));
end

disp(s)