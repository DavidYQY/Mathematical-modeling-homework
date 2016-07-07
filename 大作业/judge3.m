%选择出口
d=ones(1,length(ex));
for j=1:length(ex)
    d(j)=distance(a(i),ex(j),s);        
end
mat=[d',ex'];
mat=sortrows(mat,1);
% go=mat(1,2);

Y=1./((mat(:,1)).^5);%需要的函数
S=sum(Y);
Y=Y/S;
total=0;
p=rand(1);
for j=1:length(ex)
    ex1=mat(j,2);
    y11= mod(ex1,s);
    if (y11==0) y11=s; end
    x11= ceil(ex1/s);
    if (x11==1)
       flag11=I(ex1+1)==50;
       flag21=I(ex1-1)==50;
       flag31=I(ex1+s)==50;
       if (flag11+flag21+flag31>=1)
           go=ex1;
           break;
       end
    end
    if (x11==s)
       flag11=I(ex1+1)==50;
       flag21=I(ex1-1)==50;
       flag31=I(ex1-s)==50;
       if (flag11+flag21+flag31>=2)
           go=ex1;
           break;
       end
    end
    if (y11==1)
       flag11=I(ex1+1)==50;
       flag21=I(ex1+s)==50;
       flag31=I(ex1-s)==50;
       if (flag11+flag21+flag31>=1)
           go=ex1;
           break;
       end
    end
    if (y11==s)
       flag11=I(ex1-1)==50;
       flag21=I(ex1+s)==50;
       flag31=I(ex1-s)==50;
       if (flag11+flag21+flag31>=1)
           go=ex1;
           break;
       end
    end
    if (total<=p && p<=total+Y(j)) 
        go=ex1;
        break;
    end
    total=total+Y(j);
end