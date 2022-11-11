function [MatriceV, massimoDispari, verifica] = Esercizio5(vettoreV)
%Creo la matrice di Vandermonde di ordine N
MatriceV = fliplr(vander(vettoreV));
%Calcolo il massimo delle righe dispari
massimoDispari = max(max(MatriceV(1:2:end, :)));
%Calcolo il massimo delle righe pari
massimoPari = max(max(MatriceV(2:2:end, :)));
%Verifico se esiste almeno un elemento sulle righe pari maggiore del
%massimo sulle righe dispari
verifica = massimoPari > massimoDispari;
if verifica == 1
    disp("Esiste almeno un elemento sulle righe pari maggiore dell'elemento massimo delle righe dispari");
else
    disp("Non esiste alcun elemento sulle righe pari maggiore dell'elemento massimo delle righe dispari");
end
end