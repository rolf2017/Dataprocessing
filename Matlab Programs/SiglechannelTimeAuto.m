%% 批量处理mat数据；自动保存时间域emf矢量图
clc
clear all
close all
%% 
list=dir(['D:\WorkMatlab\2016.6.29mat\4\','*.mat']);%数据目录：修改绝对路径
k=length(list)
x=linspace(0,10,2000*(10^4));%设置时间长度及数据长度
 for i=1:k
     str= strcat ('D:\WorkMatlab\2016.6.29mat\4\', list(i).name);%读入文件名：修改绝对路径
     [a]=load(str);
     figure(i)
     path=a.d_unnamedTask2PXI1Slot3ai1.Data/100;%注意更改通道任务名称
     plot(x,path*1000,'k')
     title('EME','fontsize',12,'fontweight','bold');
     xlabel('时间/S','fontsize',12,'fontweight','bold');
     ylabel('电压/mV','fontsize',12,'fontweight','bold');
     file=['D:\WorkMatlab\2016.6.29mat\4\',list(i).name,'.emf']%修改绝对路径 
     print(gcf,'-dmeta',file,'-cmyk')
 end