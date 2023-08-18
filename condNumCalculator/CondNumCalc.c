#include <stdio.h>
#include <math.h>

#define ROWS 8
#define COLS 8

int i = 0;
int j = 0;

double matrix_frobenius_norm(double matrix[8][8]) {
    double norm = 0.0;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            norm += matrix[i][j] * matrix[i][j];
        }
    }
    return sqrt(norm);
}

double matrix_frobenius_normInv(double matrix[8][8]) {
    double norm = 0.0;
    for (i = 0; i < 8; i++) {
        for (j =0; j < 8; j++) {
            norm += matrix[i][j] * matrix[i][j];
        }
    }
    return sqrt(norm);
}

int main() {

    //WELL CONDITIONED MATRIX ~13.2
    double matrix[ROWS][COLS] = {
       
        {1, 0, 0, 0, 0, 0, 0, 2},
        {0, 1, 0, 0, 0, 0, 2, 0},
        {0, 0, 1, 0, 0, 2, 0, 0},
        {0, 0, 0, 1, 2, 0, 0, 0},
        {0, 0, 0, 2, 1, 0, 0, 0},
        {0, 0, 2, 0, 0, 1, 0, 0},
        {0, 2, 0, 0, 0, 0, 1, 0},
        {2, 0, 0, 0, 0, 0, 0, 1}
    };
    double inverted_matrix[ROWS][COLS] = {
       
        {-0.33, 0, 0, 0, 0, 0, 0, 0.66},
        {0, -0.33, 0, 0, 0, 0, 0.66, 0},
        {0, 0, -0.33, 0, 0, 0.66, 0, 0},
        {0, 0, 0, -0.33, 0.66, 0, 0, 0},
        {0, 0, 0, 0.66, -0.33, 0, 0, 0},
        {0, 0, 0.66, 0, 0, -0.33, 0, 0},
        {0, 0.66, 0, 0, 0, 0, -0.33, 0},
        {0.66, 0, 0, 0, 0, 0, 0, -0.33}
    };

    //condition num ~200
    // double matrix[ROWS][COLS] = {
       
    //     {1, 2, 8, 0, 0, 8, 2, 2},
    //     {0, 1, 0, 7, 7, 0, 2, 0},
    //     {0, 0, 1, 9, 9, 2, 0, 0},
    //     {0, 0, 0, 1, 2, 0, 0, 0},
    //     {0, 0, 0, 2, 1, 0, 0, 0},
    //     {0, 0, 2, 0, 0, 1, 0, 0},
    //     {0, 2, 0, 0, 0, 0, 1, 0},
    //     {2, 0, 0, 4, 4, 4, 3, 1}
    // };
    // double inverted_matrix[ROWS][COLS] = {
       
    //     {-0.33, -1.0625, -0.875, 4.3125, 4.3125, 1.75, 0.875, 0.66},
    //     {0, -0.33, 0, 0.75, 0.75, 0, 0.66, 0},
    //     {0, 0, -0.33, 1, 1, 0.66, 0, 0},
    //     {0, 0, 0, -0.33, 0.66, 0, 0, 0},
    //     {0, 0, 0, 0.66, -0.33, 0, 0, 0},
    //     {0, 0, 0.66, -2, -2, -0.33, 0, 0},
    //     {0, 0.66, 0, -1.5, -1.5, 0, -0.33, 0},
    //     {0.66, 0.1875, -0.875, 2.5635, 2.5635, 2.1875, -0.75, -0.33}
    // };
    

    double norm = matrix_frobenius_norm(matrix);
    printf("Frobenius norm of the original matrix: %lf\n", norm);
    double normInv = matrix_frobenius_normInv(inverted_matrix);
    printf("Frobenius norm of the inverted matrix: %lf\n", normInv);
    double condNum = norm*normInv;
    printf("condition number of matrix: %lf\n", condNum);
    return 0;
}