clc
clear -x conf_*
strings_all
strings_q3

clc
disp (s_Separator_100);
disp (s_Intro_Adj);
disp (s_Separator_100);
disp ("\n");
disp (s_Adjust_Exp)
disp ("\n");
input (s_Enter_Continue);
clc;

# Carregamento de arquivos
load (strcat(data_path, s_Adjust_Freeze_FName));
[l,c] = size(ajuste_congelamento);
x = ajuste_congelamento(1:l,1);
y = ajuste_congelamento(1:l,2);

# Construção dos polinômios de graus 1-5
p1 = polyfit(x,y,1);
p2 = polyfit(x,y,2);
p3 = polyfit(x,y,3);
p4 = polyfit(x,y,4);
p5 = polyfit(x,y,5);

# Cálculo da qualidade do ajuste de cada grau de polinômios
[rsq1, vari1] = qualidade_ajuste(x, y, 1, p1);
[rsq2, vari2] = qualidade_ajuste(x, y, 2, p2);
[rsq3, vari3] = qualidade_ajuste(x, y, 3, p3);
[rsq4, vari4] = qualidade_ajuste(x, y, 4, p4);
[rsq5, vari5] = qualidade_ajuste(x, y, 5, p5);

disp(s_Table_Exp);
disp("\n");

# Strings diretamente no código apenas por questão de formatação
printf("pol|    1     |    2     |    3     |    4     |    5     |\n")
printf("r² | %f | %f | %f | %f | %f |\n", rsq1, rsq2, rsq3, rsq4, rsq5);
printf("var| %f | %f | %f | %f | %f |\n", vari1, vari2, vari3, vari4, vari5);
disp("\n");
disp (s_Min_Var_Deg);

disp(' ')

input (s_Enter_Continue);

clc;
disp(s_Poly_Disp);
disp("\n");
polyout(p3);

# Construção do espaço vetorial para o gráfico
xi = linspace(2.6,3.1);
z3 = polyval(p3, xi);

plot(x, y, "*", xi, z3, "; Polinômio aproximante de Grau 3;")

title("Visualização gráfica do ajuste");
xlabel("Volume");
ylabel("Tempo de congelamento");

fprintf("\n\nSeguindo p3(x), temos p(2.8) = %f\n\n",  polyval(p3, 2.8));

input(s_Enter_Continue);
