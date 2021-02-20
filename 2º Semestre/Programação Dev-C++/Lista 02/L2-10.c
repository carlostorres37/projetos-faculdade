#include <stdio.h>

main(){
	float i;
	for(i = 10; i <=500; i++){
		printf("%.0f \t%.1f \t%.0f \t%.0f\n", i, i/2, i*2, i*3);
	}
}
