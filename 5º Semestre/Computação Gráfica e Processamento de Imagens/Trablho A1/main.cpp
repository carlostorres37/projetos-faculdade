#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <GL/glut.h>
#include <math.h>
#include <string>
#include <sstream>

const double PI = 3.1415926535897932384626433832795;

const int   WindowX = 600;  /* length of a side of the monitor window */
const int   WindowY = 200;  /* length of a side of the monitor window */
const float B = 200;  /* length of a side of the clipping rectangle */
const float C = 200;  /* length of a side of the square the program draws */

float playerMovX = 0;
float playerMovY = 0;

float playerRadiusX = 3.5;
float playerRadiusY = 10;

bool golSplash = false;
bool golSplashBg = true;

int leftGolCount = 0;
int rightGolCount = 0;

// Função que recebe a fonte e um texto por parâmetro para ser exibido na
// tela usando caracteres bitmap
void DesenhaTexto(void *font, char *string)
{
	// Exibe caractere a caractere
	while(*string)
		glutBitmapCharacter(GLUT_BITMAP_9_BY_15,*string++);
}

// Função que recebe a fonte e um texto por parâmetro para ser exibido na
// tela usando fonte de linhas
void DesenhaTextoStroke(void *font, char *string)
{
	// Exibe caractere a caractere
	while(*string)
		glutStrokeCharacter(GLUT_STROKE_ROMAN,*string++);
}

void myinit(void)
{
  glClearColor(0, 0, 0, 0.0); /* black background */

  glMatrixMode(GL_PROJECTION);      /* In World coordinates: */
  glLoadIdentity();                 /* position the "clipping rectangle" */
  gluOrtho2D( -B/2, B/2, -B/2, B/2);/* at -B/2, its right edge at +B/2, its bottom */
  glMatrixMode(GL_MODELVIEW);       /* edge at -B/2 and its top edge at +B/2 */
}

void Soccer_Field (void)
{
    float radiusX = 18;     // Not sure what the radius of the center circle should be?
    float radiusY = 50;

    static float RAD_DEG = 57.296;

    glBegin (GL_QUADS);
       glColor3f  (0.20, 0.60, 0.20);                           // GreenYard
       glVertex2f (-100, 100);
       glVertex2f (100, 100);
       glVertex2f (100, -100);
       glVertex2f (-100, -100);

       glColor3f  (0.8, 0.8, 0.8);
       glVertex2f (-100, 50);
       glVertex2f (-85, 50);        // Inner White Quad - Right
       glVertex2f (-85, -50);
       glVertex2f (-100, -50);

       glColor3f  (0.8, 0.8, 0.8);
       glVertex2f (85, 50);
       glVertex2f (100, 50);        // Inner White Quad - LEFT
       glVertex2f (100, -50);
       glVertex2f (85, -50);
    glEnd ();

    glColor3f (0.0, 0.0, 0.0);                                  // Change color to black

    glBegin (GL_LINES);
       glVertex2f (0, 100);
       glVertex2f (0, -100);        // Mid Line

       // Left side of the Ground
       glVertex2f (-100, 80);
       glVertex2f (-73, 80);        // Goal keeper left line
       glVertex2f (-73, 80);
       glVertex2f (-73, -80);        // Goal keeper front line
       glVertex2f (-100, -80);
       glVertex2f (-73, -80);        // Goal keeper right line

       // Right Side of the Ground
       glVertex2f (100, 80);
       glVertex2f (73, 80);        // Goal keeper left line
       glVertex2f (73, 80);
       glVertex2f (73, -80);        // Goal keeper front line
       glVertex2f (100, -80);
       glVertex2f (73, -80);        // Goal keeper right line

    glEnd ();


    glBegin (GL_LINE_LOOP); // Circle at center of field
        for(double i = 0; i < 2 * PI; i += PI / 24) //<-- Change this Value
            glVertex2f(cos(i) * radiusX, sin(i) * radiusY);
    glEnd ();

    glBegin (GL_TRIANGLE_FAN); // Circle at center of field
        for(double i = 0; i < 2 * PI; i += PI / 24) //<-- Change this Value
            glVertex2f(cos(i) * (radiusX/5), sin(i) * (radiusY/5));
    glEnd ();
}

void Soccer_Score(void){
    char tempRight[3] = { '0','0','0'};
    char tempLeft[3] = { '0','0','0'};
    sprintf(tempRight,"%d",rightGolCount);
    sprintf(tempLeft,"%d",leftGolCount);

    //glClearColor(1, 0, 0, 0);
  glPushMatrix();
    glTranslatef(-10,90,0);
    glScalef(0.05, 0.05, 0.05);
    glLineWidth(1);
    DesenhaTextoStroke(GLUT_STROKE_ROMAN, tempRight);
  glPopMatrix();

  glPushMatrix();
    glTranslatef(7,90,0);
    glScalef(0.05, 0.05, 0.05);
    glLineWidth(1);
    DesenhaTextoStroke(GLUT_STROKE_ROMAN, tempLeft);
  glPopMatrix();
}

void display( void )
{

  glClear(GL_COLOR_BUFFER_BIT);     /* clear the window */

  glMatrixMode(GL_MODELVIEW);       /* The following coordinates are expressed */
  glLoadIdentity();                 /* in terms of World coordinates */

  Soccer_Field();
  Soccer_Score();

  glColor3f  (1, 1, 0);
  glBegin (GL_TRIANGLE_FAN); // Circle at center of field
        for(double i = 0; i < 2 * PI; i += PI / 24) //<-- Change this Value
            glVertex2f(cos(i) * playerRadiusX + playerMovX, sin(i) * playerRadiusY + playerMovY);
  glEnd ();


  if(golSplash){
      if(golSplashBg)
        glClearColor(1, 0, 0, 0);
      else
        glClearColor(0, 1, 0, 0);

      glClear(GL_COLOR_BUFFER_BIT);
      glPushMatrix();
        glTranslatef(-75,0,0);
        glScalef(0.5, 0.5, 0.5);
        glLineWidth(5);
        DesenhaTextoStroke(GLUT_STROKE_ROMAN, "GOL!!!");
      glPopMatrix();

      glPushMatrix();
        glTranslatef(-75,-50,0);
        glScalef(0.1, 0.1, 0.1);
        glLineWidth(1);
        DesenhaTextoStroke(GLUT_STROKE_ROMAN, "Pressione ENTER");
      glPopMatrix();
  }

  glFlush();                        /* send all commands */
}

void Anima(int value)
{
    if((playerMovX < -88 && playerMovY > -40 && playerMovY < 40)
       ||
       playerMovX > 88 && playerMovY > -40 && playerMovY < 40)
       {
            if(playerMovX > 0)
               rightGolCount++;
            else
                leftGolCount++;

            golSplash = true;
            PlaySound(TEXT("gol.wav"), NULL, SND_FILENAME | SND_ASYNC);
            playerMovX = playerMovY = 0;
       }

    golSplashBg = !golSplashBg;

	glutPostRedisplay();
	glutTimerFunc(1,Anima, 1);
}

void SpecialTeclado (int key, int x, int y)
{
    if(key == GLUT_KEY_RIGHT && playerMovX <= 94)
        playerMovX += 2;

    if(key == GLUT_KEY_LEFT && playerMovX >= -94)
        playerMovX -= 2;

    if(key == GLUT_KEY_UP && playerMovY <= 88)
        playerMovY += 5;

    if(key == GLUT_KEY_DOWN && playerMovY >= -88)
        playerMovY -= 5;
}

void Teclado (unsigned char key, int x, int y)
{
    if(key == 27)
		exit(0);

    if(key == 13 && golSplash){
        golSplash = !golSplash;
        playerMovX = playerMovY = 0;
    }
}

int main(int argc, char** argv)
{
  glutInit(&argc,argv);
  glutInitWindowSize( WindowX, WindowY );       /* A x A pixel screen window  */

  glutInitDisplayMode( GLUT_RGB | GLUT_SINGLE);
  glutCreateWindow("My Rectangle"); /* window title                   */
  glutDisplayFunc(display);         /* tell OpenGL main loop what     */
  glutKeyboardFunc(Teclado);
  glutSpecialFunc(SpecialTeclado);
  glutTimerFunc(1, Anima, 1);
  myinit();                         /* set attributes                 */

  glutMainLoop();                   /* pass control to the main loop  */

  return 1;
}
