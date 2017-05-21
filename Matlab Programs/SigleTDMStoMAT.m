%% TDMSFile to mat File
clc;
clear all;
close all;
%%
fileName='D:\WorkMatlab\201612\2M-1ch-10V-EME-test5.tdms';%输入需要读取的TDMS文件路径，运行后生成同名mat格式文件；例如ying.tdms文件转化后为ying.mat
matFileName=simpleConvertTDMS(fileName);








