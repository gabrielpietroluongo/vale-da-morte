clc
clear -except strings

load (strcat(data_path, s_Adjust_Bacteria_FName));
[l, c] = size(ajuste_bacteria);
# Linearizando como 1/v = Ks/Vm * 1/s + 1/Vm
# temos a = Ks/Vm, x = 1/s, b = 1/Vm
s = ajuste_bacteria(1:l, 1);
v = ajuste_bacteria(1:l, 2);

# Linearizados
x = 1./s;
z = 1./v

# Polinômio linearizado
lin = polyfit(x, z, 1);
polyout(lin)

# Espaço amostral (linearizado): [0,1]
xi = linspace(0, 1);

# Espaço amostral (original)
xq = linspace(1.3, 9);

# 1/Vm = 0.19022 -> Vm = 1/0.19022 -> Vm = 5.2571
# Ks/Vm = 16.40224 -> Ks = 86.228
yq = ((5.2571 * xq)./(86.228 + xq));

# Caso 2: Linearizando como 1/v = Ks²/Vm * 1/s² + 1/Vm
# temos a = Ks²/Vm, x = 1/s², b = 1/Vm

# Linearizados
x2 = 1./(s.^2);

# Polinomio linearizado
lin2 = polyfit(x2, z, 1);

# 1/Vm = 2.449 -> Vm = 1/2.449 -> Vm = 0.40833
# Ks²/Vm = 19.3760 -> Ks² = 7.9118
yq2 = (0.40833*xq.^2) ./ (7.9118 + xq.^2);

# Plot

linAprox = polyval(lin, xi);
plot(x, z, "*", xi, linAprox, ";Aproximação Linear;")

input ("aperta ai");

title("Aproximação por Michaelis Menten");
plot (xq, yq, ";Caso 1;", xq, yq2, ";Caso 2;", s, v, "*")

# p(s) = (5.2571*S)/(3.1200 + s)

