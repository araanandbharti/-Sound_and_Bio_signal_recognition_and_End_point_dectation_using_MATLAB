%Sample entropy
function yent =bharti_st_ent(x,m,m_s)
n=max(x);
y=x./n;
y=abs(y);
yent=[];

for i=1:m_s:length(y)
   sm_f_i = i;
   sm_f_e = i+m;
   sum=0;
   for j=sm_f_i:1:sm_f_e
       if (j>length(y))
           break;
       end
     if(y(j)~=0)
        sum = sum - y(j)*log(y(j));
     end
              
   end
   yent=horzcat(yent,sum);
    
end
