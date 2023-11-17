# Fibonacci Sequence in Julia

function fibonacci(num_terms)
    fib_sequence = zeros(Int, num_terms)
    fib_sequence[1] = 0
    fib_sequence[2] = 1

    for i in 3:num_terms
        fib_sequence[i] = fib_sequence[i - 1] + fib_sequence[i - 2]
    end

    println("Fibonacci sequence of $num_terms terms:")
    println(fib_sequence)
end

# Example Usage
fibonacci(10)  # Change the number of terms in the sequence as needed