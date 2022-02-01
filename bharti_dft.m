function Xk=bharti_dft(x)
N=length(x);
w=exp(-2*pi*1i/N);
W=ones(N,N);
k=-1;
 for i=1:N
        k=k+1;
        for j=1:N 
            W(i,j)=w^(k*(j-1));
        end
 end
Xk=(W*(x'))';
end
