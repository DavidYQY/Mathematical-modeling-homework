function [ d ] = distance( x,y,s )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y1= mod(x,s);
if (y1==0) y1=s; end
x1= ceil(x/s);
y2= mod(y,s);
if (y2==0) y2=s; end
x2= ceil(y/s);
d=abs(x1-x2)+abs(y1-y2);
end

