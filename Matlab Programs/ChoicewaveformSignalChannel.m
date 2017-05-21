%% Signal Channel Choice waveform
%��ѡ�����ݵ��ļ���Ѱ����Ҫ��ȡ��ͼ��
%x������ʼ���ݵ㣬y������ֹ���ݵ㣻
%����xy֮������ʱ����ͼ��
%% 
clc;
clear all;
close all;
%%
load 'D:\WorkMatlab\201612\2M-1ch-10V-EME-test7.mat' %�ļ�����·��
a=d_unnamedTask2PXI1Slot3ai1.Data/100;%ע�����ͨ����������
fs=2000000;N=length(a);n=0:N-1;t=0:1/fs:(N-1)/fs;
x=1;%��ʼ���ݵ�
y=20000000;%��ֹ���ݵ�
a1=a(x:y,:);
Hd = lowpass800kHz;%800kHz��ͨ�˲���
h1=filter(Hd,a1);%�˲�
f=(0:(y-x))*fs/length(a1)/1000;
a2=abs(fft(h1));
figure(1)
% subplot(211); 
plot(t(x:y),a(x:y)*1000,'k','linewidth',1);
ylim([-1,1])%������
title('EME','fontsize',14);
ylabel('��ֵ/mV','fontsize',14);
xlabel('ʱ��/s','fontsize',14);
set(gca,'fontsize',14);
% subplot(212);
% plot(f(2:floor((y-x)/2)),a2(2:floor((y-x)/2)),'k');
% xlim([0,800]);
% title('FFT','fontsize',14);
% ylabel('FFT','fontsize',14);
% xlabel('f/kHz','fontsize',14);
 %set(gca,'fontsize',14,'position',[0.10 0.14 0.89 0.75]);%ͼ�����

   % set(gcf,'position',[384   280  800   500])%���ڴ�С
    %print(gcf,'-dmeta','D:\2016doc\docpicture\test')%���·��
    %print(gcf,'-deps','D:\2016doc\docpicture\test')%���·��
   % saveas(gcf,'D:\WorkMatlab\201612\plotdata','fig')%����·��