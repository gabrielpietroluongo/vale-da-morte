clc
clear -except strings
addpath ./utils


##############################################################################
# Primeira matriz
##############################################################################
tol = 0.00001
maxIter = 10000


load (strcat("../dados/", s_Lin_First_Mat_FName));
A = Problem.A;
n = rows(A);
b = A * ones (n, 1);
jacobi(A, b, tol, maxIter)