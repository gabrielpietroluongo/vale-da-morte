clc
clear

# Carrega as strings do arquivo de strings
addpath strings
strings_all

# Mostra a descrição do trabalho
# introd

# Carrega os scripts utilitários
addpath ./utils

# Confirmação do uso de dados em cache
disp(s_Disk_Cache_Desc);
disp("\n");
input_ShouldCache = input(s_Disk_Cache_Ask, "s");
bShouldUseCache = (input_ShouldCache == "S" || input_ShouldCache == "s");

disp("\n");

if(bShouldUseCache)
    disp(s_Disk_Cache_Yes);
else
    disp(s_Disk_Cache_No);
endif

disp("\n");

input(s_Enter_Continue);

# Desativa o menu gráfico por padrão
bUseGraphicMenu = false;

# Chama o menu principal
select_menu;