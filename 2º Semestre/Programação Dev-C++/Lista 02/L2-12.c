#include <stdio.h>

main(){
	// Número de alunos
	int num_alunos = 2;
		
	int aluno, bolsistas = 0, usa_biblioteca = 0, estagiario = 0;
	float hora = 0.0, hora_media = 0.0;
	char bolsa, biblioteca, estagio;
		
	for(aluno = 1; aluno <= num_alunos; aluno++){
		bolsa = biblioteca = estagio = ' ';
		hora = 0;
		
		printf("Possui bolsa (S/N): ");
		scanf(" %c", &bolsa);
		if(bolsa == 's') bolsistas++;
		
		printf("Frequenta a biblioteca (S/N): ");
		scanf(" %c", &biblioteca);
		if(biblioteca == 's') usa_biblioteca++;
		
		printf("Faz estagio (S/N): ");
		scanf(" %c", &estagio);
		if(estagio == 's') {
			estagiario++;
			printf("Horas semanais do estagio: ");
			scanf("%f", &hora);
			hora_media += hora;
		}
	}
	
	printf("Nao bolsistas                         : %d\n"  , num_alunos - bolsistas);
	printf("Percentual de bolsistas               : %d%%\n", (bolsistas*100)/num_alunos);
	printf("Percentual que usam biblioteca        : %d%%\n", (usa_biblioteca*100)/num_alunos);
	printf("Percentual que realiza estagio        : %d%%\n", (estagiario*100)/num_alunos);
	printf("Carga horaria media semanal do estagio: %.1f\n", hora_media/(float)estagiario);
}
