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
load (strcat(data_path, s_Lin_First_Mat_FName));
A = Problem.A;

# Análise do Fatora
[MJ, MS, SOR] = fatora(A, 2);
[V lambda] = eig(MJ);
printf("Maior lambda para a matriz de Jacobi: %f\n\n", max(abs(diag(lambda))))
[V lambda] = eig(MS);
printf("Maior lambda para a matriz de Gauss-Seidel: %f\n\n", max(abs(diag(lambda))))

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

# Conclusões sobre a fatora
# FIXME: Comentários faltando
printf (s_Sol_Lambda_Min_Exp, 1)
disp (" ");
disp (s_Sol_Lambda_SOR_1);
disp(" ");

input (s_Enter_Continue);
clc


# Soluções
n = rows(A);
b = A * ones (n, 1);
clc;
printf (s_Sol_Jacobi, s_Lin_First_Mat_FName);
disp(' ');

if(bShouldUseCache != 1)
    [xJacobi, iterJacobi, resJacobi] = jacobi (A, b, tol, maxIter)
else
    load "../cache/fs_183_3/xJacobi_fs_183_3.cache"
    xJacobi
    load "../cache/fs_183_3/iterJacobi_fs_183_3.cache"
    iterJacobi
    load "../cache/fs_183_3/resJacobi_fs_183_3.cache"
    resJacobi
endif;
disp(" ");

input (s_Enter_Continue);
clc;

printf(s_Sol_GSeidel, s_Lin_First_Mat_FName);
if(bShouldUseCache != 1)
    # Gauss-Seidel -> SOR com w = 1
    [xSeidel, iterSeidel, resSeidel] = sor (A, b, tol, maxIter, 1) 
else
    load "../cache/fs_183_3/xSeidel_fs_183_3.cache"
    xSeidel
    load "../cache/fs_183_3/iterSeidel_fs_183_3.cache"
    iterSeidel
    load "../cache/fs_183_3/resSeidel_fs_183_3.cache"
    resSeidel
endif;
disp (" ");
input (s_Enter_Continue);
clc;

printf(s_Sol_SOR, s_Lin_First_Mat_FName);
if(bShouldUseCache != 1)
    [xSor, iterSor, resSor] = sor (A, b, tol, maxIter, 1)
else
    load "../cache/fs_183_3/xSor_fs_183_3.cache"
    xSor
    load "../cache/fs_183_3/iterSor_fs_183_3.cache"
    iterSor
    load "../cache/fs_183_3/resSor_fs_183_3.cache"
    resSor
endif;
disp (" ");

input (s_Enter_Continue);
clc;

# Desenho do gráfico

xj = linspace(1, iterJacobi, iterJacobi);
xg = linspace(1, iterSeidel, iterSeidel);
xs = linspace(1, iterSor, iterSor);
plot(xj, resJacobi, ";Jacobi;", xg, resSeidel, ";Seidel;", xs, resSor, ";SOR;")

disp(' ')
input(s_Enter_Continue);
close;
clear -except strings

##############################################################################
# Segunda matriz
##############################################################################

printf(s_Sol_Analysis_M, 2, "bcsstk01");

load (strcat(data_path, "bcsstk01.mat"));
A = Problem.A;

# Análise do Fatora
[MJ, MS, SOR] = fatora(A, 2);
[V lambda] = eig(MJ);
printf("Maior lambda para a matriz de Jacobi: %f\n\n", max(abs(diag(lambda))))
[V lambda] = eig(MS);
printf("Maior lambda para a matriz de Gauss-Seidel: %f\n\n", max(abs(diag(lambda))))

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

# Conclusões sobre a fatora
# FIXME: Comentários faltando
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

printf(s_Sol_GSeidel, "bcsstk01");
if(bShouldUseCache != 1)
    # Gauss-Seidel -> SOR com w = 1
    [xSeidel, iterSeidel, resSeidel] = sor (A, b, tol, maxIter, 1) 
else
    load "../cache/bcsstk01/xSeidel_bcsstk01.cache"
    xSeidel
    load "../cache/bcsstk01/iterSeidel_bcsstk01.cache"
    iterSeidel
    load "../cache/bcsstk01/resSeidel_bcsstk01.cache"
    resSeidel
endif;
disp (" ");
input (s_Enter_Continue);
clc;

printf(s_Sol_SOR, s_Lin_First_Mat_FName);
if(bShouldUseCache != 1)
    [xSor, iterSor, resSor] = sor (A, b, tol, maxIter, 1)
else
    load "../cache/bcsstk01/xSor_bcsstk01.cache"
    xSor
    load "../cache/bcsstk01/iterSor_bcsstk01.cache"
    iterSor
    load "../cache/bcsstk01/resSor_bcsstk01.cache"
    resSor
endif;

# Desenho do gráfico

xg = linspace(1, iterSeidel, iterSeidel);
xs = linspace(1, iterSor, iterSor);
plot(xg, resSeidel, ";Seidel;", xs, resSor, ";SOR;")

disp(' ')
input(s_Enter_Continue);
close;

clear -except strings
clc;

##############################################################################
# Terceira matriz
##############################################################################

printf(s_Sol_Analysis_M, 3, "plat362");

load (strcat(data_path, "plat362.mat"));
A = Problem.A;

# Análise do Fatora
[MJ, MS, SOR] = fatora(A, 2);
[V lambda] = eig(MJ);
printf("Maior lambda para a matriz de Jacobi: %f\n\n", max(abs(diag(lambda))))
[V lambda] = eig(MS);
printf("Maior lambda para a matriz de Gauss-Seidel: %f\n\n", max(abs(diag(lambda))))

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

# Conclusões sobre a fatora
# FIXME: Comentários faltando
printf (s_Sol_Lambda_Min_Exp, 1)
disp (" ");
disp (s_Sol_Lambda_SOR_1);
disp(" ");

input (s_Enter_Continue);
clc

clear -except strings
