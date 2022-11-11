function [A,b]=esercizio2(n)

A=10*n*speye(n);
A(sub2ind(size(A),[1:n-1], [2:n]))=[1:4:4*n-7];
A(sub2ind(size(A),[2:n], [1:n-1]))=[1:4:4*n-7];
A(n,1)=1;
A(1,n)=1;
b=sum(A,2);
end


w=10*n*ones(n,1);
v=[1:4:4*n-7,0];
z=[0,1:4:4*n-7];
A=spdiags([v,w,z],[-1:1],n,n);

% toll=2*condest(A)*eps=3.624557534912654e-15

% matrice a diagonale dominante simmetrica definita positiva

% Jacobi converge con 130 iterazioni
% costo computazionale complessivo nnz(P)*k=78000
% norm(x-ones(size(x)),inf)=1.55 e-15