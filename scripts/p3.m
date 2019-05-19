clear -except strings


load "../dados/ajuste_congelamento.txt"
[l,c] = size(ajuste_congelamento);
x = ajuste_congelamento(1:l,1);
y = ajuste_congelamento(1:l,2);
n = 1;
p1 = polyfit(x,y,n);
fprintf('\n');
fprintf('p1(x) = %3.2f x + %3.2f\n', p1(1), p1(2));
n = 2;
p1 = polyfit(x,y,n);
fprintf('\n');
fprintf('p2(x) = %3.2f x² + %3.2f x + %3.2f\n', p1(1), p1(2), p1(3));