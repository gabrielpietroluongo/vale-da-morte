clc;
disp ('--------------------------------------------------');
disp ('Primeiro trabalho de Algoritmos Numéricos'); 
disp ('Profª Andrea Valli');
disp ('Desenvolvido por Gabriel Pietroluongo');
disp ('--------------------------------------------------');
disp(' ');
q = -1;
while(1)
    q = menu("Menu Principal do Trabalho", "Apresentação Completa", 
    "Primeira Questão (Métodos Diretos)", "Segunda Questão (Métodos Iterativos)",
     "Terceira Questão (Ajuste Volume em função do tempo)", 
    "Quarta Questão (Ajuste Michaelis-Menten)", "Sair");
    switch(q)
        case 1
            complete_pres;
            clc;
            disp ('--------------------------------------------------');
            disp ('Primeiro trabalho de Algoritmos Numéricos'); 
            disp ('Profª Andrea Valli');
            disp ('Desenvolvido por Gabriel Pietroluongo');
            disp ('--------------------------------------------------');
            disp(' ');
        case 2
            questao1;
            clc;
            disp ('--------------------------------------------------');
            disp ('Primeiro trabalho de Algoritmos Numéricos'); 
            disp ('Profª Andrea Valli');
            disp ('Desenvolvido por Gabriel Pietroluongo');
            disp ('--------------------------------------------------');
            disp(' ');  
        case 3
            questao2;
            clc;
        case 4
            questao3;
            clc;
        case 5
            questao4;
            clc;
        case 6
            break;
    endswitch
    q = -1;
endwhile;