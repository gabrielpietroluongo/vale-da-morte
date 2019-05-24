clc
clear -x bShouldUseCache
strings_all
strings_q4

load (strcat(data_path, s_Adjust_Bacteria_FName));
[l, c] = size(ajuste_bacteria);

# Linearizando como 1/v = Ks/Vm * 1/s + 1/Vm
# temos a = Ks/Vm, x = 1/s, b = 1/Vm
s = ajuste_bacteria(1:l, 1);
v = ajuste_bacteria(1:l, 2);

disp(s_Linearization_First_Exp);
disp("\n")

input(s_Enter_Continue);
clc;

# Linearizados
x = 1./s;
z = 1./v;

# Polinômio linearizado
lin = polyfit(x, z, 1);
disp(s_Linearization_Poly);
polLin = polyout(lin);
printf("P(s) = %s", polLin)
disp("\n");
input(s_Enter_Continue);
clc;

# Espaço amostral (linearizado): [0,1]
xi = linspace(0, 1);

# Espaço amostral (original)
xq = linspace(1.3, 9);

# 1/Vm = 0.19022 -> Vm = 1/0.19022 -> Vm = 5.2571
# Ks/Vm = 16.40224 -> Ks = 86.228
disp(s_Linearization_First_Res);
yq = ((5.2571 * xq)./(86.228 + xq));
disp("\n")
input(s_Enter_Continue);
clc;

# Caso 2: Linearizando como 1/v = Ks²/Vm * 1/s² + 1/Vm
# temos a = Ks²/Vm, x = 1/s², b = 1/Vm

disp(s_Linearization_Second_Exp);
disp("\n")
input(s_Enter_Continue);
clc;

# Linearizados
x2 = 1./(s.^2);

# Polinomio linearizado
disp(s_Linearization_Poly);
lin2 = polyfit(x2, z, 1);
polLin2 = polyout(lin2);
printf("P(s) = %s", polLin2);
disp("\n");
input(s_Enter_Continue);
clc;

# 1/Vm = 2.449 -> Vm = 1/2.449 -> Vm = 0.40833
# Ks²/Vm = 19.3760 -> Ks² = 7.9118
disp(s_Linearization_Second_Res);
yq2 = (0.40833*xq.^2) ./ (7.9118 + xq.^2);
disp("\n");
input(s_Enter_Continue);
clc;

# Plot

disp(s_Graph_Lin_Aprox_Exp);

linAprox = polyval(lin, xi);
plot(x, z, "*", xi, linAprox, ";Linearização;")

title("Visualização gráfica do ajuste (Função linearizada)");
xlabel("Concentração de O²");
ylabel("Crescimento da bactéria");


input (s_Enter_Continue);
clc;
close;
disp(s_Graph_MM_Aprox_Exp);
plot (xq, yq, ";Caso 1;", xq, yq2, ";Caso 2;", s, v, "*")

title("Visualização gráfica do ajuste");
xlabel("Concentração de O²");
ylabel("Crescimento da bactéria");

disp("\n");

printf(s_Est_Tax_7, 0.35156);
disp(' ')
input(s_Enter_Continue);
close;
