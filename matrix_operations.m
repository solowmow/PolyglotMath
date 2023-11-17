% Matrix Operations in MATLAB

function result = matrix_operations(matrix1, matrix2)
    % Addition of matrices
    if size(matrix1) == size(matrix2)
        addition_result = matrix1 + matrix2;
        disp('Addition of matrices:');
        disp(addition_result);
    else
        disp('Matrix addition not possible. Matrices have different dimensions.');
    end

    % Multiplication of matrices
    if size(matrix1, 2) == size(matrix2, 1)
        multiplication_result = matrix1 * matrix2;
        disp('Multiplication of matrices:');
        disp(multiplication_result);
    else
        disp('Matrix multiplication not possible. Dimensions mismatch.');
    end

    % Transpose of matrices
    transpose_matrix1 = matrix1';
    transpose_matrix2 = matrix2';
    
    disp('Transpose of Matrix 1:');
    disp(transpose_matrix1);
    disp('Transpose of Matrix 2:');
    disp(transpose_matrix2);
    
    % Inverse of matrices (if square)
    if size(matrix1, 1) == size(matrix1, 2)
        try
            inverse_matrix1 = inv(matrix1);
            disp('Inverse of Matrix 1:');
            disp(inverse_matrix1);
        catch
            disp('Matrix 1 is not invertible.');
        end
        
        try
            inverse_matrix2 = inv(matrix2);
            disp('Inverse of Matrix 2:');
            disp(inverse_matrix2);
        catch
            disp('Matrix 2 is not invertible.');
        end
    else
        disp('Inversion not possible. Matrices are not square.');
    end
end