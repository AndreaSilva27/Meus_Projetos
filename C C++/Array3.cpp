#include <stdio.h>
// contagem de numeros pares e impares dentro do array
main(){
	
	int numeros [15]= {2,10,14,17,26,35,42,56,47,8,62,105,22,80,5};
	int num_p=0;
	int num_i=0;
	int num_cinco;
    int i;
    
    
	//A e B
	for (i=0;i<15;i++){
		
		if (numeros[i] %2==0){
			printf("\nO numero par do array e %d",numeros[i]);
		    num_p++;
	}
		else {
			printf("\nO numero impar do array e %d",numeros[i]);
	    	num_i++;
	}
		
	}
	printf("\n");
   	printf("\nO total de numeros pares do array e %d ",num_p);
	printf("\nO total de numeros impares do array e %d \n",num_i);
	
	
	//C
	for (i=0;i<15;i++){
		
		if (numeros[i] %5==0){
			printf("\nO numero multiplo de 5 do array e %d",numeros[i]);
		    num_cinco++;
	    }
	
    }
    printf("\n");
    printf("\nO total de numeros multiplos de 5 do array e %d ",num_cinco);	
    
return 0;	
}


