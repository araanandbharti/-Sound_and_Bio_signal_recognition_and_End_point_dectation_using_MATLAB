%Short term magnitude
function y =bharti_stm(x,m,m_s)
y=[];

for i=1:m_s:length(x)
   sm_f_i = i;
   sm_f_e = i+m;
   sum=0;
   for j=sm_f_i:1:sm_f_e
       if (j>length(x))
           break;
       end
       
       sum =sum+abs(x(j)); 
              
   end
   y=horzcat(y,sum);
    
end

end