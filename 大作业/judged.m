function [ flag ] = judged( x,y,s)
%UNTITLED2 Summary of this function goes here
%   两个点，前者到后者的方向.
y1= mod(x,s);
if (y1==0) y1=s; end
x1= ceil(x/s);
y2= mod(y,s);
if (y2==0) y2=s; end
x2= ceil(y/s);
flag1=(x1==x2);flag2=(x1<x2);flag3=(x1>x2);
flag4=(y1==y2);flag5=(y1<y2);flag6=(y1>y2);
follow;
if (flag1 && flag4) flag=-1;
end
if (flag1)
    if (flag5) flag=4;  end
    if (flag6) flag=3; end
end
if (flag4)
    if (flag2) flag=2; end
    if (flag3) flag=1; end
end
if (flag2 && flag5) %下和
    p=rand(1);
    if p<0.5 flag=2;
    else flag=4;
    end
end
if (flag2 && flag6) %上和
    p=rand(1);
    if p<0.5 flag=2;
    else flag=3;
    end
end
if (flag3 && flag5) %下和左
    p=rand(1);
    if p<0.5 flag=1;
    else flag=4;
    end
end
if (flag3 && flag6) %上和左
    p=rand(1);
    if p<0.5 flag=1;
    else flag=3;
    end
end

end

