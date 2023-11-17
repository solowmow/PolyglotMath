# Matrix Operations in Julia

function matrix_operations(matrix1, matrix2)
    # Addition of matrices
    if size(matrix1) == size(matrix2)
        addition_result = matrix1 + matrix2
        println("Addition of matrices:")
        println(addition_result)
    else
        println("Matrix addition not possible. Matrices have different dimensions.")
    end

    # Multiplication of matrices
    if size(matrix1, 2) == size(matrix2, 1)
        multiplication_result = matrix1 * matrix2
        println("Multiplication of matrices:")
        println(multiplication_result)
    else
        println("Matrix multiplication not possible. Dimensions mismatch.")
    end

    # Transpose of matrices
    transpose_matrix1 = matrix1'
    transpose_matrix2 = matrix2'

    println("Transpose of Matrix 1:")
    println(transpose_matrix1)
    println("Transpose of Matrix 2:")
    println(transpose_matrix2)
end

# Example Usage
matrix1 = [1 2; 3 4]
matrix2 = [5 6; 7 8]

matrix_operations(matrix1, matrix2)