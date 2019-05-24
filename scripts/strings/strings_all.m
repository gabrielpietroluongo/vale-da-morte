#{
    Arquivo com as string utilizadas no trabalho. As strings a serem mostradas 
    na tela para o usuário ficam aqui. Todas elas possuem um alias 
    (como s_Enter_Continue) que remete à sua utilização dentro do relatório. 
    As explicações não devem ser lidas daqui, mas sim de dentro do terminal
    ao longo da execução do programa. A exceção é a string de introdução, que 
    está no arquivo introd.m.
#}

cache_path = "../cache/";
data_path = "../dados/";

s_Disk_Cache_Desc = "Para acelerar o processo de testes e avaliação, um \
cache em disco foi criado anteriormente com soluções de problemas que \
levariam mais tempo para serem resolvidos (como a aplicação do método \
de Jacobi em matrizes grandes). Ao utilizar o cache em disco, alguns dos \
cálculos não serão feitos localmente, mas sim utilizarão esses dados já \
armazenados no disco rígido.";

s_Disk_Cache_Ask = "Deseja usar o cache em disco? (S/N)\n";

s_Disk_Cache_Yes = "O cache em disco será utilizado.";

s_Disk_Cache_No = "O cache em disco não será utilizado.";

s_Enter_Continue = "Pressione Enter para continuar";

s_Separator_100 = "----------------------------------------------------------------------------------------------------";

s_Calculating = "Calculando...";

s_Header = "--------------------------------------------------\nPrimeiro \
trabalho de Algoritmos Numéricos\nProfª Andrea Valli\nDesenvolvido por \
Gabriel Pietroluongo\n--------------------------------------------------\n";  