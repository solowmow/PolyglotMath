public class MatrixOperations {

    public static void matrixOperations(int[][] matrix1, int[][] matrix2) {
        // Addition of matrices
        if (matrix1.length != matrix2.length || matrix1[0].length != matrix2[0].length) {
            System.out.println("Matrix addition not possible. Matrices have different dimensions.");
            return;
        }

        int[][] additionResult = new int[matrix1.length][matrix1[0].length];
        for (int i = 0; i < matrix1.length; ++i) {
            for (int j = 0; j < matrix1[0].length; ++j) {
                additionResult[i][j] = matrix1[i][j] + matrix2[i][j];
            }
        }

        System.out.println("Addition of matrices:");
        for (int[] row : additionResult) {
            for (int val : row) {
                System.out.print(val + " ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        int[][] matrix1 = {{1, 2}, {3, 4}};
        int[][] matrix2 = {{5, 6}, {7, 8}};

        matrixOperations(matrix1, matrix2);
    }
}