%% 
clc;
clear all;
close all
%%
load 'D:\WorkMatlab\2016.6.30mat\1\2M-50kHz-1mm-1.mat'
a=d_unnamedTask1PXI1Slot3ai1.Data/100;%注意更改通道任务名称
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
f=n*fs/N/1000;
a_FFT=abs(fft(a));
%% 时间域图像
figure(1)
subplot(211);
plot(t,a*1000);
title('EME');
ylabel('幅值/mV');
xlabel('时间/s');
%% 频率域图像
subplot(212);
plot(f(2:ceil(length(f)/2)),a_FFT(2:ceil(length(a_FFT)/2)));
title('EME频率');
ylabel('FFT');
xlabel('f/kHz');


