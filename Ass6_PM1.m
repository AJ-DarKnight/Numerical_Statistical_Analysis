clc;
clear;
n =input("Order");
a =input("Matrix"); %[4 -1 1; -1 3 -2; 1 -2 3]
x0 =input("Column Vector"); %[1;-1;1]
t =input("Tolerance");
error = 1;

while(norm(error,inf)>t)
        y=a*x0;
        k=y(1);
        for i=1:n
        if(abs(k)<abs(y(i)))
            k=y(i);
        end
        end
        x=y/k;
        error=x-x0;
        x0=x;
end
disp(x)
disp(k)