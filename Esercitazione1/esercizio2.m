%Scrivere una function Matlab che prevede in input due vettori x e y di
%uguale lunghezza ed effettui le seguenti operazioni:
%Costruisca la matrice quadrata che abbia l'elemento di posto (i,j)
%definito da x(i)^2+y(i)^2.
%Calcoli la somma degli elementi delle righe di indice dispari e la divida
%per NxN e verifichi se tutti gli elementi della matrice sono maggiori di 
%tale numero.
%Restituisca la matrice, la somma calcolata e una variabile logica per la 
%verifica.

function [M, sommaRigheDispari, verifica] = esercizio2(x, y)
lunghezzaX = numel(x);
lunghezzaY = numel(y);
    if lunghezzaY ~= lunghezzaX
    disp("Inserire due vettori di lunghezza identica");
    return;
    end
    M = zeros(lunghezzaX);
    for i = 1 : lunghezzaX
        for j = 1 : lunghezzaY
            M(i,j) = x(i)^2+y(j)^2;
        end
    end
    sommaRigheDispari = sum(sum(M(1:2:lunghezzaY,:)));
    dividi = sommaRigheDispari/M(lunghezzaY*lunghezzaX);
    verifica = all(all(M>dividi));
end


