%% 
%��ѡ�����ݵ��ļ���Ѱ����Ҫ��ȡ��ͼ��
%x������ʼ���ݵ㣬y������ֹ���ݵ㣻
%����xy֮������ʱ����ͼ��
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\Frequency response\2M-5ms-liner-100Hz-800kHz-590W.mat' %�ļ�����·��
a=d_unnamedTask1PXI1Slot3ai1.Data/100;%ע�����ͨ����������
%b=d_unnamedTask1PXI1Slot3ai2.Data/100;%ע�����ͨ����������
%c=d_unnamedTask0PXI1Slot3ai1.Data/100;%ע�����ͨ����������
%d=d_unnamedTask1PXI1Slot3ai4.Data/100;%ע�����ͨ����������
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=300;%��ʼ���ݵ�
y=12000;%��ֹ���ݵ�
b=a(x:y,:);
f=(0:(y-x))*fs/length(b)/1000;
b1=abs(fft(b));
b2=20*log10(b1*2/(y-x));
%% ʱ��ͼ��
figure(1)
subplot(211); 
plot(t(x:y),a(x:y)*1000);
title('EME');
ylabel('��ֵ/mV');
xlabel('ʱ��/s');
subplot(212);
%plot(t(x:y),c(x:y)*1000);
semilogx(f(1:(y-x)/2),b2(1:(y-x)/2));
title('EME');
ylabel('��ֵ/mV');
xlabel('ʱ��/s');
