%% 信号对比
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.1.11mat\2M-4ch-2100W.mat' %文件绝对路径
load 'D:\WorkMatlab\2016.1.11mat\2M-4ch-2100W.mat' %文件绝对路径
a=d_unnamedTask1PXI1Slot3ai1.Data/100;
b=d_unnamedTask1PXI1Slot3ai3.Data/100;
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
f=n*fs/N/1000;
a_FFT=abs(fft(a));
b_FFT=abs(fft(b));
%% 时间域图像
figure(1)
subplot(211);plot(t,a*1000); 
title('EME(有AE)');
ylabel('电压/mV');
xlabel('时间/s');
%hold on;
subplot(212);
plot(t,b*1000);
title('EME(无AE)');
ylabel('电压/mV');
xlabel('时间/s');
%% 频率域图像
%figure(2)
%semilogy(f(2:ceil(length(f)/2)),a_FFT(2:ceil(length(a_FFT)/2)),'r'); hold on;
%semilogy(f(2:ceil(length(f)/2)),b_FFT(2:ceil(length(b_FFT)/2)));
%title('噪声频域对比曲线');
%ylabel('FFT幅值');
%xlabel('f/kHz');
