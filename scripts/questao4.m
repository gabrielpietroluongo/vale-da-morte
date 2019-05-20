clc
clear -except strings

load "../dados/ajuste_bacteria.txt";
[l, c] = size(ajuste_bacteria);
# Linearizando como 1/v = Ks/Vm * 1/s + 1/Vm
# temos a = Ks/Vm, x = 1/s, b = 1/Vm
s = ajuste_bacteria(1:l, 1);
v = ajuste_bacteria(1:l, 2);


# Linearizados
x = arrayfun(@(p) 1./p, s);
z = arrayfun(@(p) 1./p, v);

# Polinômio linearizado
lin = polyfit(x, z, 1);
polyout(lin)

# Espaço amostral: [0,1]
xi = linspace(0, 1);

# Plot
linAprox = polyval(lin, xi);
plot (x, z, "*", xi, linAprox, ";Aproximação Linear;")

# 1/Vm = 0.19022 -> Vm = 1/0.19022 -> Vm = 5.2571
# Ks/Vm = 16.40224 -> Ks = 3.1200

# p(s) = (5.2571*S)/(3.1200 + s)

