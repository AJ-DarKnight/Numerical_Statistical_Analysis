clc;
clear;

a=[pi sqrt(2) -1 1 0; exp(1) -1 1 2 1; 1 1 -sqrt(3) 1 2; -1 -1 1 -sqrt(5) 3]
n=4;
for i=1:n-1
    for k=i:n
        if(a(k,i)~=0)
            p=k;
            break;
        end
    end
    if(p~=i)
        t=a(i,:);
        a(i,:)=a(p,:);
        a(p,:)= t;
    end
    if(k==n+1)
        fprintf("No Unique Solution");
        break;
    end
    for j=i+1:n
        m(j,i)=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-(m(j,i)*a(i,:))
    end
end

%if(i==n)
    if(a(n,n)==0)
        fprintf("No Unique Solution");
    else
        x(n)=a(n,n+1)/a(n,n);
        for i=n-1:-1:1
            s=0;
            for j=i+1:n
                s=s+a(i,j)*x(j);
            end
            x(i)=(a(i,n+1)-s)/a(i,i)
        end
        disp (x)
    end
%else
    %fprintf("No Unique Solution");
%end