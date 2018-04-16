polynomial = input('Ingrese el polinomio: ');
max_iterations = input('Ingrese numero maximo de iteraciones: ');
error = input('Ingrese error: ');
initial_x= input('Ingrese punto inicial: ');

root = newton_raphson(polynomial, max_iterations, error, initial_x);

disp(['La raiz es: ', num2str(root)]);