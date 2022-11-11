function [A,B]=esercizio5(n)
for i=1:n
    A(i,:)=sqrt(2/(n+1))*cos(i*[1:n]*pi/n);
end
A=A+diag(40*ones(n,1));
B=[ones(n,1), sum(A,2), 3*ones(n,1)];
end










% toll=2*cond(A,inf)*eps=1.075650136711037e-15
% matrice a diagonale dominante, simmetrica definita positiva
% si usa la fattorizzazione di Cholesky
% R=chol(A); 
% y=sostAvanti(R',B(:,1)); X(:,1)=sostIndietro(R,y);
% y=sostAvanti(R',B(:,2)); X(:,2)=sostIndietro(R,y);
% y=sostAvanti(R',B(:,3)); X(:,3)=sostIndietro(R,y);
% norm(B-A*X,inf)/norm(B,inf)=2.21 e-15