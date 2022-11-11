function [A,b]=esercizio4(n)
    A=spdiags(5*[1:n]',0,n,n);
    A(1,:)=3;
    A(n,1:n-1)=3;
    A(:,1)=3;
    A(1,1)=100;
    b=sum(A,2);
end





% toll=2*condest(A)*eps=1.540316272652081e-13
% non ha proprietà particolari
% Jacobi converge in k=31 iterazioni
% costo totale 31*nnz(Pj)=57102
% norm(x-ones(size(x)),inf)=1.136868377216160e-13
% anche Gauss Seidel converge (in 17 iterazioni) ma nnz(P)
% è molto più grande del caso Jacobi la matrice di iterazione
%di Gauss Seidel è piena
    