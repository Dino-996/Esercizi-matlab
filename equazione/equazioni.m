% acquisisce dallo standard input i coefficienti di due equazioni di II grado
% e verifica se hanno radici reali comuni
function equazioni
    [a1, b1, c1] = leggiEquazione();
    [a2, b2, c2] = leggiEquazione();
    d1 = discriminante(a1, b1, c1);
    d2 = discriminante(a2, b2, c2);
    if d1 >= 0 && d2 >= 0
        [x1, y1] = radici(a1, b1, c1);
        [x2, y2] = radici(a2, b2, c2);
        disp ('Radici della prima equazione: ');
		stampaRadici(x1, y1);
        disp ('Radici della seconda equazione: ');
		stampaRadici(x2, y2);
        if (x1 == x2 || x1 == y2 || y1 == y2 || y1 == x2)   
            disp('Le equazioni hanno radici reali comuni'); 
        else
            disp('Le equazioni non hanno radici reali comuni');
        end
    else
        disp ('Non tutte le radici sono reali');
    end
end

function [a, b, c] = leggiEquazione()
    a = input ('Immetti il coefficiente a: ');
    b = input ('Immetti il coefficiente b: ');
    c = input ('Immetti il coefficiente c: ');
end

function d = discriminante(a, b, c)
    d = b * b - 4 * a * c;
end

function [x1, x2] = radici(a, b, c)
    x1 = (-b + sqrt(discriminante(a, b, c)))/(2 * a);
    x2 = (-b - sqrt(discriminante(a, b, c)))/(2 * a);
end 

function stampaRadici(x, y)
   disp('x = ');
   disp(x);
   disp('y = ');
   disp(y);
end
   