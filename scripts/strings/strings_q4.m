s_Adjust_Bacteria_FName = "ajuste_bacteria.txt";

s_Lin_First_Case_Exp = "Para o primeiro caso do modelo de Michaelis-Menten, \
temos a função \n\n        Vm * [S]\n v = ------------\n     Ks + [S]²\n\n Podemos \
linearizar essa função fazendo \n\n1/v = K";

s_Linearization_First_Exp = "Para o primeiro caso do modelo de Michaelis-\
Menten, temos a função \n\nv = (Vm * S) / (Ks + S²)\n\nPodemos linearizar \
esse modelo fazendo:\n\n1/v = (Ks + S²) / (Vm * S) -> 1/v = (Ks / Vm) * (1 \
/ S) + (1 / Vm)\n\nPodemos linearizar usando a = (Vm * S), x = (1 / S) e b = \
(1 / Vm), sendo essa linearização um sistema do tipo Ax = b.";

s_Linearization_Poly = "Realizando o procedimento descrito \
anteriormente e aplicando os valores dados, temos como resultado a seguinte \
aproximação linear para o polinômio: ";

s_Linearization_First_Res = "Analizando os resultados do polinômio  \
linearizado, temos as seguintes equações: \n\n1 / Vm = 0.19022 -> Vm = \
5.2571\n\nKs / Vm = 16.40224 -> Ks = 86.228\n\nTendo isso em mente, chegamos \
à seguinte expressão para o primeiro caso: \n\nY(s) = ((5.2571 * s) / \
(86.228 + s))";

s_Linearization_Second_Res = "Analisando os resultados do polinômio \
linearizado, temos as seguintes equações: \n\n1 / Vm  = 2.449 -> Vm = \
0.40833\n\nKs² / Vm = 19.3760 -> Ks² = 7.9118\n\nConsiderando essas \
equações, chegamos à seguinte expressão: \n\nY(s) = (0.40833 * s²) / \
(7.9118 + s²)";

s_Linearization_Second_Exp = "Para o segundo caso do modelo de Michaelis-\
Menten, temos a função \n\nv = (Vm * S²) / (Ks² + S²)\n\nPodemos linearizar \
esse modelo fazendo:\n\n1/v = (Ks² / Vm) / (Vm * S²) -> 1/v = (Ks² / Vm) * \
(1 / S²) + (1 / Vm)\n\nPodemos linearizar usando a = (Ks² / Vm), x = \
(1 / s²) e b = (1 / Vm)";

s_Graph_Lin_Aprox_Exp = "O gráfico apresenta a linearização realizada para \
possibilitar uma resposta pelo método dos quadrados mínimos.";

s_Graph_MM_Aprox_Exp = "O gráfico apresenta a aproximação realizada pelas \
equações propostas por Michaelis-Menten para o ajuste à população de \
bactérias. Apenas analisando visualmente o gráfico já é possível perceber \
que o segundo caso de Michaelis-Menten se adequa melhor ao crescimento \
populacional dessa bactéria.";