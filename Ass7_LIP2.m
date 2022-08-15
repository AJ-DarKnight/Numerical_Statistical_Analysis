clc;
clear;

F=@(x) ((sin(x))^2);
n=8;
x(1)=0;
x(8)=2*pi;
h=(x(8)-x(1))/(n-1);

for i=2:(n-1)
    x(i)=x(1)+((i-1)*h);
end

for i=1:n
    f(i)=F(x(i));
end

disp(x)
disp(f)

p=input("Point of Interpolation "); % 0.5, 3.5, 5.5, 6

for i=1:n
    l(i)=1;
    for j=1:n
        if(j~=i)
            l(i)=((p-x(j))*l(i))/(x(i)-x(j));
        end
    end
end
s=0;
for i=1:n
    s=s+(l(i)*f(i));
end

disp(s)