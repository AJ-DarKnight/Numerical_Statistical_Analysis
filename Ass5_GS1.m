clc;
clear;
t=input("Tolerance = ");
N=input("Iteration = ");
a=[10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10]
b=[16;9;10;11]

a=[4 1 -1 1; 1 4 -1 -1; -1 -1 5 1; 1 -1 1 3]
b=[-2;-1;0;1]

a=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57]
b=[2.22; -3.17; 5.11]


x0=[0;0;0;0];
n=4;
for k=1:N
    for i=1:n
        sum = 0;
        for j=1:i-1
            sum=sum+a(i,j)*x(j);
        end
        for j+i+1:n
            sum=sum+a(i,j)*x0(j);
        end
        x(i)= (b(i)-sum)/a(i,i);
    end
    e=x-x0;
    if(norm(e,inf)<=t)
        disp(x);
        break;
    else
        x0=x;
    end
end
    