#include <stdio.h>

main(){
	float altura,peso,imc;
	
	printf("Informe a altura: ");
	scanf("%f", &altura);
	printf("Informe o peso: ");
	scanf("%f", &peso);
	
	imc = peso / (altura*altura);
	
	if(imc < 17)
		printf("Situação: Muito abaixo do peso!");
	else if(imc >= 17 && imc < 18.5)
		printf("Situação: Abaixo do peso!");
	else if(imc >= 18.5 && imc < 25)
		printf("Situação: Peso normal!");
	else if(imc >= 25 && imc < 30)
		printf("Situação: Acima do peso!");
	else if(imc >= 30 && imc < 35)
		printf("Situação: Obesidade I !");
	else if(imc >= 35 && imc < 40)
		printf("Situação: Obesidade II (severa)!");
	else if(imc >= 40)
		printf("Situação: Obesidade III (morbida)!");
}
