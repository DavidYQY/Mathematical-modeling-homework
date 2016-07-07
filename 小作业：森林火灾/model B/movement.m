clear all;clc;
s=16;count=0;go=0;%test
p=ones(s,s);
p=p*50;
ps(1,4)=0;
ps(1)=13+12*16 
ps(2)=5+11*16
ps(3)=12+4*16
ps(4)=4+3*16
for j=1:4
    p(ps(j))=0;
end
% p(13,13)=0;
% p(5,12)=0;
% p(12,5)=0;p(4,4)=0;

image(p)
pause(0.5)
while(1)
    for j=1:4        
        p(ps(j))=30;
        judgement;
        ps(j)=move(ps(j),f);
        p(ps(j))=0;
    end
%     a=find(p==30);
%     j=randi([1,length(a)],1);
%     f=rand(1);
%     if(f>0.3)
%        q=randperm(s^2);
%        p(q(1:j))=50;
%     end
    image(p)
    pause(0.2)
    count=count+1;
    if(isempty(find(p==50))) 
        break;
    end
end
count
