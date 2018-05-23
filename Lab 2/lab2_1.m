% Parte 1
% 1er orden
H1 = tf([3 0], [3 2]); % lazo abierto

figure('Position', [100 100 800 600])
step(H1) % Entrada escalon
title('Primer orden - Lazo abierto'); % titulo
ylabel('Amplitud'); % etiqueta eje y % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x % etiqueta eje x
grid minor;


figure('Position', [100 100 800 600])
H1l = feedback(H1,1); % retroalimentacion (lazo cerrado)
step(H1l)
title('Primer orden - Lazo cerrado'); % titulo
ylabel('Amplitud'); % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x
grid minor;

% 2do orden
H2 = tf([1 6 1], [1 2 7]); % lazo abierto
figure('Position', [100 100 800 600])
step(H2) % entrada escalon
title('Segundo orden - Lazo abierto'); % titulo
ylabel('Amplitud'); % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x
grid minor;

figure('Position', [100 100 800 600])
H2l = feedback(H2,1); % retroalimentacion (lazo cerrado)
step(H2l)
title('Segundo orden - Lazo cerrado'); % titulo
ylabel('Amplitud'); % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x
grid minor;

% 3er orden
H3 = tf([5 0],[1 2 0 1]) % lazo abierto
figure('Position', [100 100 800 600])
step(H3) % entrada escalon
title('Tercer orden - Lazo abierto'); % titulo
ylabel('Amplitud'); % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x
grid minor;

figure('Position', [100 100 800 600])
H3l = feedback(H3,1); % retroalimentacion (lazo cerrado)
step(H3l) % entrada escalon
title('Tercer orden - Lazo cerrado'); %titulo
ylabel('Amplitud'); % etiqueta eje y
xlabel('Tiempo'); % etiqueta eje x
grid minor;

% Ganancia, ceros y polos - funcion 1er orden
[num,den] = tfdata(H1,'v');
[Z1,P1,K1] = tf2zp(num,den);
[num,den] = tfdata(H1l,'v');
[Z1l,P1l,K1l] = tf2zp(num,den);

% Ganancia, ceros y polos - funcion 2do orden
[num,den] = tfdata(H2,'v');
[Z2,P2,K2] = tf2zp(num,den);
[num,den] = tfdata(H2l,'v');
[Z2l,P2l,K2l] = tf2zp(num,den);

% Ganancia, ceros y polos - funcion 3er orden
[num,den] = tfdata(H3,'v');
[Z3,P3,K3] = tf2zp(num,den);
[num,den] = tfdata(H3l,'v');
[Z3l,P3l,K3l] = tf2zp(num,den);



