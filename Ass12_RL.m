clc;
clear;
%Regression Line
n=input("Enter Data Points "); %@10
x=input("x "); %[1 2 3 4 5 6 7 8 9 10]
y=input("y "); %[10 12 16 28 25 36 41 49 40 50]

xx=0;
yy=0;
for i=1:n
    xx=x(i)+xx;
    yy=y(i)+yy;
end

xx=xx/n;
yy=yy/n;

sxy=0;
sx=0;
sy=0;

for i=1:n
    sxy=sxy+((x(i)-xx)*(y(i)-yy));
    sx=sx+(x(i)-xx)^2;
    sy=sy+(y(i)-yy)^2;
end

sxy=sxy/n;
sx=sqrt(sx/n);
sy=sqrt(sy/n);

r=sxy/(sx*sy);

byx=r*sy/sx;
bxy=r*sx/sy;

disp(r)
disp(byx)
disp(bxy)