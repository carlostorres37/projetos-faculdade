#include <stdio.h>

main(){
	int num;
	
	printf("Digite um numero: ");
	scanf("%d", &num);
	
	printf("O seu antecessor: %d\n", num -1);
	printf("O seu dobro     : %d\n", num *2);
	printf("O seu cubo      : %d\n", num *num *num);
	printf("A sua metade    : %d\n", num /2);
}
