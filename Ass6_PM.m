clc;
clear;
a =input("Matrix");
x =input("Initial solution");
t =input("Tolerance");
n=1;
k=10;

while(n>t)
    y=a*x;
    n=abs(norm(y,inf)-k);
    k=norm(y,inf);
    x=y/k;
end
disp(x)
disp(k)
    
