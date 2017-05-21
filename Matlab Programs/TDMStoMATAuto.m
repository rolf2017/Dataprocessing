%% TDMSFile to mat File
clc;
clear all;
close all;
%%
Filelist=dir(strcat('D:\WorkMatlab\2016.6.29mat\4','\','*tdms'))%输入文件路径
for iii=1:length(Filelist)
	fileName=strcat('D:\WorkMatlab\2016.6.29mat\4\',Filelist(iii).name);%输入文件路径，注意路径后'\',运行后生成同名mat格式文件；例如ying.tdms文件转化后为ying.mat
	matFileName=simpleConvertTDMS(fileName);
end






