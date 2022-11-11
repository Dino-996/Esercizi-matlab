% acquisisce dallo standard input i voti degli esami
% di uno studente universitario e ne calcola la media
function mediaWhile
    numeroEsami = 0;
    sommaVoti = 0;
    continua = true;
    while continua
        voto = input('Immetti il voto: ');
        while voto ~= 0 && (voto < 18 || voto > 30)
            voto = input('ERRORE. Immetti un valore corretto: ');
        end
        if voto == 0
            continua = false;
        else
            numeroEsami = numeroEsami + 1;
            sommaVoti = sommaVoti + voto;    
        end
    end
    if numeroEsami > 0
        media = sommaVoti / numeroEsami;
        disp('Media degli esami: ');
		disp(media);
    else
        disp('Nessun voto fornito');
    end
end