%second order derivative filter function:
function y = bharti_sodf(x)
            y = zeros(length(x),1);
            for i=1:length(x)
            if i-1==0
            y(i)=x(i);
            elseif i-2==0
            y(i)=x(i)-2*x(i-1);
            else
            y(i)=x(i)-2*x(i-1)+x(i-2);
            end
            end
end
