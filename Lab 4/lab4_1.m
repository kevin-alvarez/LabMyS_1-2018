%% Laboratorio 4 - Parte 1 (1)
% Se realiza la conversión de función de transferencia (diagrama de
% bloques) a modelo de estados

% Para efectos de formalidad el ingreso de las funciones de transferencia
% se realiza a través de los polinomios (numerado y denominador), los
% cuales son representados como vectores de la siguiente manera:
% s^3 + 3s + 8 -> [1, 0, 3, 8]
% en caso de ser un polinomio de grado 0 solo se ingresa el valor
numH1 = 5;
denH1 = [2 3];
numH2 = 3;
denH2 = [1 2];

% Se obtienen los factores para generar las matrices del modelo de estados
a0 = denH1(2);
a1 = denH1(1);
b0 = numH1;
c0 = denH2(2);
c1 = denH2(1);
d0 = numH2;

% Se crean las matrices correspondientes a los factores del modelo de
% estados
% Estas matrices fueron generadas de acuerdo a una fórmula obtenida a
% través de un desarrollo teórico del problema con valores genéricos
A = [-a0/a1 -b0/a1;d0/c1 -c0/c1];   % Factores de variables de estado
B = [b0/a1;0];                      % Factores de entradas
C = [1 0];                          % Factores de variables de estado (ecuación de salida)
D = 0;                              % Factores de entradas (ecuación de salida)



