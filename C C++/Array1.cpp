#include <stdio.h>
//D a
#define NUM_ALUNOS 150
//D b
#define NUM_ALUNOS_A 30
#define NUM_ALUNOS_B 50
// Ficha 2 
  
// A 
main(){
	int notas [15];
	int i;
	char c [15];
	short sh [15];
	long int li [15];
	double d [15];
	float f [15];
	char letras [6]={'g','h','i','j','k','l'};
	int nota_aluno [15]={10,10,15,10,16,14,11,10,13,19,9,17,20,15,7};
	int media = 0;
	int soma = 0;
	int cont = 0;
	int num_alunos=0;
	int aluno_var[i];
	
	
	for(i=0;i<10;i++)notas[i]=10;
	
	for(i=10;i<15;i++){
		printf("Escreva a nota do %do aluno: ",i+1);
		scanf("%d", &notas[i]);
	}
	
	for(i=0;i<15;i++){
	
	printf("\nNota do %do aluno é %d", i+1,notas[i]);
	}
	
   //B a
	printf("\n");
	for (i=0;i<4;i++){
	     printf("\nO endereço da nota e %d",&notas[i]);	
		
	}
	
	// B b
	printf("\n");
	for (i=0;i<4;i++){
	     printf("\nO endereço do array de caracteres e %d",&c[i]);	
		
	}
	
	printf("\n");
	for (i=0;i<4;i++){
	     printf("\nO endereço do array de short e %d",&sh[i]);	
		
	}
	
	printf("\n");
	for (i=0;i<4;i++){
	     printf("\nO endereço do array de long int e %d",&li[i]);	
		
	}
	
	printf("\n");
	for (i=0;i<4;i++){
	     printf("\nO endereço do array de double e %d",&d[i]);	
		
	}
	printf("\n");
	for (i=0;i<4;i++){
	     printf("\nO endereço do array de float e %d",&f[i]);	
		
	}
	//B c
	printf("\n");
	for (i=0;i<6;i++){
	     printf("\nO %da letra do array de letras e %c",i+1,letras[i]);	
   //B d
	     printf("\nO %do endereco do array de letras e %i",i+1,&letras[i]);	
		
	}
	
	//C a
	for (i=0;i<15;i++){
		if (nota_aluno[i] >= 14){
			soma=(soma+nota_aluno[i]);
			cont++;
			
		}
	}
    media=(soma/cont);
    printf("\n");
    printf("\n");
    printf("\nExistem %d notas maiores ou iguais a 14 e a media e %d",cont,media);
    
    //C b
    cont=0;
    for (i=0;i<15;i++){
    	if (nota_aluno[i]== 10){
    	  cont++;	
    	}
	}
	printf("\n");
	printf("\nExistem %d notas 10 ",cont);
	
	cont=0;
	for (i=0;i<15;i++){
	    if (nota_aluno[i] < 10){
		cont++;   	
    }
}
    printf("\n");
    printf("\nExistem %d notas abaixo de 10",cont);
    
    
    //D a
    
    for (i=0;i<NUM_ALUNOS;i++){
         
    	 notas[NUM_ALUNOS]=10;
	}
	printf("\n");
    printf("\nTemos %d alunos com notas %d",NUM_ALUNOS,notas[NUM_ALUNOS]);
    //D b
    for (i=0;i<NUM_ALUNOS_A;i++){
         
    	 notas[NUM_ALUNOS_A]=16;
	}
	printf("\n");
    printf("\nTemos %d alunos com notas %d",NUM_ALUNOS_A,notas[NUM_ALUNOS_A]);
     
    
    for (i=0;i<NUM_ALUNOS_B;i++){
         
    	 notas[NUM_ALUNOS_B]=12;
	}
	printf("\n");
    printf("\nTemos %d alunos com notas %d",NUM_ALUNOS_B,notas[NUM_ALUNOS_B]);
    
   
return 0;	
}

