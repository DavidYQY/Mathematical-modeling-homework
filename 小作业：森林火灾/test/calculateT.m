%TµÄ¼ÆËã
clear all;clc
r=5;
s=[];
v=12.87;
Q=10;
for x=0:0.01:r/2
    for y=0:0.01:r/2
    t=sqrt((r-x)^2+(r-y)^2)/(v/Q);
    s=[s,t];
    end
end
T=mean(s)
T=7/3*T