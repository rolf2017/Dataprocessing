%% 
%打开选用数据的文件，寻找想要提取的图像
%x输入起始数据点，y输入终止数据点；
%绘制xy之间数据时间域图像
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\Frequency response\2M-5ms-liner-100Hz-800kHz-590W.mat' %文件绝对路径
a=d_unnamedTask1PXI1Slot3ai1.Data/100;%注意更改通道任务名称
%b=d_unnamedTask1PXI1Slot3ai2.Data/100;%注意更改通道任务名称
%c=d_unnamedTask0PXI1Slot3ai1.Data/100;%注意更改通道任务名称
%d=d_unnamedTask1PXI1Slot3ai4.Data/100;%注意更改通道任务名称
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=300;%起始数据点
y=12000;%终止数据点
b=a(x:y,:);
f=(0:(y-x))*fs/length(b)/1000;
b1=abs(fft(b));
b2=20*log10(b1*2/(y-x));
%% 时域图像
figure(1)
subplot(211); 
plot(t(x:y),a(x:y)*1000);
title('EME');
ylabel('幅值/mV');
xlabel('时间/s');
subplot(212);
%plot(t(x:y),c(x:y)*1000);
semilogx(f(1:(y-x)/2),b2(1:(y-x)/2));
title('EME');
ylabel('幅值/mV');
xlabel('时间/s');
