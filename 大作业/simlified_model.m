clear all;clc;
s=75;m=1000;n=8;%s width; m population; n the number of exit
c1=0.5;c2=0.5;c3=0.5;%different parameters for different psychological models
I=ones(s);a=1:s^2;I=I*10;%blue
b=a(randperm(length(a)));
p=b(1:m);
I(p)=30;%green
% ex=b(m+1:m+n);
pa1=floor(s/2-floor(s/8));pa2=ceil(s/2+floor(s/8));
ex=[pa1,pa2,pa1*s+1,pa1*s+s,pa2*s+1,pa2*s+s,pa1+s*(s-1),pa2+s*(s-1)];
%,pa1+1,pa1-1,pa2+1,pa2-1,pa1+s*(s-1)+1,pa1+s*(s-1)-1,pa2+s*(s-1)+1,pa2+s*(s-1)-1
I(ex)=50;%exit,red
t=0;y=[];%time && time per person
while(1)
    pause(0.01);
    I(ex)=50;
    a=find(I==30);
    if (length(a)<1) 
        break;
    end
    a=a(randperm(length(a)));
    for i=1:length(a)
        judge3;
        count=0;
        while(1)
            flag=judged(a(i),go,s);
            judge2;
            if (flag~=0 || count>4) 
                break;
            end
            if (flag==0) 
                count=count+1;
            end
        end
        I(a(i))=10;
        ps=move(a(i),flag,s);
        c=~isempty(find(ex==ps));
        if (c) 
            %disp('get!');
            y=[y,t];
            continue;
        end
        I(move(a(i),flag,s))=30;
    end
    t=t+1;
    image(I);
    tp=title(['T = ',num2str(t)]);
    set(tp,'string',['T = ',num2str(t)])
end
x=1:length(y);

scatter(x,y,'r');
xlabel('个体（人）');
ylabel('跑出去的时间（单位时间）');
disp('hi');
    

