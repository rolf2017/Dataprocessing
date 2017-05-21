%% Two Channel Choice waveform
%��ѡ�����ݵ��ļ���Ѱ����Ҫ��ȡ��ͼ��
%x������ʼ���ݵ㣬y������ֹ���ݵ㣻
%����xy֮������ʱ����ͼ��
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.4.21mat\4\2M-3ch-1EME-2AE-3Noise-4-38.mat' %�ļ�����·��
a=d_unnamedTask7PXI1Slot3ai1.Data/100;%ע�����ͨ����������
b=d_unnamedTask7PXI1Slot3ai2.Data/100;%ע�����ͨ����������
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=2779000;%��ʼ���ݵ�
y=2780000;%��ֹ���ݵ�
a1=a(x:y,:);
b1=b(x:y,:);
Hd = lowpass800kHz;%800kHz��ͨ�˲���
h1=filter(Hd,a1);%�˲�
h2=filter(Hd,b1);%�˲�
f=(0:(y-x))*fs/length(a1)/1000;
a2=abs(fft(h1));
b2=abs(fft(h2));
figure(1)
subplot(221); 
plot(t(x:y)*1000,a(x:y)*1000,'k');
title('EME','fontsize',14);
ylabel('��ֵ/mV','fontsize',14);
xlabel('ʱ��/ms','fontsize',14);
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
ylabel('��ֵ/mV','fontsize',14);
xlabel('ʱ��/ms','fontsize',14);
set(gca,'fontsize',14);
subplot(224);
plot(f(2:floor((y-x)/2)),b2(2:floor((y-x)/2)),'k');
xlim([0,800]);
title('FFT','fontsize',14);
ylabel('FFT','fontsize',14);
xlabel('f/kHz','fontsize',14);
set(gca,'fontsize',14);