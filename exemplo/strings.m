%{
    Arquivo com as string utilizadas no trabalho. As strings a serem mostradas 
    na tela para o usuário ficam aqui. Todas elas possuem um alias 
    (como s_Enter_Continue) que remete à sua utilização dentro do relatório. 
    As explicações não devem ser lidas daqui, mas sim de dentro do terminal
    ao longo da execução do programa. A exceção é a string de introdução, que 
    está no arquivo introd.m.
%}

s_Enter_Continue = "Pressione Enter para continuar";

s_Intro_Direct = "Primeira parte do trabalho - Análise de métodos diretos.";

s_LU_Exp = "A primeira parte do trabalho consiste na análise de métodos \
diretos. Inicialmente, será realizada a análise da fatoração LU, focando nas \
esparsidades das matrizes L e U. \nA fatoração LU consiste no cálculo de \
fatores L e U de dada matriz A tal que as matrizes L e U satisfaçam as \
seguintes equações: \n\nLy = b\nUx = y\n\n\
Por conseguinte, temos que a matriz A pode ser escrita na forma A=LU. A \
vantagem do método é que resolvemos dois sistemas diagonais ao invés de um \
único sistema cujo condicionamento não é necessariamente o ideal.";

s_Separator_100 = "----------------------------------------------------------------------------------------------------";