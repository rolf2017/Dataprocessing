%% TDMSFile to mat File
clc;
clear all;
close all;
%%
Filelist=dir(strcat('D:\WorkMatlab\2016.6.29mat\4','\','*tdms'))%�����ļ�·��
for iii=1:length(Filelist)
	fileName=strcat('D:\WorkMatlab\2016.6.29mat\4\',Filelist(iii).name);%�����ļ�·����ע��·����'\',���к�����ͬ��mat��ʽ�ļ�������ying.tdms�ļ�ת����Ϊying.mat
	matFileName=simpleConvertTDMS(fileName);
end






