%% 
clc;
clear all;
close all
%%
load 'D:\WorkMatlab\2016.1.11mat\2M-4ch-1200W.mat'
a=d_unnamedTask1PXI1Slot3ai1.Data/100;
%b=d_unnamedTask1PXI1Slot3ai2.Data/100;
c=d_unnamedTask1PXI1Slot3ai3.Data/100;
%d=d_unnamedTask1PXI1Slot3ai4.Data/100;
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
f=n*fs/N/1000;
a_FFT=abs(fft(a));
%b_FFT=abs(fft(b));
c_FFT=abs(fft(c));
%d_FFT=abs(fft(d));
%% 时间域图像
figure(1)
subplot(211);plot(t,a);
title('EME');
ylabel('幅值/V');
xlabel('时间/s');
%subplot(412);plot(t,b);
%title('应变');
%ylabel('幅值/V');
%xlabel('时间/s');
subplot(212);plot(t,c);
title('AE');
ylabel('幅值/V');
xlabel('时间/s');
%subplot(414);plot(t,d);
%title('磁棒天线');
%ylabel('幅值/V');
%xlabel('时间/s');
%% 频率域图像
figure(2)
subplot(211);plot(f(2:ceil(length(f)/2)),a_FFT(2:ceil(length(a_FFT)/2)));
title('EME频率曲线');
ylabel('FFT');
xlabel('f/kHz');
%subplot(412);plot(f(2:ceil(length(f)/2)),b_FFT(2:ceil(length(b_FFT)/2)));
%title('应变频率曲线');
%ylabel('FFT幅值');
%xlabel('f/kHz');
subplot(212);plot(f(2:ceil(length(f)/2)),c_FFT(2:ceil(length(c_FFT)/2)));
title('AE频率曲线');
ylabel('FFT');
xlabel('f/kHz');
%subplot(414);plot(f(2:ceil(length(f)/2)),d_FFT(2:ceil(length(d_FFT)/2)));
%title('磁棒天线频率曲线');
%ylabel('FFT幅值');
%xlabel('f/kHz');