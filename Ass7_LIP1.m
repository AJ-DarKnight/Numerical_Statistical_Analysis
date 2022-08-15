clc;
clear;
n=input("Degree/Data Points "); %6 11.9515
x=input("t "); %[0 8 16 24 32 40]  [100 300 505 1000 3000 5000 8000 10000 201000 501000 755000 1000000 3000000]
f=input("O(t) "); %[14.621 11.843 9.870 8.418 7.305 6.413]   [0.8289 6.0206 9.5424 13.6248 16.6502 16.9019 16.9019 16.9019 16.3909 13.6249 11.1261 8.9432 0]

p=input("Point of Interpolation "); %15 / 27

for i=1:n
    l(i)=1;
    for j=1:n
        if(j~=i)
            l(i)=((p-x(j))*l(i))/(x(i)-x(j));
        end
    end
end
s=0;
for i=1:n
    s=s+(l(i)*f(i));
end

disp(s)