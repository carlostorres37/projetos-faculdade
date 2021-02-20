Professor: Ricardo Alencar

Prova escrita: 7 pts
Trabalhos Valendo: 3 pts

05/10 - A1
30/11 - A2
14/12 - A3


#### Eficiência X Realismo

**Eficiência** -> Computação gráfica mais leve para ganhar mais eficiência de processamento de imagem.

**Realismo** -> Computação gráfica mais pesada para ganhar mais realismo na textura entre outros aspectos no processamento de imagem.

**Rastreamento de Raios** -> Menos realista mais eficiente.

**ZBuffer** -> Mais realista menos eficiente.



***

##### Rio, 24/08/2017

**Frame Buffer** -> É um "cache" para otimização de display na tela

**Imagens Matriciais** -> Exemplo de onde o 0 é um espaço vazio e 1 é um espaço preenchidom através do controlador de vídeo é convertido em imagem.


***


##### Rio, 31/08/2017

### Operações e Representação Básica em 2D

Translação (Coordenadas Homogêneas)
```
[x Y 1] * [ 1   0  0 ]
          [ 0   1  0 ]
          [ Dx Dy  1 ]          
```

Escalonamento
```
[x Y 1] * [ Sx  0  0 ]
          [ 0  Sy  0 ]
          [ 0   0  1 ]          
```

Rotação
```
[x Y 1] * [ COSß  SENß  0 ]
          [-SENß  COSß  0 ]
          [    0     0  1 ]          
```



Relembrando Multiplicação de Determinante
```
Linha * Coluna:
[ 1 2 4 ] * [ 3 2 3 ]
[ 3 6 3 ]   [ 4 2 6 ]
[ 1 3 4 ]   [ 1 5 5 ]          

Fórmulas:
[ 1*3+2*4+4*1 1*2+2*2+4*5 1*3+2*6+4*5 ]
[ 3*3+6*4+3*1 3*2+6*2+3*5 3*3+6*6+3*5 ]
[ 1*3+3*4+4*1 1*2+3*2+4*5 1*3+3*6+4*5 ]

Resultado:
[ 15 26 35 ]
[ 36 33 60 ]
[ 19 28 41 ]

```


##### Exercícios:
```
1) Realize uma translação (Dx = Dy = 3), seguida de um escalonamento (Sx=Sy=2), por fim uma rotação no ângulo de 30°.
A(1,1,1)
B(1,4,1)
C(4,1,1)
D(4,4,1)

Matriz de        Matriz de        Matriz do
Translação     Escalonamento     Resultado 1    
[ 1 0 0 ]   *   [ 2 0 0 ]     =   [ 2 0 0 ]
[ 0 1 0 ]       [ 0 2 0 ]         [ 0 2 0 ]
[ 3 3 1 ]       [ 0 0 1 ]         [ 6 6 1 ]

Matriz de           Matriz de                Matriz do
Resultado 1          Rotação              Resultado Final    
[ 2 0 0 ]   *   [  0.87 0.50 0 ]    =    [  1.74 1.00 0 ]
[ 0 2 0 ]       [ -0.50 0.87 0 ]         [ -1.00 1.74 0 ]
[ 6 6 1 ]       [  0.00 0.00 1 ]         [  2.22 8.22 1 ]


A':
[1 1 1]  *  [  1.74 1.00 0 ] = [   2.96 10.96 1 ]
            [ -1.00 1.74 0 ]
            [  2.22 8.22 1 ]
B':
[1 4 1]  *  [  1.74 1.00 0 ] = [ -0.04 16.18 1 ]
            [ -1.00 1.74 0 ]
            [  2.22 8.22 1 ]
C':
[4 1 1]  *  [  1.74 1.00 0 ] = [ -8.18 13.96 1 ]
            [ -1.00 1.74 0 ]
            [  2.22 8.22 1 ]
D':
[4 4 1]  *  [  1.74 1.00 0 ] = [ -5.18 19.18 1 ]
            [ -1.00 1.74 0 ]
            [  2.22 8.22 1 ]
```
























