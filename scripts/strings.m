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


s_Enter_Continue = "Pressione Enter para continuar";

s_Separator_100 = "----------------------------------------------------------------------------------------------------";

s_Calculating = "Calculando...";

##############################################################################
#
# Primeira Parte - Métodos Diretos
#
##############################################################################

# Questão 1

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

s_Lin_First_Mat_FName = "fs_183_3.mat";

s_Lin_Second_Mat_FName = "orsirr_1.mat";

s_Lin_Third_Mat_FName = "bcsstk01.mat";

# Primeira Matriz

s_LU_First_Mat_Display = strcat("Primeira matriz: ", s_Lin_First_Mat_FName);

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

# Segunda matriz

s_LU_Second_Mat_Display = strcat("Segunda matriz: ", s_Lin_Second_Mat_FName);

s_LU_Second_L = "A janela aberta é o gráfico de esparsidade da matriz L.\n\n\
Assim como na primeira matriz, é possível observar o comportamento \
característico da matriz L: elementos posicionados exclusivamente abaixo \
da diagonal principal.";

s_LU_Second_U = "A janela aberta é o gráfico de esparsidade da matriz U.\n\n\
Novamente podemos observar a organização da matriz U, com elementos presentes\
 acima da diagonal principal como esperado.";

s_LU_Second_A = "A janela aberta é o gráfico de esparsidade da matriz A.\n\n\
Novamente, é possível visualizar a distribuição dos elementos da matriz \
original A por meio desse gráfico.";

# Terceira matriz

s_LU_Third_Mat_Display = strcat("Terceira matriz: ", s_Lin_Third_Mat_FName);

s_LU_Third_L = "A janela aberta é o gráfico de esparsidade da matriz L.\n\n\
Como nas matrizes anteriores, o comportamento padrão da matriz L é \
perceptível na estrutura da matriz L.";

s_LU_Third_U = "A janela aberta é o gráfico de esparsidade da matriz U\n\n\
Assim como nas matrizes anteriores, o comportamento da matriz U segue a \
definição, com elementos posicionados exclusivamente acima da diagonal \
principal da matriz.";

s_LU_Third_A = "A janela aberta é o gráfico de esparsidade da matriz A\n\n\
A distribuição dos elementos de A segue a equação PA = LU.";

# Genéricos

s_LU_Solution_Found = "A solução encontrada para o sistema foi:";

s_LU_Max_Res_Norm_Found = "A norma relativa máxima do resíduo calculado foi:";

s_LU_Cond_Display = "O valor de condicionamento calculado foi:";

s_LU_High_Cond = "O valor de condicionamento encontrado para a matriz foi \
expressivamente elevado, o que indica que o sistema está mal condicionado.";

s_LU_Low_Cond = "O valor de condicionamento encontrado para a matriz foi \
relativamente baixo, o que indica que o sistema está bem condicionado."; 

s_LU_Calc_Cond = "Calculando condicionamento...";

# Questão 2

s_Sol_Introd = "Segunda questão - Objetivo: Observar o comportamento dos \
métodos iterativos estudados. Analisar as matrizes utilizando a função \
fatora, escolhendo o ω ideal. Calcular a solução pelos métodos de Jacobi, \
Gauss-Seidel e SOR com o valor de ω calculado. Desenhar o gráfico da norma \
do máximo do resíduo com relação às iterações. Comentar conclusões.";

s_Sol_Analysis_M = "Análise da matriz %d: %s\n\n";

s_Sol_Jacobi = "Solução da Matriz %s pelo método de Jacobi:";
s_Sol_GSeidel = "Solução da Matriz %s pelo método de Gauss-Seidel:";
s_Sol_SOR = "Solução da Matriz %s pelo método SOR:";

s_Sol_Analysis_W = "Maior lambda (SOR) para ω = %d: %f\n";

s_Sol_Lambda_Min_Exp = "Sabemos pelo teorema do raio espectral que quanto \
menor o maior autovalor da matriz for, mais rápido ela irá convergir. \
Portanto, temos que o valor ideal de ω é %d.\n";

s_Sol_Lambda_SOR_1 = "Como observamos que ω = 1 é o valor ideal para o \
método SOR, temos que a aplicação do método SOR nesse caso será idêntica \
à aplicação do método Gauss-Seidel.";

##############################################################################
#
# Segunda Parte - Ajustes de curvas
#
##############################################################################

s_Adjust_Freeze_FName = "ajuste_congelamento.txt";

s_Adjust_Bacteria_FName = "ajuste_bacteria.txt";
