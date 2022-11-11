%Scrivere una function che preveda in input due vettori x ed y di uguale
%lunghezza ed effettui le seguenti operazioni:
function [A, mediaPari, conta] = Esercizio5(x,y)
verificax = length(x);
verificay = length(y);
if verificax ~= verificay
    disp("La funzione accetta solo matrici quadrate!");
    return;
end
n = numel(x);
A = zeros(n);
for i = 1 : n
    for j = 1 : n
        %Il punto eleva al quadrato ogni singolo elemento della
        %matrice.
        A(i,j) = 1/(x(i)+y(j));
    end
end
mediaPari = mean(mean(A(:,2:2:end)));
conta = numel(A(A<mediaPari));
end