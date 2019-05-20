clc
clear -except strings

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
disp (" ");
disp (s_Sol_Lambda_SOR_1);
disp(" ");

input (s_Enter_Continue);
clc


# Soluções
n = rows(A);
b = A * ones (n, 1);
clc
printf (s_Sol_Jacobi, s_Lin_First_Mat_FName);
[xJacobi, iterJacobi, resJacobi] = jacobi (A, b, tol, maxIter)
disp(" ");

input (s_Enter_Continue);
clc;

printf(s_Sol_GSeidel, s_Lin_First_Mat_FName);
# Gauss-Seidel = SOR com w = 1
[xSeidel, iterSeidel, resSeidel] = sor (A, b, tol, maxIter, 1) 
disp (" ");

xi = linspace(1, iterJacobi, iterJacobi)
x2 = linspace(1, iterSeidel, iterSeidel)
plot(xi, resJacobi, ";Jacobi;", x2, resSeidel, ";Seidel;")

input (s_Enter_Continue);
clc;

printf(s_Sol_SOR, s_Lin_First_Mat_FName);
s = sor (A, b, tol, maxIter, 1)
disp (" ");

input (s_Enter_Continue);
clc;




clear -except strings

##############################################################################
# Segunda matriz
##############################################################################
tol = 0.00001;
maxIter = 10000;

printf(s_Sol_Analysis_M, 2, s_Lin_Second_Mat_FName);

load (strcat("../dados/", s_Lin_Second_Mat_FName));
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
disp (" ");
disp (s_Sol_Lambda_SOR_1);
disp(" ");

input (s_Enter_Continue);
clc

#{

# Soluções
n = rows(A);
b = A * ones (n, 1);
clc
printf (s_Sol_Jacobi, s_Lin_First_Mat_FName);
j = jacobi (A, b, tol, maxIter)
disp(" ");

input (s_Enter_Continue);
clc;

printf(s_Sol_GSeidel, s_Lin_First_Mat_FName);
# Gauss-Seidel = SOR com w = 1
gseidel = sor (A, b, tol, maxIter, 1) 
disp (" ");

input (s_Enter_Continue);
clc;

printf(s_Sol_SOR, s_Lin_First_Mat_FName);
s = sor (A, b, tol, maxIter, 1)
disp (" ");

input (s_Enter_Continue);
clc;
#}

clear -except strings

##############################################################################
# Terceira matriz
##############################################################################
tol = 0.00001;
maxIter = 10000;

printf(s_Sol_Analysis_M, 3, s_Lin_Third_Mat_FName);

load (strcat("../dados/", s_Lin_Third_Mat_FName));
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
disp (" ");
disp (s_Sol_Lambda_SOR_1);
disp(" ");

input (s_Enter_Continue);
clc

#{

# Soluções
n = rows(A);
b = A * ones (n, 1);
clc
printf (s_Sol_Jacobi, s_Lin_First_Mat_FName);
j = jacobi (A, b, tol, maxIter)
disp(" ");

input (s_Enter_Continue);
clc;

printf(s_Sol_GSeidel, s_Lin_First_Mat_FName);
# Gauss-Seidel = SOR com w = 1
gseidel = sor (A, b, tol, maxIter, 1) 
disp (" ");

input (s_Enter_Continue);
clc;

printf(s_Sol_SOR, s_Lin_First_Mat_FName);
s = sor (A, b, tol, maxIter, 1)
disp (" ");

input (s_Enter_Continue);
clc;
#}

clear -except strings
