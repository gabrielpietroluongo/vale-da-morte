clc
clear -except strings
disp (s_Separator_100);
disp (s_Intro_Direct);
disp (s_Separator_100);
disp (' ');
disp (s_LU_Exp)
disp (" ");
input (s_Enter_Continue);

# Primeira matriz
load ("../dados/fs_183_3.mat");
A = Problem.A;
[L, U, P] = lu (A);

# Análise da matriz L
clc
disp (s_LU_First_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_First_L);
spy (L);
input (s_Enter_Continue);
close;

# Análise da matriz U
clc
disp (s_LU_First_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_First_U);
spy (U);
input (s_Enter_Continue);
close;

# Análise da matriz A
clc
disp (s_LU_First_Mat_Display);
disp (s_LU_First_A);
spy (A);
input (s_Enter_Continue);
close;

# FIXME: Fazer isso aqui funcionar grr
# Matriz nx1 joga um erro de "nonconformant arguments" para o operador '/'!!
# Provavelmente isso deveria ser ones (n, 1) mesmo, mas conceitualmente
# tem algum erro aqui.
n = columns (A)
b = A * ones (n, n);
x = A/b;
disp (s_Solution_Found);
disp ("0");
disp(" ");
input (s_Enter_Continue);
