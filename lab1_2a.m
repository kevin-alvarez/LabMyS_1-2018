% Segunda Parte - A

polynomial = input('Ingrese el polinomio: '); % pide polinomio por consola
max_iterations = input('Ingrese numero máximo de iteraciones: '); % pide iteraciones por consola
error = input('Ingrese error: '); % pide error por consola
initial_x= input('Ingrese punto inicial: '); % Pide punto inicial por consola

root = newton_raphson(polynomial, max_iterations, error, initial_x); % llama a la funcion newton-raphson

disp(['La raiz es: ', num2str(root)]); % muestra el resultado por consola