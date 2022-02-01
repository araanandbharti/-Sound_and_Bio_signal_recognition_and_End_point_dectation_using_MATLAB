%No. of turning point
function ntp =bharti_ntp(x,m,m_s)
ntp=[];

for i=1:m_s:length(x)
   sm_f_i = i;
   sm_f_e = i+m-1;
   tp=0;
   for j=sm_f_i+1:1:sm_f_e-1
       if (j>length(x))
           break;
       end
        if((x(j)-x(j-1))*(x(j)-x(j+1))<0)   
       tp = tp + 1;
       end        
   end
   ntp=horzcat(ntp,tp);
    
end
