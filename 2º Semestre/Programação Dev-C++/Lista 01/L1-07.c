#include <stdio.h>

main(){
	int ano;
	char sexo;
	
	printf("Informe o ano de nascimento: ");
	scanf("%d", &ano);
	
	printf("Informe o sexo (M/F): ");
	scanf(" %c", &sexo);
	
	if((sexo == 'M') && ((2015 - ano) >= 18))
		printf("Servico militar obrigatorio!");
	else
		printf("isento do servico militar");
}
