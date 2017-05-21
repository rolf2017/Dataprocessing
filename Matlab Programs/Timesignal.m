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
%% ʱ����ͼ��
figure(1)
subplot(211);plot(t,a);
title('EME');
ylabel('��ֵ/V');
xlabel('ʱ��/s');
%subplot(412);plot(t,b);
%title('Ӧ��');
%ylabel('��ֵ/V');
%xlabel('ʱ��/s');
subplot(212);plot(t,c);
title('AE');
ylabel('��ֵ/V');
xlabel('ʱ��/s');
%subplot(414);plot(t,d);
%title('�Ű�����');
%ylabel('��ֵ/V');
%xlabel('ʱ��/s');
%% Ƶ����ͼ��
figure(2)
subplot(211);plot(f(2:ceil(length(f)/2)),a_FFT(2:ceil(length(a_FFT)/2)));
title('EMEƵ������');
ylabel('FFT');
xlabel('f/kHz');
%subplot(412);plot(f(2:ceil(length(f)/2)),b_FFT(2:ceil(length(b_FFT)/2)));
%title('Ӧ��Ƶ������');
%ylabel('FFT��ֵ');
%xlabel('f/kHz');
subplot(212);plot(f(2:ceil(length(f)/2)),c_FFT(2:ceil(length(c_FFT)/2)));
title('AEƵ������');
ylabel('FFT');
xlabel('f/kHz');
%subplot(414);plot(f(2:ceil(length(f)/2)),d_FFT(2:ceil(length(d_FFT)/2)));
%title('�Ű�����Ƶ������');
%ylabel('FFT��ֵ');
%xlabel('f/kHz');