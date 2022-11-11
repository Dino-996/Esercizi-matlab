function [matriceA, matriceH, mediaElemDiagonali, verifica] = esercizio3(realeA, interoN)
    ultimaPosizione = numel(interoN);
    matriceH = zeros(ultimaPosizione);
    for i = 1 : ultimaPosizione
        for j = 1 : ultimaPosizione
            matriceH(i,j) = realeA^(i-j+1);
        end
    end
    matriceA = matriceH + eye(interoN);
    mediaElemDiagonali = mean(diag(matriceA));
    id_matriceA = eye(size(matriceA));
    verifica = all(matriceA(~id_matriceA)>mediaElemDiagonali);
end