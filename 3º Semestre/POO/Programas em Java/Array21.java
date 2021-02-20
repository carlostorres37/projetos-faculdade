/*
mat <- {{2.1, 3.4},
        {0.0, 1.2},
        {1.1, 3.9}}

mat é um array (ou matriz) bidimensional.
*/

class Array21 {
    public static void main(String[] args) {
        double[][] mat;

        mat = new double[3][2];
        mat[0][0] = 2.1;
        mat[0][1] = 3.4;
        mat[1][0] = 0.0;
        mat[1][1] = 1.2;
        mat[2][0] = 1.1;
        mat[2][1] = 3.9;
    }
}
