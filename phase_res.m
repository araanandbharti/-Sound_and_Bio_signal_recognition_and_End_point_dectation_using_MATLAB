% 1-Phase Response
clc;
close all;
clear all;

w = 0:pi/400:pi;
H8 = (1/8)*(1-exp(-1i*w*8))./(1-exp(-1i*w)); plot(w,angle(H8));
title('phase response plot'); xlabel('frequency'); ylabel('phase(H8(w))');
axis tight; grid on;
