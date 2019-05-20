clc
disp(' ')
clear -except strings

addpath ./utils

load "../dados/ajuste_congelamento.txt";
[l,c] = size(ajuste_congelamento);
x = ajuste_congelamento(1:l,1);
y = ajuste_congelamento(1:l,2);

p1 = polyfit(x,y,1);
p2 = polyfit(x,y,2);
p3 = polyfit(x,y,3);
p4 = polyfit(x,y,4);
p5 = polyfit(x,y,5);

[rsq1, vari1] = qualidade_ajuste(x, y, 1, p1);
[rsq2, vari2] = qualidade_ajuste(x, y, 2, p2);
[rsq3, vari3] = qualidade_ajuste(x, y, 3, p3);
[rsq4, vari4] = qualidade_ajuste(x, y, 4, p4);
[rsq5, vari5] = qualidade_ajuste(x, y, 5, p5);

printf("pol|    1     |    2     |    3     |    4     |    5     |\n")
printf("r² | %f | %f | %f | %f | %f |\n", rsq1, rsq2, rsq3, rsq4, rsq5);
printf("var| %f | %f | %f | %f | %f |\n", vari1, vari2, vari3, vari4, vari5);
disp ("\n\nAnalisando a tabela, vemos que a menor variância ocorre quando o grau do polinômio é 3. Assim, usaremos esse polinômio para aproximar a função.");