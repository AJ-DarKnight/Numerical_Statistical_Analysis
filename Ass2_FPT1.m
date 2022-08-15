clc;
clear;
g=@(x) x^3 %(x-x^3-4*x^2+10);
x0=input("Initial Approx = ");
t=input("Tolerance = ");
N=input("Iteration = ");
X=[ ];
for i=1:N
    x1=g(x0);
    X=[X,x1];
    if(abs(x1-x0)<=t)
        disp(x1);
        fprintf(' is Fixed Point')
        break
    else
        x0=x1;
    end
end
disp(X)
        