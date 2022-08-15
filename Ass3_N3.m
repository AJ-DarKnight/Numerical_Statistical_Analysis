clc;
clear;
f=@(x) 4*x^3-8*x^2-3*x+9%exp(-x)*(x^2+5*x+2)+1;
df=@(x) 12*x^2-16*x-3%-exp(-x)*(x^2+5*x+2)+exp(-x)*(2*x+5);
x0=input("Initial Approx = ");
t=input("Tolerance = ");
N=input("Iteration = ");
for i=1:N
    if(df(x0)~=0)
        x1=x0-(f(x0)/df(x0));
        if(abs(x1-x0)<=t)
            display(x1);
            break;
        else
            x0=x1
        end
    else
        fprintf("Change x0");
        break;
    end
end