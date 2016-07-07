clear all;
clc;
% x=-2:0.01:2;
% size(x);
% p=length(x);
% y=zeros(p,1);
% for(i=1:p)
%     if(i<p/2) y(i)=1;
%     else y(i)=2;
%     end
% end
% area(x',y')

% n=4;dt=2*pi/n;
% t=0:dt:2*pi;
% t=[t,t(1)];
% x=sin(t);y=cos(t);
% fill(x,y,'c')
% grid on
% axis equal

% S=[0 1;1 0];
% A=repmat(S,3,3);
% imshow(A,'InitialMagnification','fit')

a=ones(30);%ÂÌ30£¬ºì50£»
a=a*30;
a(randperm(900,100))=50;
image(a)