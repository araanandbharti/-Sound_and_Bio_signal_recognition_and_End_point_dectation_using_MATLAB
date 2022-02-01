%Sample standard deviation
function y = bharti_st_sd(x,m,m_s)
y= bharti_st_var(x,m,m_s);
y=y.^0.5;
end
