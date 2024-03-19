L=610;
alpha_all=linspace(1,L,L)/L;


Data=zeros(L,L);
H0=diag(ones(1,L-1),1)+diag(ones(1,L-1),-1);
H0(1,L)=1;
H0(L,1)=1;
for m=1:L
    a=alpha_all(m);
    H1=H0+2*diag(cos(2*pi*a*linspace(1,L,L)));
    [Ev,E]=eig(H1,'vector');
    Data(m,:)=E;
end

for m=1:L
   plot(m*ones(1,L),Data(m,:),'.')
   hold on;
end
