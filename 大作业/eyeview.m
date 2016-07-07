clear all;clc
k2=0:0.01:1;
v0=10;v1=20;
v=k2*v0+(1-k2)*v1;

plot(k2,v,'r-');
xlabel('K2');
ylabel('V');
axis([0,1,0,30]);
title('V随着K2线性变化')
grid on;