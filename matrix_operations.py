# Matrix Operations in Python

class Matrix:
    def __init__(self, rows, cols):
        self.rows = rows
        self.cols = cols
        self.data = [[0 for _ in range(cols)] for _ in range(rows)]

    def add(self, matrix):
        if self.rows != matrix.rows or self.cols != matrix.cols:
            raise ValueError("Matrix dimensions must match for addition")
        
        result = Matrix(self.rows, self.cols)
        for i in range(self.rows):
            for j in range(self.cols):
                result.data[i][j] = self.data[i][j] + matrix.data[i][j]
        
        return result

    def multiply(self, matrix):
        if self.cols != matrix.rows:
            raise ValueError("Number of columns in first matrix must match number of rows in second matrix")

        result = Matrix(self.rows, matrix.cols)
        for i in range(self.rows):
            for j in range(matrix.cols):
                sum = 0
                for k in range(self.cols):
                    sum += self.data[i][k] * matrix.data[k][j]
                result.data[i][j] = sum
        
        return result

    def display(self):
        for row in self.data:
            print(row)

# Example Usage
if __name__ == "__main__":
    matrix1 = Matrix(2, 3)
    matrix1.data = [[1, 2, 3], [4, 5, 6]]

    matrix2 = Matrix(3, 2)
    matrix2.data = [[7, 8], [9, 10], [11, 12]]

    print("Matrix 1:")
    matrix1.display()

    print("\nMatrix 2:")
    matrix2.display()

    print("\nAddition of matrices:")
    result_add = matrix1.add(matrix2)
    result_add.display()

    print("\nMultiplication of matrices:")
    result_mult = matrix1.multiply(matrix2)
    result_mult.display()