clc;
clear;

n=input("Degree/Data Points "); %4
x=input("Number "); %[1 1.5 2.0 2.5]
f=input("Function Value "); %[2.7183 4.4817 7.3891 12.1825]
p=input("Data point for polynomial "); %2.25

for i=1:n
    F(i,1)=f(i);
end

for i=2:n
    for j=i:n
        F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
    end
end

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