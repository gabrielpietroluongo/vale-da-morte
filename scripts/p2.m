clc
clear -except strings
addpath ./utils

disp (s_Sol_Introd);
disp (" ");
input (s_Enter_Continue);
clc

##############################################################################
# Primeira matriz
##############################################################################
tol = 0.00001;
maxIter = 10000;

printf(s_Sol_Analysis_M, 1, s_Lin_First_Mat_FName);

load (strcat("../dados/", s_Lin_First_Mat_FName));
A = Problem.A;

# Análise do Fatora
[MJ, MS, SOR] = fatora(A, 2);
[V lambda] = eig(SOR);
printf(s_Sol_Analysis_W, 2, max(abs(diag(lambda))))
disp(" ");

[MJ, MS, SOR] = fatora(A, 1);
[V lambda] = eig(SOR);
printf(s_Sol_Analysis_W, 1, max(abs(diag(lambda))))
disp(" ");

[MJ, MS, SOR] = fatora(A, 0);
[V lambda] = eig(SOR);
printf(s_Sol_Analysis_W, 0, max(abs(diag(lambda))))
disp(" ");

printf (s_Sol_Lambda_Min_Exp, 1)
disp(" ");

input (s_Enter_Continue);

# Soluções

#n = rows(A);
#b = A * ones (n, 1);
#printf(s_Sol_Jacobi, s_Lin_First_Mat_FName);
#jacobi(A, b, tol, maxIter)