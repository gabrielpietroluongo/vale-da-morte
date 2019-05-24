# Main Menu Loop
while(1)
    clc;
    disp(s_Header);
    if(conf_ShouldUseCache)
        disp("Usando cache em disco");
    else
        disp("Não usando cache em disco")
    endif;
    disp("\n");
    if(!conf_UseGraphicMenu)
        q = input(s_MainMenu_Text);
    else
        q = menu("Menu Principal do Trabalho",
                 "Apresentação Completa", 
                 "Primeira Questão (Métodos Diretos)",
                 "Segunda Questão (Métodos Iterativos)",
                 "Terceira Questão (Ajuste Volume em função do tempo)", 
                 "Quarta Questão (Ajuste Michaelis-Menten)",
                 "Alternar uso do cache em disco",
                 "Alternar uso de menu gráfico",
                 "Sair");
    endif;
    switch(q)
        case 1
            complete_pres;
        case 2
            questao1; 
        case 3
            questao2;
        case 4
            questao3;
        case 5
            questao4;
        case 6
            conf_ShouldUseCache = !conf_ShouldUseCache;
        case 7
            conf_UseGraphicMenu = !conf_UseGraphicMenu;
        case 8
            break;
        otherwise
            disp("Opção inválida");
    endswitch
    q = -1;
endwhile;
