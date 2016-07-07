clear all;clc
s=16;
f1=6e-4;
f2=0.175;%越过防火墙的概率
f3=0.05;
ti=0;%统计次数
TOTAL=15;%程序运行时间
p=ones(s);
p=p*30;
N=10;%着火点的个数
count=0;    
% t1=clock;
i=0;
while(i<N)
    f10=randi([1,s^2],1);
    p(f10)=50;
    i=i+1;
end
ps(1)=13+12*16;ps(2)=5+11*16;ps(3)=12+4*16;ps(4)=4+3*16;
for j=1:4
    p(ps(j))=0;
end

while(1)
    pause(0.05)
    if(rand(1)<f1)%闪电
        f10=randi([1,s^2],1);
        p(f10)=50;
    end
    a=find(p==50);
    for i=1:length(a)
        f10=a(i);
        if(rand(1)<f3)%重生
            p(f10)=30;
        end
        p1=f10+s;
        p2=f10-1;
        p3=f10+1;
        p4=f10-s;
        f21=rand(1);
        f22=rand(1);
%         f23=rand(1);
%         f24=rand(1);
        if(p1<s^2 && f21<f2) 
            if(p(p1)==30)
                p(p1)=50;
            end
        end
        if(p2>0 && mod(f10,s)~=1 && f22<f2) 
            if(p(p2)==30)
                p(p2)=50;
            end
        end
%         if(p3>0 && mod(f10,s)~=0 && f23<f2) 
%             p(p3)=50;
%         end
%         if(p4>0 && f24<f2)
%             p(p4)=50;
%         end
    end
    if(mod(ti,3)==0)
        for j=1:4        
            p(ps(j))=30;
            judgement;
            ps(j)=move(ps(j),f);
            p(ps(j))=0;
        end
    end
    ti=ti+1;
    image(p)
    tp=title(['T = ',num2str(ti)]);
%     t2=clock;
    if(isempty(find(p==50))) 
        break;
    end
    set(tp,'string',['T = ',num2str(ti)])
end


