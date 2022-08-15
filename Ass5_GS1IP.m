clc;
clear;
n =input("Unknown variables");
a =input("Matrix");
b =input("Column vector");
x0 =input("Initial solution");
t =input("Tolerance");
N =input("Iterations");

for k = 1:N
    for i=1:n
        sum = 0;
        for j = 1: i-1
            sum = sum + a(i,j)*x(j);
        end
        for j = i+1: n
            sum = sum + a(i,j)*x0(j);
        end
        x(i) = (b(i) - sum)/a(i,i);
    end
    e = x - x0;
    if(norm(e, inf)<= t)
        disp(x)
        break;
    else
        x0 = x;
    end
end