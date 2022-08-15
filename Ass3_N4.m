clc;
clear;
f=@(x) x-2*sin(x);
df=@(x) 1-2*cos(x);
t=input("Tolerance = ");
N=input("Iteration = ");
for i=0:1:10
    if f(i)*f(i+1)<0
        a=i;
        b=i+1;
        break
    end
end
disp(a)
disp(b)
x0=(a+b)/2;
for i=1:N
    if(df(x0)~=0)
        x1=x0-(f(x0)/df(x0));
        if(abs(x1-x0)<=t)
            display(x1);
            break;
        else
            x0=x1;
        end
    else
        fprintf("Change x0");
        break;
    end
end