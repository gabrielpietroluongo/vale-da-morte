#{
    Arquivo com as string utilizadas no trabalho. As strings a serem mostradas 
    na tela para o usuário ficam aqui. Todas elas possuem um alias 
    (como s_Enter_Continue) que remete à sua utilização dentro do relatório. 
    As explicações não devem ser lidas daqui, mas sim de dentro do terminal
    ao longo da execução do programa. A exceção é a string de introdução, que 
    está no arquivo introd.m.
#}

s_Enter_Continue = "Pressione Enter para continuar";

s_Intro_Direct = "Primeira parte do trabalho - Análise de métodos diretos.";

s_LU_Exp = "A primeira parte do trabalho consiste na análise de métodos \
diretos. Inicialmente, será realizada a análise da fatoração LU, focando nas \
esparsidades das matrizes L e U. \nA fatoração LU consiste no cálculo de \
fatores L e U de dada matriz A tal que A = PLU, sendo P a matriz de \
permutação,  e que as matrizes L e U satisfaçam as seguintes equações:\
\n\nLy = b\nUx = y\n\n\A maior vantagem desse método é a alta eficiência \
computacional, dado que é possível resolver o sistema novamente para \
qualquer vetor b escolhido sem a necessidade de realizar a eliminação \
Gaussiana novamente, dado que L e U são matrizes diagonais e, portanto, \
já estão escalonadas. Adicionalmente, é possível calcular o determinante da \
matriz original A por meio do produto dos determinantes das matrizes L e U, \
o que é computacionalmente trivial dado que os determinantes de L e U são os \
produtos de suas respectivas diagonais principais.";

s_LU_First_Mat_Display = "Primeira matriz: fs_183_3.mat";

s_LU_First_L = "A janela aberta é o gráfico de esparsidade da matriz L.\n\n\
Analisando o gráfico, é possível constatar a principal característica da \
matriz L: todos os elementos abaixo da diagonal principal (elementos acima \
da diagonal principal são definidos como zeros. Essa distribuição é o que \
caracteriza a matriz L.";

s_LU_First_U = "A janela aberta é o gráfico de esparsidade da matriz U.\n\n\
De forma análoga ao gráfico da matriz L, o gráfico da matriz U é \
caracterizado pela presença exclusiva de elementos acima da diagonal principal\
, sendo os definidos como zeros.";

s_LU_First_A = "A janela aberta é o gráfico de esparsidade da matriz A.\n\n\
Por fim, analisando o gráfico de A é possível visualizar a matriz original. \
Como esperado, a matriz original é composta por fatores tanto acima quanto \
abaixo da diagonal principal.";

s_Solution_Found = "A solução encontrada para o sistema foi:";

s_Separator_100 = "----------------------------------------------------------------------------------------------------";