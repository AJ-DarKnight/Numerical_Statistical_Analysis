clc;
clear;
%A!x + B/x
N=input("Enter Data Points "); %@6
X=input("x "); %[0.1 0.2 0.4 0.5 1 2]
Y=input("f(x) "); %[21 11 7 6 5 6]

sx=0;
s1rx=0;
syrx=0;
s1x2=0;
sydx=0;

for i=1:N
    sx=sx+X(i);
    s1rx=s1rx+(1/sqrt(X(i)));
    syrx=syrx+Y(i)*sqrt(X(i));
    s1x2=s1x2+(1/(X(i)^2));
    sydx=sydx+Y(i)/X(i);
end

n=2;
a=[sx s1rx syrx; s1rx s1x2 sydx];

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
disp(x)