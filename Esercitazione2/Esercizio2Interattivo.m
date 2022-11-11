%Scrivere poi un programma che faccia la stessa cosa, ma leggendo i dati da
%tastiera (programmazione classica);
function Esercizio2Interattivo
B = costruisciMatrice;
x = input("Scegli la prima riga da sommare: ");
y = input("Scegli la seconda riga da sommare: ");
sommaComponenti = somma(B, x, y);
disp("La somma tra la " + num2str(x) + " riga e la " + num2str(y) +" colonna e': " + sommaComponenti);
end

function A = costruisciMatrice
x = input("Inserire il numero di righe: ");
y = input("Inserire il numero di colonne: ");
A = zeros(x,y);
for i = 1 : x
    for j = 1 : y
        A(i,j) = input("Inserisci l'elemento in posizione " + num2str(i) + "x" + num2str(j) +": ");
    end
end
end

function s = somma(A, x, y)
righe = size(A, 2);
s = 0;
for i = 1 : righe
    s = s + A(x, i) + A(y, i);
end
end