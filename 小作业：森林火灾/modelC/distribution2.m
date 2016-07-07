clear all;clc
s=16;count=0;niubi=10000;

ss=[];
while(1)
   a=randi([2,s-1],1);
   b=randi([2,s-1],1);
   d=randi([2,s-1],1);
   e=randi([2,s-1],1);
    sum=0;
    a1=[a,d,e,b];
    a2=[a,17-d,17-e,b];
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
    if(sum<niubi)
        niubi=sum;
        ss=[];
        ss=[ss;a1;a2];
    end
    count=count+1
    if(count>100000)
        break;
    end
end
niubi
ss
p=ones(s,s);
q=50;
for i=1:4
p(ss(1,i),ss(2,i))=50;
end
image(p)