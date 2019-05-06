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

# TODO - Fazer isso aqui funcionar grr
b = A * ones(cols(A), 1);
x = A/b;
disp("A solução calculada do sistema foi x = " + x);