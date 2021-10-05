#include <stdio.h>
// para saber se número é par
main(){
	
	int num;
	 printf("Digite um numero inteiro:");	
	 scanf("%d" ,&num);
	 num= num %2;
	 
	 if (num==0){
	 	printf("\nEste numero e par");
	 }
	    else{
	    	printf("\nEste numero e impar");
		}	
	
	
	printf("\n");
	printf("\nDigite um numero e verifique se este pode ser multiplo e divisor de 5: ");
	scanf("%d",&num);
	num= num %5;
	
	if (num==0){
		printf("\nEste numero e multiplo e divisor de 5! ");
	}
	else{
		printf("\nEste numero NAO e multiplo e divisor de 5!");
	}
return 0;	
}


