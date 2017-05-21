%% Two Channel Choice waveform
%打开选用数据的文件，寻找想要提取的图像
%x输入起始数据点，y输入终止数据点；
%绘制xy之间数据时间域图像
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.4.21mat\4\2M-3ch-1EME-2AE-3Noise-4-38.mat' %文件绝对路径
a=d_unnamedTask7PXI1Slot3ai1.Data/100;%注意更改通道任务名称
b=d_unnamedTask7PXI1Slot3ai2.Data/100;%注意更改通道任务名称
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=2779000;%起始数据点
y=2780000;%终止数据点
a1=a(x:y,:);
b1=b(x:y,:);
Hd = lowpass800kHz;%800kHz低通滤波器
h1=filter(Hd,a1);%滤波
h2=filter(Hd,b1);%滤波
f=(0:(y-x))*fs/length(a1)/1000;
a2=abs(fft(h1));
b2=abs(fft(h2));
figure(1)
subplot(221); 
plot(t(x:y)*1000,a(x:y)*1000,'k');
title('EME','fontsize',14);
ylabel('幅值/mV','fontsize',14);
xlabel('时间/ms','fontsize',14);
set(gca,'fontsize',14);
subplot(222);
plot(f(2:floor((y-x)/2)),a2(2:floor((y-x)/2)),'k');
xlim([0,800]);
title('FFT','fontsize',14);
ylabel('FFT','fontsize',14);
xlabel('f/kHz','fontsize',14);
set(gca,'fontsize',14);
subplot(223); 
plot(t(x:y)*1000,b(x:y)*1000,'k');
title('AE','fontsize',14);
ylabel('幅值/mV','fontsize',14);
xlabel('时间/ms','fontsize',14);
set(gca,'fontsize',14);
subplot(224);
plot(f(2:floor((y-x)/2)),b2(2:floor((y-x)/2)),'k');
xlim([0,800]);
title('FFT','fontsize',14);
ylabel('FFT','fontsize',14);
xlabel('f/kHz','fontsize',14);
set(gca,'fontsize',14);