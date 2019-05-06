clc
clear -except strings
disp (s_Separator_100);
disp (s_Intro_Direct);
disp (s_Separator_100);
disp (' ');
disp (s_LU_Exp)
disp (" ");
input (s_Enter_Continue);

# Primeira matriz
load ("../dados/fs_183_3.mat");
A = Problem.A;
[L, U, P] = lu (A);

# Análise da matriz L
clc
printf ("Primeira matriz: fs_183_3.mat\n");
spy(L)
printf ("A janela aberta é o gráfico de esparsidade da matriz L.\n");
printf ("Analisando o gráfico, é possível visualizar que a distribuição de ");
printf ("elementos na matriz L é feita exclusivamente abaixo da diagonal ");
printf ("principal, conforme o esperado.\n\n");
input (s_Enter_Continue);
close;

# Análise da matriz U
clc
printf ("Primeira matriz: fs_183_3.mat\n");
spy (U);
printf ("A janela aberta é o gráfico de esparsidade da matriz U.\n");
printf ("De forma análoga, é possível constatar a característica que define");
printf (" a matriz U: distribuição de elementos exclusivamente acima da ");
printf ("diagonal principal.\n\n");
input (s_Enter_Continue);
close;

# Análise da matriz A
clc
printf ("Primeira matriz: fs_183_3.mat\n");
spy(A);
printf ("A janela aberta é o gráfico de esparsidade da matriz A.\n");
printf ("Por fim, é possível observar que o gráfico de esparsidade da ");
printf ("matriz A pode ser representada basicamente por uma composição ");
printf ("de seus fatores L e U, conforme é esperado do comportamento de uma ");
printf ("decomposição de matrizes.\n\n");
input (s_Enter_Continue);
close;
# TODO - Fazer isso aqui funcionar grr
b = A * ones(cols(A), 1);
x = A/b;
disp("A solução calculada do sistema foi x = " + x);