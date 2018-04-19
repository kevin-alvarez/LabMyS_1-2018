% Ingreso del vector
% Debe ingresarse entre [] como la representación de MatLab.
vector = input('Ingrese el vector: ');
% Verificación del vector ingresado.
% Debe tener un largo mayor a 4 elementos para realizar la operación.
if length(vector) < 4
    disp('El vector ingresado tiene menos de 4 elementos.');
% Debe contener solo valores numéricos.
elseif ~isnumeric(vector)
    disp('El vector ingresado debe tener solo elementos numéricos');
% No puede contener negativos, dado a que serían los menores y no se podría
% obtener su raiz cuadrada.
elseif any(vector < 0)
    disp('El vector contiene elementos negativos');
else
    % Operación del vector.
    % Ordenar el vector para disminuir el orden de busqueda de los
    % valores mayores y menores.
    vector = sort(vector);
    % Se calcula la suma de las raices de los 4 elementos menores.
    sum_min = sum(arrayfun(@(x) sqrt(x), vector(1:4)));
    % Se calcula la raíz de la suma de los 4 elementos mayores.
    sum_max = sqrt(sum(vector(end-3:end)));
    % Se calcula la suma total.
    sum_total = sum_min + sum_max;
    % Se despliega por pantalla el resultado final.
    fprintf('El resultado de la operación es: %f\n', sum_total);
end

    