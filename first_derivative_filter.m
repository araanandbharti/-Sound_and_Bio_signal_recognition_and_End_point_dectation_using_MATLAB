%first order derivative filter function:
function y = bharti_fodf(x)
            y = zeros(length(x),1);
            for i=1:length(x)
            if i-1==0
            y(i)=x(i);
            else
            y(i)=x(i)-x(i-1);
            end
            end
end
