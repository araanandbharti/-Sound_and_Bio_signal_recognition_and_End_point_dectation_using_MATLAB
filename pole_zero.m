M=input('Enter length of average M: ');
numerator=ones(1,M-1); 
denominator=zeros(1,M-1); 
denominator(1)=1; 
var=tf(numerator,denominator); % to create transfer function.
pzmap(var); %to plot pole zero.
title(['Poles-zeros of system for M=', num2str(M)])
