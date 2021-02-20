#include <stdio.h>

main(){
	float a,b,c,d;
	
	printf("Digite A: ");
	scanf("%f", &a);
	printf("Digite B: ");
	scanf("%f", &b);
	printf("Digite C: ");
	scanf("%f", &c);
	
	d = (b*b) - (4 * a * c);
	
	printf("Delta é igual a %f", d);
}
