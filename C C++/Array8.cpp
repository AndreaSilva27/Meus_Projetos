#include <stdio.h>

// Ficha 3 Exercicio 4
#define PATINADORES 10
#define JURI 6

main(){
	
   
//a	
    int concorrentes[PATINADORES]={11,202,38,49,52,609,70,88,95,104};
    int nota_JURI[JURI][PATINADORES];   
    int cod_juri[JURI]= {15,27,38,41,57,60};
    int media[PATINADORES];
    int med[JURI];
    int i;
	int n;
	int soma=0;
    int nmenor=0;
   
	
//b	
	for(i=0;i<3;i++){ 
	     for(n=0;n<JURI;n++){
		 
           printf("\nNota do %do jurado ao patinador numero %d: ",cod_juri[n],concorrentes[i] ); 
           scanf("%d", &nota_JURI[n][i]);      
        }
    } 
    
//c 
    printf("\n");   
    for(i=0;i<3;i++){ 
	     for(n=0;n<JURI;n++){
		 
        }
        printf("\nA nota do %do jurado ao patinador numero %d foi %d ",cod_juri[0],concorrentes[0],nota_JURI[0][0] ); 
    } 
	
//d	
    printf("\n");
    for(i=0;i<3;i++){ 
         soma=0;
	     for(n=0;n<JURI;n++){
		   printf("\nNota do %do jurado ao patinador numero %d: ",cod_juri[n],concorrentes[i] ); 
           scanf("%d", &nota_JURI[n][i]); 
		   soma= (soma + nota_JURI[n][i]);
		   
        }
        media[i]= soma/JURI;
	}
        
	printf("\n");
	for(i=0;i<3;i++){  
	printf("\nA pontuacao media do  patinador numero %d foi %d ",concorrentes[i],media[i] );
    } 	 
	
	
//e
	printf("\n");
	for(n=0;n<JURI;n++){
		soma=0;
		
		for(i=0;i<3;i++){ 
		printf("\nNota do %do jurado ao patinador numero %d: ",cod_juri[n],concorrentes[i] ); 
        scanf("%d", &nota_JURI[n][i]); 
		soma= (soma + nota_JURI[n][i]);
	    }
	
	med[n]=soma/i;
    }

	for(n=0;n<JURI;n++){
	printf("\nA pontuacao media do jurado numero %d foi %d ",cod_juri[n],med[n] );
	}
    
    for(n=1;n<JURI;n++) {
         if(med[n]<med[nmenor])
         nmenor=n;
        
            	
    }
   printf("\nO jurado %d tem de media a nota %d e e o mais severo!",cod_juri[nmenor],med[nmenor]);
    
	return 0;	
}
