%判断身旁是否有障碍物;
if (flag==1 && I(a(i)-s)==30) 
    flag=0;
end
if (flag==2 && I(a(i)+s)==30) 
    flag=0;
end
if (flag==3 && I(a(i)-1)==30) 
    flag=0;
end
if (flag==4 && I(a(i)+1)==30) 
    flag=0;
end