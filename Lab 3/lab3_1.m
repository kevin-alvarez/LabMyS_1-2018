% Primera parte Laboratorio 3
numc = [3 10]; % numerador de la funcion de transferencia
denc = [25 -4 30]; % denominador de la funcion de transferencia
H = tf(numc,denc);

figure('Position', [100 100 800 500]);
step(H); % respuesta al escalon
grid;
title('Respuesta al escalon');

% Se grafica la respuesta continua al escalon
figure('Position', [100 100 800 500]);
step(H); % respuesta al escalon
grid;
title('Respuesta al escalon (continuo)');
xlim([0 15]);
ylim([-1.2 1.5]);

% Se discretiza la funcion con un bloqueador de orden zero
T1 = 0.1; % tiempo de muestreo
H1 = c2d(H, T1, 'zoh'); % discretizacion

figure('Position', [100 100 800 600]);
subplot(2, 1, 1);
step(H1);
grid;
title(strcat('Respuesta discretizada con T = ',num2str(T1)));
xlim([0 20]);
ylim([-1.2 1.5]);


T2 = 0.05; % tiempo de muestreo
H2 = c2d(H, T2, 'zoh'); % discretizacion

subplot(2, 1, 2);
step(H2);
grid;
title(strcat('Respuesta discretizada con T = ',num2str(T2)));
xlim([0 20]);
ylim([-1.2 1.5]);


% Se transforma la funcion de discreta a continua
Tc = 0.1;
[num, den] = tfdata(H1); 
[numdc, dendc] = d2cm(num,den, Tc, 'zoh'); % a continua
figure('Position', [100 100 800 500]);
step(numdc, dendc);
grid;
title('Funcion transformada de discreta a continua');
xlim([0 20]);
ylim([-1.2 1.5]);