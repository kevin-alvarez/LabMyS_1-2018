% Laboratorio 4 - Parte 2.1

% Ejemplos del sistema modelado
graficarSistema(10,1.5,1,2);
graficarSistema(5,2,1,2);
graficarSistema(5,1.5,1,10);


% Funcion resolutora del sistema de estanques
function [ F2, dh ] = sistema(F1, A, h1_0, h2_0)
    % Construir y resolver Matrices
    dh = [0, 0; 0, -1/A]*[h1_0;h2_0]+[0;1/A]*F1;
    F2 = [0, 1]*[h1_0; h2_0];
end

% Esta función grafica el comportamiento de un sistema desde un estado
% inicial
function  graficarSistema(F1, A, h1, h2) 
    h1_0 = h1;
    h2_0 = h2;
    y = [];
    for i = 1:25
        [F, dh] = sistema(F1, A, h1, h2) ;
        y = [y, F];
        h = [h1,h2]'+dh';
        h1 = h(1,1);
        h2 = h(1,2);
    end
    
    %Graficar
    figure('Position', [100 100 800 500]);
    plot(y)
    grid;
    xlabel('Tiempo');
    ylabel('F2');
    title(sprintf('Sistema de estanques con F1=%d A=%.1f h1=%d h2=%d', F1, A, h1_0, h2_0));

end

