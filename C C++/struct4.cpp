#include <stdio.h>
#include <string.h>
#define ALUNOS 20

//Ficha 5 
//C
typedef struct {
char nome[20];
int ano_nasc;
float media;
} Aluno;


void registar_aluno(Aluno meus_alunos[]){
	int i=0;
	int posicao=i+3;
	for(i=3;i<ALUNOS;i++){
		printf("\nIndique o nome do aluno:");
	    scanf("%s",& meus_alunos[i].nome); 
	    printf("\nIndique o ano de nascimento:");
	    scanf("%d",& meus_alunos[i].ano_nasc);  
	    printf("\nIndique a media do aluno:");
	    scanf("%f",& meus_alunos[i].media);
	    posicao++;
	    printf("\nO aluno %s esta registado sob numero %d", meus_alunos[i].nome,posicao); 
	    printf("\n");
		}
	printf("\nNao e possivel realizar novos registos!");	
	}
   


void listar_alunos(Aluno meus_alunos[]){
	int i;
    for(i=0;i<ALUNOS;i++){	
        printf("\n");
        printf("\nO nome do aluno e: %s", meus_alunos[i].nome);        
        printf(" \nO seu ano de nascimento: %d" , meus_alunos[i].ano_nasc); 
        printf("\nA sua media e:%2.2f",meus_alunos[i].media);

    }
}

void media_superior(Aluno meus_alunos[]){
	int i;
	int k=0;
	for(i=0;i<ALUNOS;i++){
       	if(meus_alunos[i].media >14){
       	   	printf("\nO aluno %s possui media superior a 14", meus_alunos[i].nome);
		    k++;    		    
		}
    }
    if(k==0){
       printf("\nNao existem medias superiores a 14!");	
	}
}

void nome_comeca_que_letra(Aluno meus_alunos[]){
	int i;
	int k=0;
	for(i=0;i<ALUNOS;i++){
       	if(meus_alunos[i].nome[0]=='A'){
       	   	printf("\nO nome do aluno %s comeca com a letra A", meus_alunos[i].nome); 
			k++;	   
		}
    }
    if(k==0){
       printf("\nNao existem alunos com nomes que comecam com a letra A!");	
	}
}

int verificar_se_aluno_existe(Aluno meus_alunos[]){
   int i;
   int k=0;
   char input_nome[20];
   printf("\nIndique o nome do aluno:");
   scanf("%s", input_nome); 
	   for(i=0;i<ALUNOS;i++){
		   if(strcmp (meus_alunos[i].nome,input_nome)==0) {
		      printf("\nA media do aluno %s e:%2.2f",meus_alunos[i].nome,meus_alunos[i].media); 
			  printf("\nIndique a media a retificar:"); 
		      scanf("%f",& meus_alunos[i].media);
		      printf("\nO aluno %s possui a nova media: %2.2f", meus_alunos[i].nome,meus_alunos[i].media);	
		      k++;
	    	}
   
       }
       if(k==0){
       registar_aluno(meus_alunos);
	}
}
 
int main() {
printf("Escola do Futuro - Nosso Menu"); 
int i;
int opcao;
Aluno meus_alunos[ALUNOS];  
int k;          
int posicao=0;               
strcpy(meus_alunos[0].nome, "Andrea");
meus_alunos[0].ano_nasc=1966;
meus_alunos[0].media=19;

strcpy(meus_alunos[1].nome, "Tiago");
meus_alunos[1].ano_nasc=1978;
meus_alunos[1].media=17;

strcpy(meus_alunos[2].nome, "Celeste");
meus_alunos[2].ano_nasc=1982;
meus_alunos[2].media=18;

 


    do {
    printf("\n");	
	printf("\nEscolha uma das opcoes disponiveis:");
	printf("\n");
	printf("\n1- Registar novo aluno: ");
	printf("\n2- Listagem de todos os alunos:");
	printf("\n3- Listagem de alunos com media superior a 14:");
	printf("\n4- Listagem dos alunos cujo o nome comeca pela letra A:");
	printf("\n5- Atribuir/Retificar Media:");
	printf("\n6- Sair:");
	printf("\n");
    printf("\nDigite a sua opcao:");
	scanf("%d", &opcao);
	 
	switch(opcao){
      case 1: 
       registar_aluno(meus_alunos);
       break;
       
      case 2:
       listar_alunos(meus_alunos);
       break;
       
      case 3:
       media_superior(meus_alunos);	
       break;
       
      case 4:
       nome_comeca_que_letra(meus_alunos);
       break;
       
      case 5:
       verificar_se_aluno_existe(meus_alunos);
	   break;
		
      case 6:
        printf("\nObrigado por utilizar os nossos servicos.Tenha um Bom dia!"); 
        break;
       
      default :
          printf("\nOpcao invalida! Digite um numero entre  1 e 6!");
          break;
    }
      } while (opcao!=6);    
	                                             
    


return 0;
}
