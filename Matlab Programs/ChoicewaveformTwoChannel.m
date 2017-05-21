%% Two Channel Choice waveform
%��ѡ�����ݵ��ļ���Ѱ����Ҫ��ȡ��ͼ��
%x������ʼ���ݵ㣬y������ֹ���ݵ㣻
%����xy֮������ʱ����ͼ��
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\2016.1.11mat\2M-4ch-2100W.mat' %�ļ�����·��
a=d_unnamedTask1PXI1Slot3ai1.Data/100;%ע�����ͨ����������
b=d_unnamedTask1PXI1Slot3ai3.Data/100;%ע�����ͨ����������
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=260000;%��ʼ���ݵ�
y=260400;%��ֹ���ݵ�
a1=a(x:y,:);
b1=b(x:y,:);
Hd = lowpass800kHz;%800kHz��ͨ�˲���
h1=filter(Hd,a1);%�˲�
h2=filter(Hd,b1);%�˲�
f=(0:(y-x))*fs/length(a1)/1000;
a2=abs(fft(h1));
b2=abs(fft(h2));
figure(1)
subplot(211); 
plot(t(x:y)*1000,a(x:y)*1000,'k');
title('EME','fontsize',14);
ylabel('��ֵ/mV','fontsize',14);
xlabel('ʱ��/ms','fontsize',14);
set(gca,'fontsize',14);
subplot(212); 
plot(t(x:y)*1000,b(x:y)*1000,'k');
title('AE','fontsize',14);
ylabel('��ֵ/mV','fontsize',14);
xlabel('ʱ��/ms','fontsize',14);
set(gca,'fontsize',14);
