#include <stdio.h>

#define ALUNOS 15

//Ficha 3 Exercicio 2
main(){
	
    int notas [ALUNOS]={10,12,16,15,11,5,16,19,13,17,15,20,14,9,7};
//h    
    int num_aluno[15]={1,5,8,12,16,19,28,29,33,35,45,47,50,60,110};
	int i;
	
//g	
	for (i=0;i<15;i++){
		 
	     printf("\nA nota do %do aluno e %d",i+1,notas[i]);	
		
	}
	printf("\n");
	
//f	

	for (i=0;i<15;i++){
		 notas[i]=10;
		 
	     printf("\nA nota do %do aluno e %d",i+1,notas[i]);	
		
	}
	printf("\n");
	
//h
	for (i=0;i<15;i++){
		 
	     printf("\nO %do aluno e numero  %d",i+1,num_aluno[i]);	
		
	}
	printf("\n");
	
//i	
	for(i=0;i<15;i++){
		printf("\nEscreva a nota do aluno %d: ",num_aluno[i]);
		scanf("%d", &notas[i]);
		
	}

//j	
	for(i=0;i<15;i++){
		
		printf("\nNota do %do aluno numero %d e %d",i+1,num_aluno[i],notas[i]);
	}

	
return 0;	
}
