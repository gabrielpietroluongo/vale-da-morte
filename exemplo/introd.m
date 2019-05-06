% Introdução do trabalho
clc
disp('--------------------------------------------------');
disp('Primeiro trabalho de Algoritmos Numéricos'); 
disp('Profª Andrea Valli');
disp('Desenvolvido por Gabriel Pietroluongo');
disp('--------------------------------------------------');
disp(' ');
disp('Objetivos:');
disp(' ');
disp('PARTE I - SISTEMAS LINEARES');
disp(' ');
disp('1. Observar o comportamento dos métodos diretos em três casos diferentes.');
disp('  a. Obter os fatores L, U e P de uma matriz A e observar a configuração de esparsidade.');
disp('  b. Calcular a solução do sistema linear b = A*ones(n, 1).');
disp('  c. Calcular o número de condicionamento da matriz. Analisar a solução.');
disp('2. Observar o comportamento dos métodos iterativos em três casos diferentes.');
disp('  a. Avaliar o comportamento dos processos iterativos de Jacobi, Seidel e SOR');
disp('  b. Calcular a solução de cada sistema por Jacobi, Seidel e SOR.');
disp('  c. Fazer o gráfico da norma do máximo relativo do resíduo em relação às iterações.');
disp('  d. Comentar as conclusões sobre o comportamento das matrizes para métodos diretos e iterativos.');
disp(' ');
disp('PARTE II - AJUSTE DE CURVAS');
disp(' ');
disp('1. Utilizar regressão linear para modelar adequadamente uma função seguindo os dados apresentados.');
disp('2. Analisar o crescimento de uma bactéria seguindo dois modelos de Michaelis-Menten.');

disp(' ');
input(s_Enter_Continue);