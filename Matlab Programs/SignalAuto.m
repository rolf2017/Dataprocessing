%% 批量处理mat数据；自动保存时间域emf矢量图
clc
clear all
close all
%% 
list=dir(['D:\WorkMatlab\test','*.mat']);%数据目录：修改绝对路径
k=length(list)
x=linspace(0,10,2000*(10^4));%2M采样率下一个数据点为0.5us
 for i=1:k
     str= strcat ('D:\WorkMatlab\test', list(i).name);%读入文件名：修改绝对路径
     [a]=load(str);
     figure(i)
     subplot(4,1,1)
     path=a.d_unnamedTask1PXI1Slot3ai1.Data;
     plot(x,path)
     title('EME','fontsize',12,'fontweight','bold');
     xlabel('时间/S','fontsize',12,'fontweight','bold');
     ylabel('电压V','fontsize',12,'fontweight','bold');
     subplot(4,1,2)
     path=a.d_unnamedTask1PXI1Slot3ai2.Data;
     plot(x,path)
     title('***','fontsize',12,'fontweight','bold');
     xlabel('***','fontsize',12,'fontweight','bold');
     ylabel('***','fontsize',12,'fontweight','bold');
     subplot(4,1,3)
     path=a.d_unnamedTask1PXI1Slot3ai3.Data;
     plot(x,path)
     title('AE','fontsize',12,'fontweight','bold');
     xlabel('时间/S','fontsize',12,'fontweight','bold');
     ylabel('电压/V','fontsize',12,'fontweight','bold');
     subplot(4,1,4)
     path=a.d_unnamedTask1PXI1Slot3ai4.Data;
     plot(x,path)
     title('***','fontsize',12,'fontweight','bold');
     xlabel('***','fontsize',12,'fontweight','bold');
     ylabel('***','fontsize',12,'fontweight','bold');
     file=['D:\WorkMatlab\test',num2str(i),'.emf'] 
     print(gcf,'-dmeta',file,'-cmyk')
 end