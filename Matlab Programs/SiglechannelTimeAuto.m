%% ��������mat���ݣ��Զ�����ʱ����emfʸ��ͼ
clc
clear all
close all
%% 
list=dir(['D:\WorkMatlab\2016.6.29mat\4\','*.mat']);%����Ŀ¼���޸ľ���·��
k=length(list)
x=linspace(0,10,2000*(10^4));%����ʱ�䳤�ȼ����ݳ���
 for i=1:k
     str= strcat ('D:\WorkMatlab\2016.6.29mat\4\', list(i).name);%�����ļ������޸ľ���·��
     [a]=load(str);
     figure(i)
     path=a.d_unnamedTask2PXI1Slot3ai1.Data/100;%ע�����ͨ����������
     plot(x,path*1000,'k')
     title('EME','fontsize',12,'fontweight','bold');
     xlabel('ʱ��/S','fontsize',12,'fontweight','bold');
     ylabel('��ѹ/mV','fontsize',12,'fontweight','bold');
     file=['D:\WorkMatlab\2016.6.29mat\4\',list(i).name,'.emf']%�޸ľ���·�� 
     print(gcf,'-dmeta',file,'-cmyk')
 end