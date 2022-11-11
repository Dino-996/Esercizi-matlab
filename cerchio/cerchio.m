% acquisisce dallo standard input il valore del raggio e calcola 
% la superficie del cerchio e la lunghezza della circonferenza 
function cerchio
    raggio = input('Immetti la lunghezza del raggio (deve essere un numero intero): ');
    supCerchio = raggio * raggio * pi;
    lunghCirconf = 2 * pi * raggio;
    disp('La circonferenza vale: ');
	disp(lunghCirconf);
    disp('Il cerchio ha superficie: ');
	disp(supCerchio);
end