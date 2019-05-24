clc
clear

# Carrega as strings do arquivo de strings
addpath strings

# Mostra a descrição do trabalho
introd

# Carrega os scripts utilitários
addpath ./utils

# Confirmação do uso de dados em cache
input_ShouldCache = input("Deseja usar os dados em cache? (S/N)", "s");
bShouldUseCache = (input_ShouldCache == "S" || input_ShouldCache == "s");

# -----------------------------------------------------------
# Parte I - Sistemas Lineares
# -----------------------------------------------------------

questao1
clc;
disp('Fim da questão 1');
disp(' ');
input('Tecle alguma coisa para continuar...');

questao2
clc;
disp('Fim da questão 2');
disp(' ');
input('Tecle alguma coisa para continuar...');

# -----------------------------------------------------------
# Parte II - Ajuste
# -----------------------------------------------------------

questao3
clc;
disp('Fim da questão 3');
disp(' ');
input('Tecle alguma coisa para continuar...');

questao4
clc;
disp('Fim da questão 4');
disp(' ');
input('Tecle alguma coisa para continuar...');
