%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.6.30mat\2\2M-50kHz-tiek-1.mat' %文件绝对路径
a=d_unnamedTask17PXI1Slot3ai1.Data/100;%注意更改通道任务名称
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=1;%起始数据点
y=1000;%终止数据点
b=a(x:y,:);
f=(0:(y-x))*fs/length(b)/1000;
b1=abs(fft(b));
subplot(211); 
plot(t(x:y)*1000,a(x:y)*1000,'k');
title('EME');
ylabel('幅值/mV');
xlabel('时间/ms');
subplot(212);
plot(f(1:(y-x)/2),b1(1:(y-x)/2),'k');
title('频率');
ylabel('幅值');
xlabel('频率/kHz');