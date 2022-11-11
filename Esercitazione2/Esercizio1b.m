%Dato il vettore di elementi -5, -4, ..., 8, 9 detrminare l'elemento
%massimo, minimo, di modulo massimo, di modulo minimo, la somma degli
%elementi la somma dei valori assoluti degli elementi.

disp("Notazione scientifica - format long e");
format long e

disp("Creo il vettore di elementi da -5 a 9");
vector = (-5:1:9);

disp("Calcolo il massimo");
massimo = max(vector);

disp("Calcolo l'elemento di modulo massimo");
elementoDiModuloMassimo = abs(massimo);

disp("Calcolo il minimo");
minimo = min(vector);

disp("Calcolo l'elemento di modulo minimo");
elementoDiModuloMinimo = abs(minimo);

disp("Somma degli elementi");
sommaElementiDelVettore = sum(vector);

disp("Somma dei moduli dei due elementi");
sommaValoriAssoluti = elementoDiModuloMinimo+elementoDiModuloMassimo;