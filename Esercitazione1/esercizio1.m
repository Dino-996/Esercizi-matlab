%Scrivere una function in linguaggio Matlab che preveda in input un vettore
%v di lunghezza N e un intero K < N ed effettui le seguenti operazioni:
%Costruisca la matrice quadrata che ha la diagonale principale coincidente
%con v.
%La K-sima diagonale superiore coincidente con i primi N-K elementi
%di v.
%La K-sima diagonale inferiore coincidente con i primi N-K elementi
%di v. Calcoli il massimo degli elementi sulle righe pari e restituisca il 
% massimo e la matrice
function [A, massimo] = esercizio1(v, K)

N = numel(v);
if K >= N
    disp("Inserire un vettore di lunghezza maggiore dell'intero " + N);
    return;
end

w = v(1:N-K);

z = -v(K+1:N);

A = ones(N);

A(sub2ind(size(A), 1:N, 1:N)) = v;

A(sub2ind(size(A), 1:N-K, K+1:N)) = w;

A(sub2ind(size(A),K+1:N, 1:N-K)) = z;

massimo = max(max(A(2:2:N, :)));
end