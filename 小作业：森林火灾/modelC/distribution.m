clear all;
clc;
s=16;aim=4;p=ones(s,s);count=0;niubi=10000;count2=1;
p1=[];p2=[];
while(1)
    sum=0;
    a1=ones(1,aim);
    a2=ones(1,aim);
    while(1)
    a=randperm(s^2,aim);
    [a1,a2]=loveyqy(a);
    p1=find(a1==1 | a1==16 |a1==2 | a1==15);
    p2=find(a2==1 | a2==16 |a2==2 | a2==15);
    if (isempty(p1) && isempty(p2))
        break;
    end
    end
    
    for i=1:s
        for j=1:s
            d1=abs(i-a1(1))+abs(j-a2(1));
            d2=abs(i-a1(2))+abs(j-a2(2));
            d3=abs(i-a1(3))+abs(j-a2(3));
            d4=abs(i-a1(4))+abs(j-a2(4));
            x=[d1,d2,d3,d4];
            d=min(x);
            sum=sum+d;
        end
    end
    
    if(sum==niubi)
        count2=count2+1;
        ss=[ss;a]
    end
    if(sum<niubi)
        niubi=sum;
        ss=[];
        ss=[ss,a];
        count2=1;
    end
    count=count+1
    if(count>10000)
        break;
    end
end
niubi
ss
count2
p=ones(s,s);
hang=size(ss);
q=50;
for(i=1:hang(1))
    p(ss(i,:))=q;
    q=q-10;
end
image(p)


