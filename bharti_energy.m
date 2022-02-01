clc;
clear all;
close all;

fs=16000;
[y,fs]=audioread('audio3sec.wav');
st= 0.030;
si= 0.010;

sm_f=fs*st;
sm_s=fs*si;

amp=[];

for i=0:sm_s:length(y)
   sm_f_i = i;
   sm_f_e = i+sm_f;
   sum=0;
   for j=sm_f_e:1:sm_f_e
       if (j>length(y))
           break;
       end
       
       sum =sum+(abs(y(j))^2); 
              
   end
   amp=horzcat(amp,sum);
    
end
t=(1/fs).*(1:length(y));
figure(1)
subplot(2,1,1)
plot(y);  xlabel('audio signal');xlim([0,length(y)]);
subplot(2,1,2)
plot(amp); xlabel('short term energy');xlim([0,length(y)/sm_s]);
