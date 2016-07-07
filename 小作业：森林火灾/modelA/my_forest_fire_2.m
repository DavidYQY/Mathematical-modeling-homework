clear all;clc
s=16;
f1=0.3;
f2=0.2;%越过防火墙的概率
f3=0.2;
ti=0;%统计次数
TOTAL=15;%程序运行时间
I=ones(s);
I=I*30;
count=0;    
t1=clock;

p=randi([1,s^2],1);
I(p)=50;

while(1)
    pause(0.5)
    if(rand(1)<f1)%闪电
        p=randi([1,s^2],1);
        I(p)=50;
    end
    a=find(I==50);
    for i=1:length(a)
        p=a(i);
        if(rand(1)<f3)%重生
            I(p)=30;
        end
        p1=p+s;
        p2=p-1;
        p3=p+1;
        p4=p-s;
        f21=rand(1);
        f22=rand(1);
        f23=rand(1);
        f24=rand(1);
        if(p1<s^2 && f21<f2) 
            I(p1)=50;
        end
        if(p2>0 && mod(p,s)~=1 && f22<f2) 
            I(p2)=50;
        end
        if(p3>0 && mod(p,s)~=0 && f23<f2) 
            I(p3)=50;
        end
        if(p4>0 && f24<f2)
            I(p4)=50;
        end
    end
    ti=ti+1;
    image(I)
    tp=title(['T = ',num2str(ti)]);
    t2=clock;
    if(etime(t2,t1)>TOTAL)
        break;
    end
    set(tp,'string',['T = ',num2str(ti)])
end


