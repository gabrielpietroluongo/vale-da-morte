clc
clear -except strings

load "../dados/ajuste_bacteria.txt";
[l, c] = size(ajuste_bacteria);
# Linearizando como 1/v = Ks/Vm * 1/s + 1/Vm
# temos a = Ks/Vm, x = 1/s, b = 1/Vm
s = ajuste_bacteria(1:l, 1);
v = ajuste_bacteria(1:l, 2);

x = arrayfun(@(p) 1./p, s);
z = arrayfun(@(p) 1./p, v);

pol = polyfit(x, z, 1)

# 1/Vm = 0.19022 -> Vm = 1/0.19022 -> Vm = 5.2571
# Ks/Vm = 16.40224 -> Ks = 3.1200

# p(s) = (5.2571*3.1200)/(3.1200 + s)