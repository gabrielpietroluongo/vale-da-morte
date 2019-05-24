clear -x conf_*
strings_all
strings_q1
clc
disp (s_Separator_100);
disp (s_Intro_Direct);
disp (s_Separator_100);
disp (' ');
disp (s_LU_Exp)
disp (" ");
input (s_Enter_Continue);


##############################################################################
# Primeira matriz
##############################################################################
load (strcat(data_path, s_First_Mat, ".mat"));
A = Problem.A;
[L, U, P] = lu (A);

# Análise da matriz L
clc;
disp (s_LU_First_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_First_L);
disp (" ");
spy (L);
input (s_Enter_Continue);
close;

# Análise da matriz U
clc;
disp (s_LU_First_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_First_U);
disp (" ")
spy (U);
input (s_Enter_Continue);
close;

# Análise da matriz A
clc;
disp (s_LU_First_Mat_Display);
disp (s_LU_First_A);
spy (A);
disp (" ");
input (s_Enter_Continue);
close;

# Análise de Ax = b
clc;
n = rows (A);
b = A * ones (n, 1);
disp (s_LU_Solution_Found);
x = A\b
disp (s_LU_Max_Res_Norm_Found);
q = norm((b-A*x)/b, inf)
disp (" ");
input (s_Enter_Continue);

# Análise do condicionamento
clc;
disp (s_LU_Calc_Cond);
c = cond (A);
clc;
disp (s_LU_Cond_Display);
disp (c);
disp (" ");
disp (s_LU_High_Cond);
disp (" ");
input (s_Enter_Continue);


##############################################################################
# Segunda matriz
##############################################################################
clear -x conf_*
strings_all
strings_q1
load (strcat(data_path, s_Second_Mat));
A = Problem.A;
[L, U, P] = lu (A);

# Análise da matriz L
clc;
disp (s_LU_Second_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_Second_L);
spy (L);
disp(" ");
input (s_Enter_Continue);
close;

# Análise da matriz U
clc;
disp (s_LU_Second_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_Second_U);
spy (U);
disp(" ");
input (s_Enter_Continue);
close;

# Análise da matriz A
clc;
disp (s_LU_Second_Mat_Display);
disp (s_LU_Second_A);
spy (A);
disp (" ");
input (s_Enter_Continue);
close;

# Análise de Ax = b
clc;
n = rows (A);
b = A * ones (n, 1);
disp (s_LU_Solution_Found);
x = A\b
disp (s_LU_Max_Res_Norm_Found);
q = norm((b-A*x)/b, inf)
disp (" ");
input (s_Enter_Continue);
clc;

# Análise do condicionamento
disp (s_LU_Calc_Cond);
c = cond (A);
clc;
disp (s_LU_Cond_Display);
disp (c);
disp (" ");
disp (s_LU_High_Cond);
disp (" ");
input (s_Enter_Continue);


##############################################################################
# Terceira matriz
##############################################################################
clear -x conf_*
strings_q1
strings_all
load (strcat(data_path, s_Third_Mat));
A = Problem.A;
[L, U, P] = lu (A);

# Análise da matriz L
clc;
disp (s_LU_Third_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_Third_L);
spy (L);
disp(" ");
input (s_Enter_Continue);
close;

# Análise da matriz U
clc;
disp (s_LU_Third_Mat_Display);
disp (" ");
disp (" ");
disp (s_LU_Third_U);
spy (U);
disp(" ");
input (s_Enter_Continue);
close;

# Análise da matriz A
clc;
disp (s_LU_Third_Mat_Display);
disp (s_LU_Third_A);
spy (A);
disp (" ");
input (s_Enter_Continue);
close;

# Análise de Ax = b
clc;
n = rows (A);
b = A * ones (n, 1);
disp (s_LU_Solution_Found);
x = A\b
disp (s_LU_Max_Res_Norm_Found);
q = norm((b-A*x)/b, inf)
disp (" ");
input (s_Enter_Continue);
clc;

# Análise do condicionamento
disp (s_LU_Calc_Cond);
c = cond (A);
clc;
disp (s_LU_Cond_Display);
disp (c);
disp (" ");
disp (s_LU_High_Cond);
disp (" ");
input (s_Enter_Continue);
