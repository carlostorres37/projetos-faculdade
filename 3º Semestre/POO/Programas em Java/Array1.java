/* Arrays ou arranjos ou vetores ou matrizes são 
agrupamentos homogêneos de dados. Uma variável 
desse tipo pode armazenar uma sequência de vários 
dados que possuem um mesmo tipo. Por exemplo,
vet <- {2.1, 3.4, 4.7}
é uma variável que armazena uma sequência de três 
valores reais. Em Java, para declarar uma variável 
como um array (ou matriz) unidimensional para 
armazenar uma sequência de valores de um mesmo 
tipo:
     tipo[] nome_variável;

Para que esse array possa armazenar n valores:

     nome_variável = new tipo[tamanho];

onde tamanho é igual a n.

Para o exemplo anterior:
     double[] vet;

     vet = new double[3];

Em um array, cada valor está armazenado em uma 
determinada posição indicada por um índice.
O índice 0 indica a posição do primeiro valor, 
o índice 1 indica a posição do segundo valor, 
e assim por diante.

Para acessar um valor em uma determinada posição 
de um array usa-se:
      nome_variável[índice]
onde nome_variável é o nome do array, e índice é 
a posição do valor.

Para o exemplo anterior, se quisermos colocar o 
valor 2.1 na primeira posição, 3.4 na segunda e 
4.7 na terceira:
    vet[0] = 2.1;
    vet[1] = 3.4;
    vet[2] = 4.7;
*/

class Array1 {
    public static void main(String[] args) {
        double[] vet;

        vet = new double[3];
        vet[0] = 2.1;
        vet[1] = 3.4;
        vet[2] = 4.7;
    }
}
