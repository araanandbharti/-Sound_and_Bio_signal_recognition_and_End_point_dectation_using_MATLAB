%Sample kurtosis (KUR)
function y = bharti_st_kur(x,m,m_s)
n= length(x);
y=zeros;
k=0;
m=bharti_st_mean(x,m,m_s);
s=bharti_st_sd(x,m,m_s);
for i=1:m_s:n
    k=k+1;
    f =i;
    e=(i+m);
    add=0;
    for j=f:1:e
        if j>n
            break;
        end
        add=add+(x(j)-m(k))^4 ;
    end
      y(k)=add/((m-1)*(s(k)^4));
   
end  
end
