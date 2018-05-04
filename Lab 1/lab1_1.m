% Primera Parte, Ejercicio A

x = 0:0.01:15*pi; % define dominio desde 0 a 15*pi con saltos de 0.01

a = 5 * log(6*x+3)/log(5); % evalua funcion a(x) en dominio
b = sin(4*log2(x+1)) + cos(4*log(x+9)/log(6)); % evalua funcion b(x) en dominio

figure(); % nueva figura
%displayName = '5 * log(6*x+3) / log(5)';
plot(x,a,'r *'); % plotea a(x) sobre dominio x, en rojo y con simbolo *
title('Gráfico 4.1'); % titulo del grafico
ylabel('Eje Y'); % etiqueta eje y
xlabel('Eje X'); % etiqueta eje x
legend('a(x) = 5 * log(6*x+3) / log(5)','Location','southeast'); % leyenda

figure(); % nueva figura
plot(x,b,'g +'); % plotea b(x) sobre dominio x, en verde y con simbolo +
title('Gráfico 4.2'); % titulo del grafico
ylabel('Eje Y'); % etiqueta eje y
xlabel('Eje X'); % etiqueta eje x
legend('b(x) = sin(4*log2(x+1)) + cos(4*log(x+9)/log(6))','Location','best'); % leyenda

figure(); % nueva figura
plot(x,a,'r *',x,b,'g +'); % plotea a(x) sobre dominio x, en rojo y con simbolo * y plotea b(x) sobre dominio x, en verde y con simbolo +
title('Gráfico 4.3'); % titulo del grafico
ylabel('Eje Y'); % etiqueta eje y
xlabel('Eje X'); % etiqueta eje x
legend('a(x) = 5 * log(6*x+3) / log(5)','b(x) = sin(4*log2(x+1)) + cos(4*log(x+9)/log(6))','Location','best'); % leyenda

% Primera Parte, Ejercicio B

x = -10:0.05:10; % define dominio desde -10 hasta 10 con saltos de 0.05 

c = 5*exp(2*x-10); % evalua funcion c(x) en dominio

figure(); % nueva figura
plot(x,c,'b *'); % plotea c(x) sobre dominio x, en azul y con simbolo * usando escala normal
title('Gráfico 4.4'); % titulo del grafico
ylabel('Eje Y'); % etiqueta eje y
xlabel('Eje X'); % etiqueta eje x
legend('c(x) = 5 * exp(2*x-10)','Location','best'); % leyenda
grid  minor % añade cuadricula

figure(); % nueva figura
semilogy(x,c,'b *'); % plotea c(x) sobre dominio x, en azul y con simbolo * usando escala normal
title('Gráfico 4.5'); % titulo del grafico
ylabel('Eje Y'); % etiqueta eje y
xlabel('Eje X'); % etiqueta eje x
legend('c(x) = 5 * exp(2*x-10)','Location','best'); % leyenda
grid  minor % añade cuadricula

