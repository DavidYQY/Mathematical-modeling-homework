function [ y ] = move( x,flag )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
s=16;
x1= mod(x,s);
if (x1==0) x1=s; end
x2= ceil(x/s);
while(1)
    if(flag == 1)%����  
        if(x2~=1)
            y=x-s;
            break;
        else flag=flag+3
        end
    end
    if(flag ==2)%����
        if(x2~=s)
            y=x+s;
            break;
        else flag=flag+1
        end  
    end
    if(flag == 3)%����
        if(x1~=1)
            y=x-1;
            break;
        else flag=flag-2
        end
    end
    if(flag == 4)%����
        if(mod(x,s)~=0)
            y=x+1;
            break;
        else flag=flag-2
        end
    end
end


