% 1-Magnitude Response
clc;
close all;
clear all;
w = 0:pi/400:pi;

H8 = (1/8)*(1-exp(-1j*w*8))./(1-exp(-1j*w)); 
plot(w,abs(H8));title('Magnitude response plot');xlabel('frequency');
ylabel('|(H8(w))|');grid on;axis tight;
