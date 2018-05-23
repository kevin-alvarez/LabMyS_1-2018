% Parte 2
% Funciones de transferencia de los sistemas
H1 = tf([3 0],[5 0 2]);
H2 = tf(4, [1 2]);
H3 = tf([3 1],[3 5 0 1]);
H4 = tf(1,[7 1]);
H5 = tf([5 4],[5 1 0 4]);
H6 = tf([0 0 2 3], [1 6 0 5]);

% funcion 4 + funcion 5
H45 = parallel(H4,H5);
% loop funcion 3
H3L = feedback(H3,1,+1);
% seccion 3 4-5 
H345 = series(H3L, H45);
% rama 3456
H3456 = series(H345, H6);
% H1 + H2
H12 = parallel(H1, H2);

%final
H = parallel(H12,H3456);

[cero, ganancia] = zero(H)

% Gráfico con entrada escalon
figure('Position', [100 100 800 600])
step(H)
title('Respuesta del sistema al escalón');
ylabel('Amplitud'); % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x
grid minor;