function [magf] = mag( data, f_d, fs)
frames = framing(data, fs, f_d);
% calculate frames energy
[r,c] = size(frames);
magf = 0;
for i = 1 : r
    magf(i) = sum(frames(i,:)); 
    
end
 
magf = magf./max(magf); %normalize the data
 
f_size = round(f_d * fs);
ste_wave = 0;
for j = 1 : length(magf)
    l = length(ste_wave);
    ste_wave(l : l + f_size) = magf(j);
end

% plot the STE with Signal
t = [0 : 1/fs : length(data)/fs]; % time in sec
t = t(1:end - 1);
t1 = [0 : 1/fs : length(ste_wave)/fs];
t1 = t1(1:end - 1);

figure
plot(t,data'); hold on;
plot(t1,ste_wave,'r','LineWidth',2);
legend('Speech Signal','Short Term Magnitude)');
