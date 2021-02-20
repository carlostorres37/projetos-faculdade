//*****************************************************
//
// PrimeiroPrograma.c
// Um programa OpenGL simples que abre uma janela GLUT
// e desenha um triângulo no centro
// 
//*****************************************************

#include <stdlib.h>
#include <GL/glut.h>

// Função callback de redesenho da janela de visualização
void Desenha(void)
{
	// Limpa a janela de visualização com a cor branca
	glClearColor(1,1,1,0);
	glClear(GL_COLOR_BUFFER_BIT);

	// Define a cor de desenho: vermelho
	glColor3f(1,0,0);

	glPointSize(10);
	/*
	* GL_POINTS -> Pontos (1 Vertex)
	* GL_TRIANGLES -> Triângulos (3 Vertex)
	* GL_LINES -> Linhas (2 Vertex))
	* GL_QUADS -> Quadrado (4 Vertex)
	*/
   glBegin(GL_QUADS); // Pontos
 
		// glVertex3f(-0.5,-0.5,0);
		// glVertex3f( 0.0, 0.5,0);
		// glVertex3f( 0.5,-0.5,0);

      // Ponto da esquerda do triângulo
		glVertex2f(-5,5);
		// Ponto superior do triângulo
		glVertex2f( -5, -5);   
		// Ponto direito do triângulo
		glVertex2f( 5,-5);
		
   	glVertex2f( 5,5);
	glEnd();
	
	//Executa os comandos OpenGL 
	glFlush();
}

// Função callback chamada para gerenciar eventos de teclas
void Teclado (unsigned char key, int x, int y)
{
	if (key == 27)
		exit(0);
}

// Função responsável por inicializar parâmetros e variáveis
void Inicializa(void)
{
	// Define a janela de visualização 2D
	glMatrixMode(GL_PROJECTION);
	gluOrtho2D(-10,10,-10,10);
	glMatrixMode(GL_MODELVIEW);
}

// Programa Principal 
int main(void)
{
	// Define do modo de operação da GLUT
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB); 
 
	// Especifica o tamanho inicial em pixels da janela GLUT
	glutInitWindowSize(400,400); 
 
	// Cria a janela passando como argumento o título da mesma
	glutCreateWindow("Primeiro Programa");
 
	// Registra a função callback de redesenho da janela de visualização
	glutDisplayFunc(Desenha);

	// Registra a função callback para tratamento das teclas ASCII
	glutKeyboardFunc (Teclado);

	// Chama a função responsável por fazer as inicializações 
	Inicializa();
 
	// Inicia o processamento e aguarda interações do usuário
	glutMainLoop();
 
	return 0;
}
