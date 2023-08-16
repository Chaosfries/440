#include <stdio.h>
#include <math.h>

//Global variables
#define scale 4

//system variables 
short first_op;
short second_op;                      
int i = 0;
int j = 0;
int augmented_matrix[8][16];

int main(void) {

    short matrix[8][8] = {
        {1, 0, 0, 0, 0, 0, 0, 2},
        {0, 1, 0, 0, 0, 0, 2, 0},
        {0, 0, 1, 0, 0, 2, 0, 0},
        {0, 0, 0, 1, 2, 0, 0, 0},
        {0, 0, 0, 2, 1, 0, 0, 0},
        {0, 0, 2, 0, 0, 1, 0, 0},
        {0, 2, 0, 0, 0, 0, 1, 0},
        {2, 0, 0, 0, 0, 0, 0, 1}
    };

    /*Sets up the matrix adjacent to an identity matrix
    Optimizations:
        -Loop Unrolling: we unroll the inner loop to expose the parallelism
                        This allows us to save on for loop operations
        -Removed "if" statement: save on operations
    */
    for(i = 0; i < 8; i++){

        augmented_matrix[i][0] = matrix[i][0];
        augmented_matrix[i][1] = matrix[i][1];
        augmented_matrix[i][2] = matrix[i][2];
        augmented_matrix[i][3] = matrix[i][3];
        augmented_matrix[i][4] = matrix[i][4];
        augmented_matrix[i][5] = matrix[i][5];
        augmented_matrix[i][6] = matrix[i][6];
        augmented_matrix[i][7] = matrix[i][7];

        augmented_matrix[i][8] = 0;
        augmented_matrix[i][9] = 0;
        augmented_matrix[i][10] = 0;
        augmented_matrix[i][11] = 0;
        augmented_matrix[i][12] = 0;
        augmented_matrix[i][13] = 0;
        augmented_matrix[i][14] = 0;
        augmented_matrix[i][15] = 0;
    }

    augmented_matrix[0][8] = 1;
    augmented_matrix[1][9] = 1;
    augmented_matrix[2][10] = 1;
    augmented_matrix[3][11] = 1;
    augmented_matrix[4][12] = 1;
    augmented_matrix[5][13] = 1;
    augmented_matrix[6][14] = 1;
    augmented_matrix[7][15] = 1;

    /* Performs Gauss Jordan Elimination pivoting
    Optimizations:
        -this used to be a function call, we can save operations by having it inline
        -Loop Unrolling: we unroll the inner loop to expose the parallelism
                        This allows us to save on for loop operations
    */ 
    for(j = 0; j < 8; j++){
        first_op = augmented_matrix[j][j];

        for(i = 0; i < 8; i++){ 
            second_op = augmented_matrix[i][j];

            if(i != j){
                augmented_matrix[i][0] = first_op*augmented_matrix[i][0] - second_op*augmented_matrix[j][0];
                augmented_matrix[i][1] = first_op*augmented_matrix[i][1] - second_op*augmented_matrix[j][1];
                augmented_matrix[i][2] = first_op*augmented_matrix[i][2] - second_op*augmented_matrix[j][2];
                augmented_matrix[i][3] = first_op*augmented_matrix[i][3] - second_op*augmented_matrix[j][3];
                augmented_matrix[i][4] = first_op*augmented_matrix[i][4] - second_op*augmented_matrix[j][4];
                augmented_matrix[i][5] = first_op*augmented_matrix[i][5] - second_op*augmented_matrix[j][5];
                augmented_matrix[i][6] = first_op*augmented_matrix[i][6] - second_op*augmented_matrix[j][6];
                augmented_matrix[i][7] = first_op*augmented_matrix[i][7] - second_op*augmented_matrix[j][7];
                augmented_matrix[i][8] = first_op*augmented_matrix[i][8] - second_op*augmented_matrix[j][8];
                augmented_matrix[i][9] = first_op*augmented_matrix[i][9] - second_op*augmented_matrix[j][9];
                augmented_matrix[i][10] = first_op*augmented_matrix[i][10] - second_op*augmented_matrix[j][10];
                augmented_matrix[i][11] = first_op*augmented_matrix[i][11] - second_op*augmented_matrix[j][11];
                augmented_matrix[i][12] = first_op*augmented_matrix[i][12] - second_op*augmented_matrix[j][12];
                augmented_matrix[i][13] = first_op*augmented_matrix[i][13] - second_op*augmented_matrix[j][13];
                augmented_matrix[i][14] = first_op*augmented_matrix[i][14] - second_op*augmented_matrix[j][14];
                augmented_matrix[i][15] = first_op*augmented_matrix[i][15] - second_op*augmented_matrix[j][15];
            }    
        } 
    }
    
    
    /* divide the augmented matrix
    Optimizations:
        -Loop Unrolling: we unroll the inner loop to expose the parallelism
                        This allows us to save on for loop operations

        - Removed unnecessary code: The code used to run on both the augment and the original, we cut the operation 
                                    count in half by only performing the operation on the augment.
        -Operator Strength Reduction: Calculate division once, then replace with multiplication                
    */
    for(i = 0; i < 8 ; i++){ 
        augmented_matrix[i][8] = (augmented_matrix[i][8] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][9] = (augmented_matrix[i][9] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][10] = (augmented_matrix[i][10] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][11] = (augmented_matrix[i][11] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][12] = (augmented_matrix[i][12] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][13] = (augmented_matrix[i][13] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][14] = (augmented_matrix[i][14] << scale )/augmented_matrix[i][i];
        augmented_matrix[i][15] = (augmented_matrix[i][15] << scale )/augmented_matrix[i][i];
    }
    
    /*print the inverse to console
    Optimizations:
        -this used to be a function call, we can save operations by having it inline
        -Loop Unrolling: we unroll the inner loop to expose the parallelism
                        This allows us to save on for loop operations
        -Operator Strength Reduction: Calculate division once, then replace with multiplication
    */
    printf("solution: \n");
    float scaleInv = 1/pow(2,scale);
    for(i = 0; i < 8 ; i++){  
        printf("[%f]", (float)(augmented_matrix[i][8]*scaleInv));
        printf("[%f]", (float)(augmented_matrix[i][9]*scaleInv));   
        printf("[%f]", (float)(augmented_matrix[i][10]*scaleInv));   
        printf("[%f]", (float)(augmented_matrix[i][11]*scaleInv));   
        printf("[%f]", (float)(augmented_matrix[i][12]*scaleInv));   
        printf("[%f]", (float)(augmented_matrix[i][13]*scaleInv));   
        printf("[%f]", (float)(augmented_matrix[i][14]*scaleInv));   
        printf("[%f]", (float)(augmented_matrix[i][15]*scaleInv));       
        printf("\n");  
    }
    printf("\n");
}