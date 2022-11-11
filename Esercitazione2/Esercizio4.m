%Definire la matrice A.
%Per tale matrice:
%1) Estrarre la sottomatrice costituita dalle prime due rige
%2) Estrarre la sottomatrice costituita dalla prima e dalla terza riga
%3) Estrarre la sottomatrice costituita dalle prime tre colonne
%4) Estrarre la sottomatrice principale di ordine 2x3
%5) Ridefinire gli elementi della quarta riga con vettore di tutti 1
%6) Sostituire al blocco costituito dalle prime due righe e ultime due
%   colonne una matrice di zeri di opportune dimensioni
%7) Sostituire gli elementi negativi con il valore 3

disp("Notazione scientifica - format long e");
format long e
disp("Costruisco la matrice");
A = [ones(1, 4); ones(1, 4)*2; -1:-1:-4; 5:-1:2];
disp("Estraggo la sottomatrice costituita dalle prime due rige");
S1 = A(1:2 , :);
disp("Estraggo la sottomatrice costituita dalla prima e dalla terza riga");
S2 = [A(1, :) ; A(3, :)];
disp("Estraggo la sottomatrice costituita dalle prime tre colonne");
S3 = A(: , 1:3);
disp("Estraggo la sottomatrice principale di ordine 2x3");
S4 = A(1:2 , 2:4);
disp("Ridefinisco gli elementi della quarta riga con vettore di tutti 1");
A(4:4,:) = 1;
disp("Sostituisco al blocco costituito dalle prime due righe e ultime due colonne una matrice di zeri di opportune dimensioni");
A(1:2, 3:4) = 0;
disp("Sostituisco gli elementi negativi con il valore 3");
A(A < 0) = 3;