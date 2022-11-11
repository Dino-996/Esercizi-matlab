% acquisisce dallo standard input i valori delle temperature medie mensili
% e calcola il valore massimo e minimo
function temperature
    temp = leggi;
    stampa(temp);
    stampaRisultato(temp);
end
      
function temp = leggi
	disp ('Immetti le temperature medie mensili');
	temp = zeros(12, 1);
    for n = 1 : length(temp)
        temp(n) = input('>');
    end
end

function stampa(temp)
    disp('');
    disp('Temperature medie mensili');
    disp('-------------------------');
    for n = 1 : length(temp)
        disp(['Mese ', num2str(n), ': ', num2str(temp(n))]);
    end
end

function p = posizioneMax(temp)
    p = 1;
    for n = 2 : length(temp)
        if temp(n) > temp(p) 
            p = n;
        end
    end
end
        
function p = posizioneMin(temp)
    p = 1;
    for n = 2 : length(temp)
        if temp(n) < temp(p) 
            p = n;
        end
    end
end

function stampaRisultato(temp)
    posMax = posizioneMax(temp);
    posMin = posizioneMin(temp);
    disp('')
    disp('------------------------------------------');
    disp('Temperatura massima: ');
    disp(temp(posMax));
    disp('Rilevata nel mese n. ');
    disp(posMax);
    disp('Temperatura minima : ');
    disp(temp(posMin));
    disp('Rilevata nel mese n. ');
    disp(posMin);
    disp('------------------------------------------');
end