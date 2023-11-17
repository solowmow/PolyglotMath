# Fibonacci Sequence with Memoization in Python

memo = {0: 0, 1: 1}

def fibonacci(n):
    if n < 0:
        return "Invalid input. Please provide a non-negative integer for Fibonacci calculation."
    elif n in memo:
        return memo[n]
    else:
        memo[n] = fibonacci(n - 1) + fibonacci(n - 2)
        return memo[n]

def generate_fibonacci_sequence(num_terms):
    fibonacci_sequence = [fibonacci(i) for i in range(num_terms)]
    return fibonacci_sequence

# Example Usage
if __name__ == "__main__":
    num_terms = 20  # Change this value to get the desired number of Fibonacci terms
    fibonacci_sequence = generate_fibonacci_sequence(num_terms)
    
    print(f"Fibonacci sequence of {num_terms} terms:")
    print(fibonacci_sequence)