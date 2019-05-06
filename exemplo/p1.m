clc
clear
% disp ("Primeira parte: Sistemas Lineares\n\n");
printf ("Primeira parte do trabalho - Análise de métodos diretos.\n\n");
input ("Pressione Enter para continuar");
clc

%
% TODO: Game of Thrones tá começando e tem que reescrever isso aqui >:( 
% Boa sorte Gabriel do Futuro :D
%
disp("A primeira parte do trabalho consiste na análise de métodos diretos. Inicialmente, será realizada a análise da fatoração LU, focando nas esparsidades das matrizes L e U.");
disp(" ");
disp("A fatoração LU consiste no cálculo de fatores L e U de dada matriz A tal que as matrizes L e U satisfaçam as seguintes equações:");
disp(" ");
disp("Ly = b");
disp("Ux = y");
disp(" ");
disp("Por conseguinte, temos que a matriz A pode ser escrita na forma A=LU. A vantagem do método é que resolvemos dois sistemas diagonais ao invés de um único sistema cujo condicionamento não é necessariamente o ideal.");

input("Pressione Enter para continuar");

% Primeira matriz
load("../dados/fs_183_3.mat");
A = Problem.A;
[L, U, P] = lu(A);
% Análise da matriz L
clc
printf ("Primeira matriz: fs_183_3.mat\n");
spy(L)
printf("A janela aberta é o gráfico de esparsidade da matriz L.\n");
printf("Analisando o gráfico, é possível visualizar que a distribuição de ");
printf("elementos na matriz L é feita exclusivamente abaixo da diagonal ");
printf("principal, conforme o esperado.\n\n");
input ("Pressione Enter para continuar");
close;
% Análise da matriz U
clc
printf ("Primeira matriz: fs_183_3.mat\n");
spy(U);
printf("A janela aberta é o gráfico de esparsidade da matriz U.\n");
printf("De forma análoga, é possível constatar a característica que define");
printf(" a matriz U: distribuição de elementos exclusivamente acima da ");
printf("diagonal principal.\n\n");
input ("Pressione Enter para continuar");
close;
% Análise da matriz A
clc
printf ("Primeira matriz: fs_183_3.mat\n");
spy(A);
printf("A janela aberta é o gráfico de esparsidade da matriz A.\n");
printf("Por fim, é possível observar que o gráfico de esparsidade da ");
printf("matriz A pode ser representada basicamente por uma composição ");
printf("de seus fatores L e U, conforme é esperado do comportamento de uma ");
printf("decomposição de matrizes.\n\n");
input ("Pressione Enter para continuar");
close;
% TODO - Fazer isso aqui funcionar grr
b = A * ones(cols(A), 1);
x = A/b;
disp("A solução calculada do sistema foi x = " + x);

%% TODO: repetir o processo para as outras duas matrizes!!!