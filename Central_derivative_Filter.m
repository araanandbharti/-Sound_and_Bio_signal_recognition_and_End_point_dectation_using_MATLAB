%Central derivative Filter:
w = -4*pi:0.1:4*pi;
H = 0.5*(1-exp(-2*1i*w));
figure(1)
subplot(2,1,1);plot(w,abs(H)); title('Magnitude response'); 
ylabel('magnitude of H(w)'); xlabel('w');axis 'tight';grid 'on'; 
subplot(2,1,2);plot(w,phase(H)); title('Phase response');
ylabel('phase of H(w)');xlabel('w');axis 'tight';grid 'on'; 
