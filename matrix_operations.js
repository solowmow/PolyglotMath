function matrixOperations(matrix1, matrix2) {
    // Addition of matrices
    if (matrix1.length !== matrix2.length || matrix1[0].length !== matrix2[0].length) {
        console.log("Matrix addition not possible. Matrices have different dimensions.");
        return;
    }

    let additionResult = [];
    for (let i = 0; i < matrix1.length; i++) {
        let row = [];
        for (let j = 0; j < matrix1[0].length; j++) {
            row.push(matrix1[i][j] + matrix2[i][j]);
        }
        additionResult.push(row);
    }

    console.log("Addition of matrices:");
    additionResult.forEach(row => console.log(row));

    // Multiplication of matrices
    let multiplicationResult = matrix1.map(row =>
        Array.from({ length: matrix2[0].length }, (_, j) =>
            row.reduce((acc, val, k) => acc + val * matrix2[k][j], 0)
        )
    );

    console.log("Multiplication of matrices:");
    multiplicationResult.forEach(row => console.log(row));
}

let matrix1 = [[1, 2], [3, 4]];
let matrix2 = [[5, 6], [7, 8]];

matrixOperations(matrix1, matrix2);