clc;
clear;
f=@(x) (1/x)-17;
df=@(x) -1/(x^2);
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