% Laboratorio 4 - Parte 2.2

% Ejemplo del sistema modelado
graficarSistema(5,10, 50, 2, 1, 0,0);


% Funcion resolutora del sistema de estanques
function [ Y, dV ] = sistema(Vs, R1, R2, C1, C2, V1, V2)
    % Construir y resolver Matrices
    dV = [-1/(R1*C1), 0; 0,-1/(R2*C2)]*[V1;V2]+[1/(R1*C1);1/(R2*C2)]*Vs;
    Y = [1, 1]*[V1; V2];
end

% Esta función grafica el comportamiento de un sistema desde un estado
% inicial
function  graficarSistema(Vs, R1, R2, C1, C2, V1, V2) 
    y = [];
    for i = 1:150
        [Y, dV] = sistema(Vs, R1, R2, C1, C2, V1, V2) ;
        y = [y, Y];
        V = [V1,V2]'+dV';
        V1 = V(1,1);
        V2 = V(1,2);
    end
    
    % Graficar
    figure('Position', [100 100 800 500]);
    plot(y)
    grid;
    xlabel('Tiempo');
    ylabel('V1+V2');
    title('Sistema electrico');

end

