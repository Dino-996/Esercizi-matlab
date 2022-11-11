%Scrivere una function che date una matrice e due indici di riga calcoli
%(componente per componente) la somma degli elementi delle due righe.

function somma = Esercizio2(A, x, y)
somma = 0;
dimRighe = size(A,1);
for i = 1 : dimRighe
    somma = somma + (A(x,i) + A(y,i));
    disp("Somma: " + num2str(somma));
end
end