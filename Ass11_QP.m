clc;
clear;
%Quadratic Polynomial
N=input("Enter Data Points "); %@5
X=input("x "); %[-2 -1 0 1 2]
Y=input("f(x) "); %[15 1 1 3 19]

sx=0;
sy=0;
sx2=0;
sx3=0;
sx4=0;
sxy=0;
sx2y=0;

for i=1:N
    sx=sx+X(i);
    sy=sy+Y(i);
    sxy=sxy+X(i)*Y(i);
    sx2=sx2+X(i)^2;
    sx3=sx3+X(i)^3;
    sx4=sx4+X(i)^4;
    sx2y=sx2y+X(i)*X(i)*Y(i);
end

n=3;
a=[N sx sx2 sy; sx sx2 sx3 sxy; sx2 sx3 sx4 sx2y];

%Gauss Elimination
for i=1:n-1
    for k=i:n
        if(a(k,i)~=0)
            p=k;
            break;
        end;
    end
    if(p~=i)
        t=a(i,:)
        a(i,:)=a(p,:)
        a(p,:)=t
    end
    for j=i+1:n
        m(j,i)=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-(m(j,i)*a(i,:));
    end
end
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+a(i,j)*x(j);
    end
    x(i)=(a(i,n+1)-sum)/a(i,i);
end
disp(a)
disp(x)