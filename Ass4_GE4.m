clc;
clear;
n=input("enter no. of unknowns");
a=[ 1 3 2; 3 4 3]
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
   sum=sum+a(i,j)*x(j)
  end
   x(i)=(a(i,n+1)-sum)/a(i,i);
  end
disp(x)