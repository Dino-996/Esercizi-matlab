function [A,b]=esercizio6(n)
A=spdiags([n+1:2*n]',0,n,n);
A(sub2ind(size(A),[1:n-1],[2:n]))=[-(n-1):-1];
A(sub2ind(size(A),[2:n],[1:n-1]))=[1:n-1];
b=sum(A,2);
end









% toll=2*condest(A)*eps=1.302894881929603e-14
% a diagonale dominante
% Jacobi converge in 86 iterazioni con un costo pari a 86*nnz(P)=90214
% norm(x-ones(size(x)),inf)=4.440892098500626e-15
% il costo è comparabile con \ (che è dell'ordine di n?2
