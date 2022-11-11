function [MatriceC, radiceProdotti] = Esercizio4(vettoreC) 
    %Creo la matrice circolante partendo da toeplitz
    MatriceC = toeplitz([vettoreC(1) fliplr(vettoreC(2:end))], vettoreC);
    %Calcolo il prodotto degli elementi diagonali
    prodottoDiagonalePrincipale = prod(diag(MatriceC));
    %Calcolo la il prodotto degli elementi della sopra diagonale
    prodottoSopraDiagonale = prod(diag(MatriceC,1));
    %Calcolo la il prodotto degli elementi della sotto diagonale
    prodottoSottoDiagonale = prod(diag(MatriceC,-1));
    %Calcolo la radice del prodotto
    radiceProdotti = sqrt(prodottoDiagonalePrincipale+prodottoSopraDiagonale+prodottoSottoDiagonale);
end

