#include <stdio.h>
#include <math.h>
#include <time.h>

//Global variables
#define order 8
#define scale 5

//system variables 
short first_op;
short second_op;                      
int i = 0;
int j = 0;
int k = 0;
int m = 0;
int augmented_matrix[order][order*2];

void end_timer(clock_t start_time)
{
	clock_t end_time = clock();
	int time_spent = end_time - start_time;
	printf("\n%d clock cycles to execute\n", time_spent);
}

double matrix_frobenius_norm(int matrix[order][order]) {
    double norm = 0.0;
    for (int i = 0; i < order; i++) {
        for (int j = 0; j < order; j++) {
            norm += matrix[i][j] * matrix[i][j];
        }
    }
    return sqrt(norm);
}

double matrix_frobenius_normInv(int matrix[order][order*2]) {
    double norm = 0.0;
    for (i = 0; i < order; i++) {
        for (j =order; j < order*2; j++) {
            norm += (matrix[i][j]/pow(2,scale)) * (matrix[i][j]/pow(2,scale));
        }
    }
    return sqrt(norm);
}

void printMatrix(){
    //print the inverse to console
    for(i = 0; i < order ; i++){ 
        for(j = order; j < order*2 ; j++){   
        printf("[%f]", (float)(augmented_matrix[i][j]/pow(2,scale)));    
        //printf("[%f]", augmented_matrix[i][j]);    
        } 
        printf("\n");  
    }
    printf("\n");
}

void gaussJordanElimination(){
    for(m = 0; m < order; m++){
        first_op = augmented_matrix[m][m];

        for(i = 0; i < order ; i++){ 
            second_op = augmented_matrix[i][m];

            if(i != m){
                for(j = 0; j < order*2 ; j++){
                    augmented_matrix[i][j] = first_op*augmented_matrix[i][j] - second_op*augmented_matrix[m][j];
                }
            }    
        } 
    }

     //DIVISION
    for(i = 0; i < order ; i++){ 

        //devide augment
        for(j = order; j < order*2 ; j++){
            if(augmented_matrix[i][i] != 0){
            augmented_matrix[i][j] = (augmented_matrix[i][j] << scale ) / augmented_matrix[i][i];
            }else{
                printf("divide by zero error");
            }
        }
        //devide original (should now be identity)
        for(j = 0; j < order ; j++){
            if(augmented_matrix[i][i] != 0){
            augmented_matrix[i][j] = (augmented_matrix[i][j] << scale ) / augmented_matrix[i][i];
            }else{
                printf("divide by zero error");
            }
        }
    }
}

int main(void) {
    clock_t start_time = clock();
    printf("\n");

    //Well conditioned Matrix (cond num ~13)
    // int matrix[8][8] = {
    //     {1, 0, 0, 0, 0, 0, 0, 2},
    //     {0, 1, 0, 0, 0, 0, 2, 0},
    //     {0, 0, 1, 0, 0, 2, 0, 0},
    //     {0, 0, 0, 1, 2, 0, 0, 0},
    //     {0, 0, 0, 2, 1, 0, 0, 0},
    //     {0, 0, 2, 0, 0, 1, 0, 0},
    //     {0, 2, 0, 0, 0, 0, 1, 0},
    //     {2, 0, 0, 0, 0, 0, 0, 1}
    // };

    //Ill conditioned matrix (cond num ~200)
    int matrix[8][8] = {
        {1, 2, 8, 0, 0, 8, 2, 2},
        {0, 1, 0, 7, 7, 0, 2, 0},
        {0, 0, 1, 9, 9, 2, 0, 0},
        {0, 0, 0, 1, 2, 0, 0, 0},
        {0, 0, 0, 2, 1, 0, 0, 0},
        {0, 0, 2, 0, 0, 1, 0, 0},
        {0, 2, 0, 0, 0, 0, 1, 0},
        {2, 0, 0, 4, 4, 4, 3, 1}
    };

    // Sets up the matrix adjacent to an identity matrix
    for(i = 0; i < order; i++){
        for(j = 0; j < order; j++){
        augmented_matrix[i][j] = matrix[i][j];
        }
    }

    for(i = 0; i < order; i++){
        for(j = order; j < order*2; j++){

            if(j == i+order){
                augmented_matrix[i][j] = 1;
            }else{
                augmented_matrix[i][j] = 0;
            }
        
        }
    }
    
	// do gaussian elimination
    gaussJordanElimination();

    printf("solution: \n");
    printMatrix();

    // end timer and print time elapsed
    end_timer(start_time);

    //calculate the condition number of the matrix
    double norm = matrix_frobenius_norm(matrix);
    double normInv = matrix_frobenius_normInv(augmented_matrix);
    double condNum = norm*normInv;
    printf("condition number of matrix: %lf\n", condNum);
    
}