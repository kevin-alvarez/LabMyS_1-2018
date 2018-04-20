% Implementacion de newton-raphson para polinomios
function root = newton_raphson( polynomial, max_iterations, error, initial_x )
    % Caso borde 1: limite de iteraciones
    if max_iterations == 0 % Cuando no quedan iteraciones
       root = initial_x; % se usa la ultima aproximacion encontrada
       return; % se retorna raiz
    end

    initial_y = polyval(polynomial, initial_x); % se evalua polinomio
    derivate_y = polyval(polyder(polynomial), initial_x); % se evalua la derivada del polinomio
    
    next_x = initial_x - initial_y / derivate_y; % se calcula la siguiente aproximacion utilizando la formula de newton-raphson
    
    % Caso de borde 2: error aceptado
    if abs(next_x - initial_x) <= error % si la diferencia entre las ultimas dos aproximaciones es menor al error
       root = next_x; % se asume ultima aproximacion como raiz
       return; % retorno raiz
    end
    
    root = newton_raphson(polynomial, max_iterations - 1, error, next_x); % llamada recursiva
    return; 
end


