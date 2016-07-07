function [ y ] = move( x,flag,s)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y1= mod(x,s);
if (y1==0) y1=s; end
x1= ceil(x/s);

while(1)
    if(flag == 1)%向左  
        if(x1~=1)
            y=x-s;
            break;
        else flag=flag+3;
        end
    end
    if (flag==0)
        y=x;
        break;
    end
    if(flag ==2)%向右
        if(x1~=s)
            y=x+s;
            break;
        else flag=flag+1;
        end  
    end
    if(flag == 3)%向上
        if(y1~=1)
            y=x-1;
            break;
        else flag=flag-2;
        end
    end
    if(flag == 4)%向下
        if(mod(x,s)~=0)
            y=x+1;
            break;
        else flag=flag-2;
        end
    end
end


