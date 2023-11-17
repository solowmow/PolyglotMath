# Matrix Operations in R

# Function to perform matrix addition
matrix_addition <- function(matrix1, matrix2) {
    if (identical(dim(matrix1), dim(matrix2))) {
        result <- matrix1 + matrix2
        print("Addition of matrices:")
        print(result)
    } else {
        print("Matrix addition not possible. Matrices have different dimensions.")
    }
}

# Function to perform matrix multiplication
matrix_multiplication <- function(matrix1, matrix2) {
    if (ncol(matrix1) == nrow(matrix2)) {
        result <- matrix1 %*% matrix2
        print("Multiplication of matrices:")
        print(result)
    } else {
        print("Matrix multiplication not possible. Dimensions mismatch.")
    }
}

# Example Usage
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)

matrix_addition(matrix1, matrix2)
matrix_multiplication(matrix1, matrix2)