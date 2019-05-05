clc
clear
disp ("Primeira parte: Sistemas Lineares\n\n");
%printf ("Primeira parte do trabalho: selecionar três matrizes e analisar as suas esparsidades.\n\n");
input ("Pressione Enter para continuar");

clc
clear

% Primeira matriz
printf ("Primeira matriz: fs_183_3.mat\n");
load("../dados/fs_183_3.mat");
A = Problem.A;
[L, U, P, Q] = lu(A);
spy(A)
printf("A janela aberta é o gráfico de esparsidade da matriz.\n");
disp("Analisando o gráfico de esparsidade, é possível perceber que [...]");
input ("Pressione Enter para continuar");
close;

clc
clear
% Segunda matriz
load("../dados/fs_183_3.mat");
A = Problem.A;
[L, U, P, Q] = lu(A);
spy(A)
input ("Pressione Enter para continuar");
close;

clc
clear
% Terceira matriz
load("../dados/fs_183_3.mat");
A = Problem.A;
[L, U, P, Q] = lu(A);
spy(A)
input ("Pressione Enter para continuar");
close;