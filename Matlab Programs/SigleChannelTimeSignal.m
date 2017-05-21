%% 
clc;
clear all;
close all
%%
load 'D:\WorkMatlab\2016.6.30mat\1\2M-50kHz-1mm-1.mat'
a=d_unnamedTask1PXI1Slot3ai1.Data/100;%ע�����ͨ����������
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
f=n*fs/N/1000;
a_FFT=abs(fft(a));
%% ʱ����ͼ��
figure(1)
subplot(211);
plot(t,a*1000);
title('EME');
ylabel('��ֵ/mV');
xlabel('ʱ��/s');
%% Ƶ����ͼ��
subplot(212);
plot(f(2:ceil(length(f)/2)),a_FFT(2:ceil(length(a_FFT)/2)));
title('EMEƵ��');
ylabel('FFT');
xlabel('f/kHz');


