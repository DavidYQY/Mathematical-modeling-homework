function [p1,p2] = loveyqy(p)
%�����꣬���غ�����������
%2015.10.7
s=16;
p1=mod(p,s);
p1(find(p1==0))=s;
p2=(p-p1)/s+1;
end

