/* Objetos ou registros ou estruturas são 
agrupamentos heterogêneos de dados. Uma variável 
desse tipo pode armazenar uma sequência de vários 
dados que possuem tipos diferentes. Por exemplo,
bob <- {21, 1.71, 68.5, 'M', true}
é uma variável que armazena uma sequência de cinco 
valores (um inteiro, dois reais, um caractere e um
valor lógico). Em Java, um objeto é armazenado em uma 
variável cujo tipo é uma classe. No exemplo anterior, 
bob é uma variável da classe Pessoa. A classe Pessoa é 
definida da seguinte forma:

class Pessoa
{
    int idade;
    double altura, peso;
    char sexo;
    boolean solteiro;
}

onde idade, altura, peso, sexo e solteiro são os nomes 
dos campos de dados definidos na classe Pessoa.

Para definir uma classe qualquer:

class NomeDaClasse
{
    tipo1 campo1;
    tipo2 campo2;
    tipo3 campo3, campo4;
    ...
}

para declarar uma variável como uma referência para um 
objeto de uma classe:

     NomeDaClasse nome_variável;

Após a declaração dessa variável, seu valor inicial é 
null. Isto indica que a variável não está referenciando 
nenhum objeto.

Para criar um objeto dessa classe:

     nome_variável = new NomeDaClasse();

Na instrução acima a variável passou a referenciar o 
objeto criado.

Para o exemplo anterior:
     Pessoa bob;

     bob = new Pessoa();

Em um objeto, cada valor está armazenado em um campo de  
dado, e cada campo de dado possui um nome. Em bob, o 
valor 21 está armazenado no campo idade, 1.71 no campo 
altura, 68.5 no campo peso, 'M' no campo sexo e true no 
campo solteiro.

Para acessar um valor em um determinado campo de um  
objeto usa-se:
      nome_variável.campo
onde nome_variável é uma variável que referencia um 
objeto, e campo é o nome de um campo de dado.

Para o exemplo anterior, se quisermos colocar o valor 
21 no campo idade, 1.71 no campo altura, 68.5 no campo 
peso, 'M' no campo sexo e true no campo solteiro:
    bob.idade = 21;
    bob.altura = 1.71;
    bob.peso = 68.5;
    bob.sexo = 'M';
    bob.solteiro = true;
*/

class Pessoa {
    int idade;
    double altura, peso;
    char sexo;
    boolean solteiro;
}

class Objeto1 {
    public static void main(String[] args) {
        Pessoa bob;

        bob = new Pessoa();
        bob.idade = 21;
        bob.altura = 1.71;
        bob.peso = 68.5;
        bob.sexo = 'M';
        bob.solteiro = true;
    }
}
