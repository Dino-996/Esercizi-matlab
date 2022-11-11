    function [A,b]=esercizio3(n)
    for i=1:n
        A(i,:)=min(i, [1:n])*i.*[1:n];
    end
    b=ones(n,1);
    end
    
    
    
    
    
    
    
    
    
    
    
    % toll=2*cond(A,inf)*eps=3.7564e-08
    % la matrice è simmetrica definita positiva
    % norm(b-A*x,inf)=5.295763827461997e-14
    