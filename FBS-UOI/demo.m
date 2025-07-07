%%
%code for "Restoration of underwater optical image with non-uniform illumination via foreground and background segmentation"
%Chaojie Men, Jingyi Li, Zhimin Liu, Xinyue Zhang, Guojia Hou*
%This code is tested on Windows 10 64bit with MATLAB 2019b.
%--------------------------------------------------------------------------------------------------------------
%%
clear all;clc;
tic;
window = 5;
r = 32;
eps = 0.01;
imgPath = './Images/'; 
imgDir = dir([imgPath '*.png']); 
for i = 1:length(imgDir)         
    img = imread([imgPath imgDir(i).name]); 
    [t,result]=restore(img, window, r, eps);
    x = find('.'==imgDir(i).name);
    resultName=strcat('./Images/', imgDir(i).name(1:x-1), '_result.png');
    imwrite(result , resultName);
end
toc;