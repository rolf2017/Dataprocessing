%% �źŶԱ�
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.1.11mat\2M-4ch-2100W.mat' %�ļ�����·��
load 'D:\WorkMatlab\2016.1.11mat\2M-4ch-2100W.mat' %�ļ�����·��
a=d_unnamedTask1PXI1Slot3ai1.Data/100;
b=d_unnamedTask1PXI1Slot3ai3.Data/100;
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
f=n*fs/N/1000;
a_FFT=abs(fft(a));
b_FFT=abs(fft(b));
%% ʱ����ͼ��
figure(1)
subplot(211);plot(t,a*1000); 
title('EME(��AE)');
ylabel('��ѹ/mV');
xlabel('ʱ��/s');
%hold on;
subplot(212);
plot(t,b*1000);
title('EME(��AE)');
ylabel('��ѹ/mV');
xlabel('ʱ��/s');
%% Ƶ����ͼ��
%figure(2)
%semilogy(f(2:ceil(length(f)/2)),a_FFT(2:ceil(length(a_FFT)/2)),'r'); hold on;
%semilogy(f(2:ceil(length(f)/2)),b_FFT(2:ceil(length(b_FFT)/2)));
%title('����Ƶ��Ա�����');
%ylabel('FFT��ֵ');
%xlabel('f/kHz');
