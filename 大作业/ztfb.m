clc
clear
close all
mu=[0,0];% ��ֵ����
Sigma=[1 0.8;0.8 1];% Э�������
[X,Y]=meshgrid(0:0.1:3,0:0.1:3);%��XOY���ϣ�������������
p=mvnpdf([X(:) Y(:)],mu,Sigma);%��ȡ���ϸ����ܶȣ��൱��Z��
p=reshape(p,size(X));%��Zֵ��Ӧ����Ӧ��������
figure
set(gcf,'Position',get(gcf,'Position').*[1 1 1.3 1])
subplot(2,3,[1 2 4 5])
surf(X,Y,p),axis tight,title('����ѡ����ڵĸ��ʷֲ�')
subplot(2,3,3)
surf(X,Y,p),view(2),axis tight,title('��������ڵľ�����ѡ����ʵķֲ�')
subplot(2,3,6)
hold on
surf(X,Y,p),view([0 0]),axis tight,title('��������ڵľ�����ѡ����ʵķֲ�')