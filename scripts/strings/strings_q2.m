
s_First_Mat = "fs_183_3";

s_Second_Mat = "bcsstk01";

s_Third_Mat = "plat362";

s_Introd = "Segunda questão - Objetivo: Observar o comportamento dos \
métodos iterativos estudados. Analisar as matrizes utilizando a função \
fatora, escolhendo o ω ideal. Por conveniência, os ωs serão analisados \
apenas em intervalos inteiros (ω = 0, ω = 1 ou ω = 2). Calcular a solução \
pelos métodos de Jacobi, Gauss-Seidel e SOR com o valor de ω escolhido. \
Desenhar o gráfico da norma do máximo do resíduo com relação às iterações. \
Comentar conclusões.";

s_Analysis_M = "Análise da matriz %d: %s\n\n";

s_Max_Lambda_Jacobi = "Maior lambda para a matriz de Jacobi: %f\n\n";

s_Max_Lambda_Seidel = "Maior lambda para a matriz de Gauss-Seidel: %f\n\n";

s_Sol_Jacobi = "Solução da Matriz %s pelo método de Jacobi:";
s_Sol_GSeidel = "Solução da Matriz %s pelo método de Gauss-Seidel:";
s_Sol_SOR = "Solução da Matriz %s pelo método SOR:";

s_Sol_Analysis_W = "Maior lambda (SOR) para ω = %d: %f\n";

s_Sol_First_Mat_Analysis = "Analisando os resultados obtidos, temos que \
tanto o método de Jacobi quanto o método de Gauss-Seidel convergem para \
a matriz, já que pelo teorema do raio espectral, sabemos que uma matriz \
cujo maior autovalor em módulo é menor do que 1 necessariamente irá \
convergir utilizando esses métodos. Já no caso do método SOR, temos que o \
valor ideal seria o ω = 1, já que quanto menor o valor de lambda, mais \
rápida será a convergência.\n\nAlém disso, temos o método SOR ideal sendo \
igual ao método de Gauss-Seidel, dado que o ω ideal é 1.";

s_Sol_Second_Mat_Analysis = "Analisando os resultados obtidos, temos que \
o método de Gauss-Seidel converge enquanto o de Jacobi não o faz. Além \
disso, temos que o ω ideal nesse caso também será 1, então os métodos de \
Gauss-Seidel e SOR serão iguais.";

s_Sol_Third_Mat_Analysis = "Analisando os resultados obtidos, podemos \
perceber que a terceira matriz, plat362, não converge para nenhum dos \
métodos iterativos testados, já que todos os maiores autovalores são maiores \
ou iguais a 1. Portanto, não é possível de se obter uma solução utilizando \
os métodos de Jacobi, Gauss-Seidel ou o método SOR.";

s_Res_Graph_Leg = "Gráfico dos resíduos em função das iterações";