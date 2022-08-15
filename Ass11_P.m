clc;
clear;
% y=ax^b
N=input("Enter Data Points "); %@4
X1=input("x "); %[2 3 4 5]
Y1=input("f(x) "); %[27.8 62.1 110 161]

X=log(X1);
Y=log(Y1);
sx=0;
sy=0;
sxy=0;
sxx=0;

for i=1:N
    sx=sx+X(i);
    sy=sy+Y(i);
    sxy=sxy+X(i)*Y(i);
    sxx=sxx+X(i)^2;
end

n=2;
a=[N sx sy; sx sxx sxy];

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
        a(j,:)=a(j,:)-(m(j,i)*a(i,:))
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
x(1)=exp(x(1));
disp(x)