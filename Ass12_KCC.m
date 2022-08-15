clc;
clear;
%Karl Pearson's Correlation Coefficient
n=input("Enter Data Points "); %@5
x=input("x "); %[-10 -5 0 5 10]
y=input("y "); %[5 9 7 11 13]

xx=0;
yy=0;
for i=1:n
    xx=x(i)+xx;
    yy=y(i)+yy;
end

xx=xx/n;
yy=yy/n;

r1=0;
r2=0;
r3=0;

for i=1:n
    r1=r1+((x(i)-xx)*(y(i)-yy));
    r2=r2+(x(i)-xx)^2;
    r3=r3+(y(i)-yy)^2;
end

r1=r1/n;
r2=sqrt(r2/n);
r3=sqrt(r3/n);

r=r1/(r2*r3);

disp(r)