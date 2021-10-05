#include <stdio.h>

#define QUANTIDADE 15

int main (){
	
	//1 a)
	int nums[QUANTIDADE] = {13,15,24,28,14,96,89,10,14,7,12,31,80,45,22};
	//1 b)
	int i = 0;
	//1 c)
	int pares = 0;
	//1 d)
	int impares = 0;
	//1 e)
	int mult5 = 0;
	
	//1 b)
	for (i=0;i<QUANTIDADE;i++){
		printf("O %d numero é: %d", i+1, nums[i]);
		
		if (nums[i] % 2 == 0){
			//1 c)
			pares++;
			printf(", e neste caso é par");
		}
		else{
			//1 d)
			impares++;
		}
		//1 e)
		if (nums[i] % 5 == 0){
			mult5++;
		}
		printf("\n");
			
	}
	//1 c) e d) e e)
	printf("\n");
	printf("Neste array existem %d pares e %d impares e %d multiplos de 5.", pares, impares, mult5);
		
}
