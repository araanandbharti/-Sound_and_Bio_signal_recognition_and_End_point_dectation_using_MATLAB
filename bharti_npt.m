fs=16000;
[y,fs]=audioread('audio3sec.wav');
st= 0.030;
si= 0.010;

sm_f=fs*st;
sm_s=fs*si;

ntp=[];

for i=1:sm_s:length(y)
   sm_f_i = i;
   sm_f_e = i+sm_f-1;
   tp=0;
   for j=sm_f_i+1:1:sm_f_e-1
       if (j>length(y))
           break;
       end
        if((y(j)-y(j-1))*(y(j)-y(j+1))<0)   
       tp = tp + 1;
       end        
   end
   ntp=horzcat(ntp,tp);
    
end
t=(1/fs).*(1:1:length(y));
figure(1)
subplot(2,1,1)
plot(y);  xlabel('audio signal');xlim([0,length(y)]);
subplot(2,1,2)
plot(ntp); xlabel('no of turning point');xlim([0,length(y)/sm_s]);
