% acquisisce dallo standard input i voti degli esami
% di uno studente universitario e ne calcola la media
function mediaFor
    numeroEsami = input('Quanti esami hai sostenuto ? ');
    sommaVoti = 0;
    for n = 1:numeroEsami
        voto = input('Immetti il voto: ');
        while voto < 18 || voto > 30
            voto = input('ERRORE. Immetti un valore corretto: ');
        end
        sommaVoti = sommaVoti + voto;    
    end
    if numeroEsami > 0
        media = sommaVoti / numeroEsami;
        disp('Media degli esami: ');
		disp(media);
    else
        disp('Nessun voto fornito');
    end
end