%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.6.30mat\2\2M-50kHz-tiek-1.mat' %�ļ�����·��
a=d_unnamedTask17PXI1Slot3ai1.Data/100;%ע�����ͨ����������
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=1;%��ʼ���ݵ�
y=1000;%��ֹ���ݵ�
b=a(x:y,:);
f=(0:(y-x))*fs/length(b)/1000;
b1=abs(fft(b));
subplot(211); 
plot(t(x:y)*1000,a(x:y)*1000,'k');
title('EME');
ylabel('��ֵ/mV');
xlabel('ʱ��/ms');
subplot(212);
plot(f(1:(y-x)/2),b1(1:(y-x)/2),'k');
title('Ƶ��');
ylabel('��ֵ');
xlabel('Ƶ��/kHz');