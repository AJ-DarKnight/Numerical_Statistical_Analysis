clc;
clear;
f=@(t) 9*exp(-t)*sin(2*pi*t)-3.5;
df=@(t) 18*pi*exp(-t)*cos(2*pi*t) - 9*exp(-t)*sin(2*pi*t);
t0=input("Initial Approx = ");
tol=input("Tolerance = ");
N=input("Iteration = ");
for i=1:N
    if(df(t0)~=0)
        t1=t0-(f(t0)/df(t0));
        if(abs(t1-t0)<=tol)
            display(t1);
            break;
        else
            t0=t1;
        end
    else
        fprintf("Change");
        break;
    end
end