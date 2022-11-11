%Questo programma calcola l'eta' sia futura che passata
function calcolaEta
    annoCorrente = input("Inserisci l'anno corrente: ");
    eta = input("Inserisci la tua eta': ");
    etaNellAnno = input("In base a che anno vuoi calcolare l'età: ");
    etaFutura(annoCorrente, eta, etaNellAnno);
    etaPassata(annoCorrente, eta, etaNellAnno);
end
%Procedura
function etaFutura(annoCorrente, eta, etaNellAnno)
    if(annoCorrente < etaNellAnno)
        risultato = (etaNellAnno - annoCorrente) + eta;
        fprintf("\nNel %g", etaNellAnno);
        fprintf(" avrai %g", risultato);
        fprintf(" anni.\n");
    end
end
%Procedura
function etaPassata(annoCorrente, eta, etaNellAnno)
    risultato = eta - (annoCorrente - etaNellAnno);
    if(annoCorrente > etaNellAnno && risultato > 0)
        fprintf("\nNel %g", etaNellAnno);
        fprintf(" avevi %g", risultato);
        fprintf(" anni.\n");
    end
    if (risultato <= 0)
        fprintf("Nel %g", etaNellAnno);
        fprintf(" non eri ancora nato.\n");
    end
end