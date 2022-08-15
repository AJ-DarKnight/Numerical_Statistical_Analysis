clc;
clear;
f=@(x) x^2-29;
% IVT
for i=0:1:10
    if f(i)*f(i+1)<0
        a=i;
        b=i+1;
        break
    end
end
%Bisection
while abs(a-b)>10^-3
    c=(a+b)/2;
    if(f(c)==0)
        disp(c)
        break;
    else
        if(f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end
    end
end
%Root
disp(c)