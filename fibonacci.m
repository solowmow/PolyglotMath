% Fibonacci Sequence in MATLAB

function fib_sequence = fibonacci(num_terms)
    % Function to generate the Fibonacci sequence up to a specified number of terms
    % Input: num_terms - Number of terms in the Fibonacci sequence
    % Output: fib_sequence - Array containing the Fibonacci sequence
    
    fib_sequence = zeros(1, num_terms);
    fib_sequence(1) = 0;
    fib_sequence(2) = 1;
    
    for i = 3:num_terms
        fib_sequence(i) = fib_sequence(i - 1) + fib_sequence(i - 2);
    end
    
    fprintf('Fibonacci sequence of %d terms:\n', num_terms);
    disp(fib_sequence);
end