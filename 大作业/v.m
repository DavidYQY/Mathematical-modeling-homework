s0=10;k=0.5;
x0=0:0.05:s0;
x1=s0:0.05:2*s0;
%v0=ones(1,201)*10;
v0=10;
y0=v0-v0./exp(k./(s0-x0));
y1=v0-x0.*0;
plot(x1,y1)
hold on;
plot(x0,y0)
axis([0,2*s0,0,20])
hold off

