% versione interattiva; i coefficienti delle equazioni sono assegnati nella command window    

function [x1, y1, x2, y2]=equazioniInterattivo(a1, b1, c1, a2, b2, c2)
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
   