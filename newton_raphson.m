function root = newton_raphson( polynomial, max_iterations, error, initial_x )
    if max_iterations == 0
       root = initial_x;
       return;
    end

    initial_y = polyval(polynomial, initial_x);
    derivate_y = polyval(polyder(polynomial), initial_x);
    
    next_x = initial_x - initial_y / derivate_y;
    
    if abs(next_x - initial_x) <= error
       root = next_x;
       return;
    end
    
    root = newton_raphson(polynomial, max_iterations - 1, error, next_x);
    return;
end


