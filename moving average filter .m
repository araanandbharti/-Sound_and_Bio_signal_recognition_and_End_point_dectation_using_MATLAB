clc;
close all;
clear all;
%file = load('Signal Name'); Write the signal name.
file = load('ppg_awgn_5db_fs_100hz_10seconds.mat'); 
k = 100*2; 
x = zeros(1,k); 
for l=1:k
x(l)=file.x1(l); 
end
num0 =1/10*ones(1,10);
num1 =1/25*ones(1,25); 
num2 =1/50*ones(1,50); 
num4=1/100*ones(1,100); 
den = (1);
y0 =filter(num0,den,x);y1 =filter(num1,den,x); 
y2 =filter(num2,den,x);y3 =filter(num4,den,x);
t1=1:1:k;
t=t1/100;
figure(1);
subplot(4,1,1);plot(t,x,'b');title('M=10'); hold on;plot(t,y0,'r');grid on; axis tight;
legend('PPG signal','filtered signal');
 
subplot(4,1,2);plot(t,x,'b');title('M=25');hold on; plot(t,y1,'r');grid on; axis tight;
legend('PPG signal','filtered signal');

subplot(4,1,3);plot(t,x,'b');title('M=50');hold on;plot(t,y2,'r');grid on; axis tight;
legend('PPG signal','filtered signal'); 

subplot(4,1,4);plot(t,x,'b');title('M=100'); hold on;plot(t,y3,'r');grid on; axis tight;
legend('PPG signal','filtered signal');
