%Correlation.
function ycorr =bharti_corr(y,m,m_s)
ycorr=[];

for i=1:m_s:length(y)
   sm_f_i = i;
   sm_f_e = i+m;
   sum=0;
   for j=sm_f_i:1:sm_f_e
       if (j>length(y))
           break;
       end
       
       sum=sum+(y(j)*y(j+i));
              
   end
   ycorr=horzcat(ycorr,sum);
    
end
