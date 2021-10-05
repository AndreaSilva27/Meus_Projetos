#include <stdio.h>

// Ficha 3 Exercicio 3
#define ALUNOS 8
#define UFCD 3


main(){
	
    
//k	
    int num_aluno[ALUNOS]={1,5,8,12,16,19,28,33};
    int nota_UFCD[3][8];
//l   
    int cod_ufcd[3]= {809,810,811};
	int i;
	int n;
	
	
//m
    for(i=0;i<ALUNOS;i++){ 
        printf("\nInsira a nota do aluno numero %d na UFCD %d: ",num_aluno[i],cod_ufcd[1] ); 
        scanf("%d", &nota_UFCD[n][i]);  
    }
    for(i=0;i<ALUNOS;i++){ 
    printf("\nA nota do aluno %d na UFCD %d foi %d", num_aluno[i],cod_ufcd[1],nota_UFCD[n][i]);
}

//n
    printf("\n");
	for(i=0;i<ALUNOS;i++){ 
	     for(n=0;n<UFCD;n++){
		 
           printf("\nInsira a nota do aluno numero %d da UFCD %d: ",num_aluno[i],cod_ufcd[n] ); 
           scanf("%d", &nota_UFCD[n][i]);      

       }
    } 
    
//o   
    printf("\n");
    for(i=0;i<ALUNOS;i++){
    	 for(n=0;n<UFCD;n++){
    	 printf("\nA nota do aluno %d na UFCD %d foi %d", num_aluno[i],cod_ufcd[n],nota_UFCD[n][i]);	
		 }

    }
    
return 0;	
}
