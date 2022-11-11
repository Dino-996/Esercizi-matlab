%Si scriva una function che calcoli (componente per componente) la 
% trasposta di una matrice quadrata;

function A = Esercizio3(A)
    risultato = funzionePredefinita(A);
    disp("Risultato con funzione predefinita di Matlab: ");
    disp(risultato);
    disp("Risultato con funzione scritta manualmente: ");
    n = size(A,1);
    %Trasposta
    for i = 1 : n
        for j = 1 : i - 1
            p = A(i, j);
            A(i, j) = A(j, i);
            A(j,i) = p;
        end
    end
end

function trasposta = funzionePredefinita(A)
    trasposta = A';
end