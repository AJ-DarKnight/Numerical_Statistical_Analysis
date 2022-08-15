clc;
clear;
n =input("Order");
a =input("Matrix"); %[2 1 1; 1 2 1; 1 1 2]
x =input("Column Vector"); %[1;-1;2]
t =input("Tolerance");
error = 1;
k0=0;
while(abs(error)>t)
        y=a*x;
        k=y(1);
        for i=1:n
        if(abs(k)<abs(y(i)))
            k=y(i);
        end
        end
        x=y/k;
        error=k-k0;
        k0=k;
end
disp(x)
disp(k)