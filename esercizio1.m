function [A,b]=esercizio1(n)
for i=1:n
    A(i,:)=(i+[1:n]).^3;
end
A(sub2ind(size(A),[1:n], [1:n]))=1./exp(n-[1:n]);
b=sum(A,2);
end

















% 2*cond(A,inf)*eps =   1.7651e-09
% la matrice non ha particolari caratteristiche
% norm(x-ones(size(x)),inf)= 2.164468604348713e-11
