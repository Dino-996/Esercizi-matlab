%Definire una matrice A.
%Calcolarne le dimensioni.
%Elevare al quadrato i suoi elementi
%Estrarre la matrice diagonale
%Estrarre le matrici triangolari superiore e inferiore

disp("Notazione scientifica - format long e");
format long e
A = [1:4; 5:8; 9:12; 13:16];
disp("Creo la matrice A: " + num2str(A));
dim = size(A);
disp("Determino le dimensioni della matrice: " + num2str(dim));
elementiAlQuadrato = A.^2;
disp("Elevo al quadrato i suoi elementi: " + num2str(elementiAlQuadrato));
matDiagonale = diag(diag(A));
disp("Estraggo la matrice diagonale: " + num2str(matDiagonale));
matTriangolareSuperiore = triu(A);
disp("Estraggo la matrice triangolare superiore: " + num2str(matTriangolareSuperiore));
matTriangolareInferiore = tril(A);
disp("Estraggo la matrice triangolare inferiore: " + num2str(matTriangolareInferiore));