% Primera parte Laboratorio 3
numc = [3 10]; % numerador de la funcion de transferencia
denc = [25 -4 30]; % denominador de la funcion de transferencia

% Se grafica la respuesta continua al escalon
figure('Position', [100 100 800 600]);
step(numc, denc); % respuesta al escalon
grid;
title('Respuesta al escalon (continuo)');

% Se discretiza la funcion con un bloqueador de orden zero
T1 = 0.1; % tiempo de muestreo
[numd1, dend1] = c2dm(numc, denc, T1, 'zoh'); % discretizacion
[y1] = dstep(numd1, dend1, 200+1);
x1 = 0:T1:T1*200;
figure('Position', [100 100 800 600]);
subplot(2, 1, 1);
stairs(x1, y1);
grid;
title('Respuesta discretizada con T = ');
xlim([0 10]);
ylim([-1.5 1.5]);

T2 = 0.05; % tiempo de muestreo
[numd2, dend2] = c2dm(numc, denc, T2, 'zoh'); % discretizacion
[y2] = dstep(numd2, dend2, 200+1);
x2 = 0:T2:T2*200;
subplot(2, 1, 2);
stairs(x2, y2);
grid;
title('Respuesta discretizada con T = ');
xlim([0 10]);
ylim([-1.5 1.5]);

% Se transforma la funcion de discreta a continua
Tc = 0.1;
[numcont, dencont] = d2cm(numd1, dend1, Tc, 'zoh'); % a continua
figure('Position', [100 100 800 600]);
step(numcont, dencont);
grid;
title('Funcion transformada de discreta a continua');
