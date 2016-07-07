x1=mod(ps(j),s);
if x1==0 
    x1=s;
end
x2=ceil(ps(j)/s);

a=find(p==50);
x11=mod(a,s);x11(find(x11==0))=s;
x22=ceil(a/s);
x11=abs(x11-x1);
x22=abs(x22-x2);
[k1,r1]=min(x11);
[k2,r2]=min(x22);
if (k1~=0)
    x111=mod(a(r1),s);if (x111==0) x111=s;end
    if(x111<x1) f=3;end
    if(x111>x1) f=4;end
end

if k1==0
    x222=ceil(a(r1)/s);
    if  (x222<x2) f=1;end
    if  (x222>x2) f=2;end
    if  (x222==x2 && k2==0 && k1==0)
        disp('error!');
    end
end
