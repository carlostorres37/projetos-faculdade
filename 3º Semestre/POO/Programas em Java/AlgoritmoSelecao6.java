/*
 * Algoritmo
 *      escrever("Digite um inteiro: ")
 *      ler(dia)
 *      erro <- falso
 *      trabalho <- verdadeiro
 *      se dia = 2 ou dia = 3 ou dia = 4 ou dia = 5 ou dia = 6 então
 *          escrever("Segunda a Sexta.")
 *          trabalho <- verdadeiro
 *      senão
 *          se dia = 1 então
 *              escrever("Domingo!!")
 *              trabalho <- falso
 *          senão
 *              se dia = 7 então
 *                  escrever("Sábado!")
 *                  trabalho <- falso
 *              senão
 *                  erro <- verdadeiro
 *              fim_se
 *          fim_se
 *      fim_se
 *      se não erro e trabalho então
 *          escrever("Estou trabalhando.")
 *      se não erro e não trabalho então
 *          escrever("Não estou trabalhando.")
 *      se erro então
 *          escrever("Ocorreu um erro.")
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSelecao6 {
    public static void main(String[] argumentos) {
        Scanner s;
        int dia;
        boolean trabalho, erro;

        s = new Scanner(System.in);
        System.out.print("Digite um inteiro: ");
        dia = s.nextInt();
        erro = false;
        trabalho = true;
        switch(dia)
        {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                System.out.println("Segunda a Sexta.");
                trabalho = true;
                break;
            case 1:
                System.out.println("Domingo!!");
                trabalho = false;
                break;
            case 7:
                System.out.println("Sábado!");
                trabalho = false;
                break;
            default:
                erro = true;
        }
        if(!erro && trabalho)
            System.out.println("Estou trabalhando.");
        if(!erro && !trabalho)
            System.out.println("Não estou trabalhando.");
        if(erro)
            System.out.println("Ocorreu um erro.");
    }
}
