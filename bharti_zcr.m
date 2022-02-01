%Sample Zero crossing rate
function zcr =bharti_zcr(y,sm_f,sm_s)

zcr=[];

for i=1:sm_s:length(y)
   sm_f_i = i;
   sm_f_e = i+sm_f-1;
   zc=0;
   for j=sm_f_i:1:sm_f_e-1
       if (j>length(y))
           break;
       end
        if((y(j)*y(j+1))<0)   
       zc = zc + 1;
       end        
   end
   zcr=horzcat(zcr,zc);
    
end
