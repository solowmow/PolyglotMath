#include <iostream>
#include <vector>
using namespace std;

// Function to perform matrix addition
vector<vector<int>> matrixAddition(const vector<vector<int>>& matrix1, const vector<vector<int>>& matrix2) {
    if (matrix1.size() != matrix2.size() || matrix1[0].size() != matrix2[0].size()) {
        cout << "Matrix addition not possible. Matrices have different dimensions." << endl;
        return {};
    }

    vector<vector<int>> result(matrix1.size(), vector<int>(matrix1[0].size(), 0));
    for (size_t i = 0; i < matrix1.size(); ++i) {
        for (size_t j = 0; j < matrix1[0].size(); ++j) {
            result[i][j] = matrix1[i][j] + matrix2[i][j];
        }
    }

    cout << "Addition of matrices:" << endl;
    for (const auto& row : result) {
        for (int val : row) {
            cout << val << " ";
        }
        cout << endl;
    }

    return result;
}

// Function to perform matrix multiplication
vector<vector<int>> matrixMultiplication(const vector<vector<int>>& matrix1, const vector<vector<int>>& matrix2) {
    if (matrix1[0].size() != matrix2.size()) {
        cout << "Matrix multiplication not possible. Dimensions mismatch." << endl;
        return {};
    }

    vector<vector<int>> result(matrix1.size(), vector<int>(matrix2[0].size(), 0));
    for (size_t i = 0; i < matrix1.size(); ++i) {
        for (size_t j = 0; j < matrix2[0].size(); ++j) {
            for (size_t k = 0; k < matrix1[0].size(); ++k) {
                result[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }

    cout << "Multiplication of matrices:" << endl;
    for (const auto& row : result) {
        for (int val : row) {
            cout << val << " ";
        }
        cout << endl;
    }

    return result;
}

int main() {
    // Example matrices (change as needed)
    vector<vector<int>> matrix1 = {{1, 2, 3}, {4, 5, 6}};
    vector<vector<int>> matrix2 = {{7, 8}, {9, 10}, {11, 12}};

    matrixAddition(matrix1, matrix2);
    matrixMultiplication(matrix1, matrix2);

    return 0;
}