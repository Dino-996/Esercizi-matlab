%Genera il vettore riga x e il vettore colonna y di componenti 1,2,...,10 e
%10,9,...,1 rispettivamente. Genera inoltre il vettore colonna z contenente
%11 nodi equispaziati nell'intervallo[0 1]

disp("Notazione scientifica - format long e");
format long e
disp("Genero il vettore riga x - 1:10");
x = (1:10);
disp("Genero il vettore colonna y - 10:-1:1");
y = (10:-1:1)';
disp("Genero il vettore colonna z - 0,1,11");
z = linspace(0,1,11);