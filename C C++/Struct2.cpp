#include <stdio.h>
#include <string.h>
#define ATLETAS 6

//B
typedef struct {
char nome[20];
float pontuacao[3];
int ano_nasc[2];
float media;
int nif; 
} Atleta;


//a
int main() {
printf("Estruturas 2"); 
Atleta meus_atletas[ATLETAS];             
//b e c
int i;               
strcpy(meus_atletas[0].nome, "Maria");
meus_atletas[0].ano_nasc[0]=2;
meus_atletas[0].ano_nasc[1]=1998;
meus_atletas[0].pontuacao[0]=8;    
meus_atletas[0].pontuacao[1]=9;    
meus_atletas[0].pontuacao[2]=8;    
meus_atletas[0].media =
(meus_atletas[0].pontuacao[0]+meus_atletas[0].pontuacao[1]+meus_atletas[0].pontuacao[2])/3;    
meus_atletas[0].nif=111222333;
printf(" \nO nome do atleta e: %s", meus_atletas[0].nome); 
printf("\nNasceu no mes %d do ano de %d",meus_atletas[0].ano_nasc[0],meus_atletas[0].ano_nasc[1]);       
printf("\nA pontuacao media desta atleta:%.2f",meus_atletas[0].media );
printf("\nO nif do atleta e: %d", meus_atletas[0].nif);


printf("\n");
strcpy(meus_atletas[1].nome, "Tomas");
meus_atletas[1].ano_nasc[0]=4;
meus_atletas[1].ano_nasc[1]=1993;
meus_atletas[1].pontuacao[0]=10;    
meus_atletas[1].pontuacao[1]=10;    
meus_atletas[1].pontuacao[2]=10;    
meus_atletas[1].media =
(meus_atletas[1].pontuacao[0]+meus_atletas[1].pontuacao[1]+meus_atletas[1].pontuacao[2])/3;    
meus_atletas[1].nif=123456789;
printf(" \nO nome do atleta e: %s", meus_atletas[1].nome); 
printf("\nNasceu no mes %d do ano de %d",meus_atletas[1].ano_nasc[0],meus_atletas[1].ano_nasc[1]);       
printf("\nA pontuacao media desta atleta:%.2f",meus_atletas[1].media );
printf("\nO nif do atleta e: %d", meus_atletas[1].nif);


//d
printf("\n");
strcpy(meus_atletas[2].nome, "Ana");
strcpy(meus_atletas[3].nome, "Pedro");
strcpy(meus_atletas[4].nome, "Daniel");
strcpy(meus_atletas[5].nome, "Joana");
meus_atletas[2].ano_nasc[0]=10;
meus_atletas[2].ano_nasc[1]=1994;
meus_atletas[3].ano_nasc[0]=8;
meus_atletas[3].ano_nasc[1]=1996;
meus_atletas[4].ano_nasc[0]=7;
meus_atletas[4].ano_nasc[1]=1999;
meus_atletas[5].ano_nasc[0]=9;
meus_atletas[5].ano_nasc[1]=1992;
    for(i=2;i<ATLETAS;i++){
    	printf(" \nO nome do atleta e: %s", meus_atletas[i].nome);  
        printf("\nNasceu no mes %d do ano de %d",meus_atletas[i].ano_nasc[0],meus_atletas[i].ano_nasc[1]);
	}
	
//e	
printf("\n");	

    for(i=2;i<ATLETAS;i++){
        meus_atletas[i].media =0;	
	}
//f  g
printf("\n");	

    for(i=0;i<ATLETAS;i++){
        printf(" \nO nome do %do atleta e: %s",i+1, meus_atletas[i].nome); 
		printf("\nNasceu no mes %d do ano de %d",meus_atletas[i].ano_nasc[0],meus_atletas[i].ano_nasc[1]); 
	}    

//h
printf("\n");	
   
    for(i=0;i<ATLETAS;i++){
    	
    	if(meus_atletas[i].media!=0){
		
    	printf(" \nO nome do %do atleta e: %s",i+1, meus_atletas[i].nome); 
	    printf("\nA pontuacao media desta atleta:%2.2f",meus_atletas[i].media ); 
	    }
	}    
    

return 0;
}
