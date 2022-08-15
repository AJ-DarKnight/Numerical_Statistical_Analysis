clc;
clear;
n=input("Degree ");
for i=1:n
    x(i)=input("X ");
    y(i)=input("Y ");
end

p=("Point of Interpolation ");

for i=1:n
    l(i)=1;
    for j=1:n
        if(j~=i)
            l(i)=(p-x(j))*l(i)/(x(i)-x(j));
        end
    end
end
s=0;
for i=1:n
    s=s+(l(i)*y(i));
end

disp(s)