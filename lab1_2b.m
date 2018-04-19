% Ingreso del vector
% Debe ingresarse entre [] como la representaci�n de MatLab.
vector = input('Ingrese el vector: ');
% Verificaci�n del vector ingresado.
% Debe tener un largo mayor a 4 elementos para realizar la operaci�n.
if length(vector) < 4
    disp('El vector ingresado tiene menos de 4 elementos.');
% Debe contener solo valores num�ricos.
elseif ~isnumeric(vector)
    disp('El vector ingresado debe tener solo elementos num�ricos');
% No puede contener negativos, dado a que ser�an los menores y no se podr�a
% obtener su raiz cuadrada.
elseif any(vector < 0)
    disp('El vector contiene elementos negativos');
else
    % Operaci�n del vector.
    % Ordenar el vector para disminuir el orden de busqueda de los
    % valores mayores y menores.
    vector = sort(vector);
    % Se calcula la suma de las raices de los 4 elementos menores.
    sum_min = sum(arrayfun(@(x) sqrt(x), vector(1:4)));
    % Se calcula la ra�z de la suma de los 4 elementos mayores.
    sum_max = sqrt(sum(vector(end-3:end)));
    % Se calcula la suma total.
    sum_total = sum_min + sum_max;
    % Se despliega por pantalla el resultado final.
    fprintf('El resultado de la operaci�n es: %f\n', sum_total);
end

    