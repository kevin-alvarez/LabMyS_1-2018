%% Laboratorio 4 - Parte 1 (2)
% Se realiza el proceso inverso de conversi�n, esta vez desde modelo de
% estados a funci�n de transferencia
% Se hace uso de la salida obtenida del programa anterior con los valores
% originales expuestos
A = [-1.5 -2.5;3 -2];
B = [2.5;0];
C = [1 0];
D = 0;

% Se realiza una operaci�n para obtener numerador y denominador (polinomios) 
% de las funciones de trasnferencia.
numH1 = B(1);
denH1 = [1 -A(1, 1)];
numH2 = A(2, 1);
denH2 = [1 -A(2, 2)];

% Se expresa como funcion de transferencia de MATLAB para presentarla
% formalmente
% Cabe destacar que el resultado es una funci�n de transferencia
% equivalente
H1 = tf(numH1, denH1);
H2 = tf(numH2, denH2);

