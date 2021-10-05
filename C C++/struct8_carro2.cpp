#include <stdio.h>

#include <stdlib.h>

#include <string.h>

#define CARROS 15
#define ALUGADO 1
#define NAO_ALUGADO 0

//Ficha 7: 1 e 2   MUDEI COISAS NO REMOVER CARRO EM RELAÇÃO AO ANTERIOR. EU MUDAVA O CARRO ESCOLHODO LOGO, POIS NÃO CHAMAVA O ULTIMO CARRO LÁ NO MAIN, ENTÃO O 2 APARECIA, MAS JÁ 
// MODIFICADO COM CHAMAVA NA FUNÇÃO. AGORA JÁ NÃO PRECISO, NO MOSTRAR JÁ ME APARECE 1 CARRO E NO REGISTO APARECE CARRO 2 A REGISTAR
// APRENDI A MELHORAR O ANTERIOR E COLOQUEI A FUNÇÃO REGISTAR DENTRO DO REMOVER COMO COMENTÁRIO 

// estrutura usada para guardar os dados necessários para mostrar,registar, alugar, remover carros da frota
// depois aumento a struct com mais dados

typedef struct {
char nome[20];
char apelido[20];
int ano_matricula;
int estado;
int num_identificador;
char matricula[10];
int num_km;
} Carro;


// Mostra os carros registados, no caso temos somente 2 carros, só eles vão aparecer
int mostrar_frota(Carro meus_carros[],int posicao){
	int i;
	
    for(i=0;i<posicao;i++){
	    
	    printf("\n");
        printf("\nCarro:%d ",i+1);
        printf("\nNumero Id:%d ",meus_carros[i].num_identificador);
		printf("\nMatricula:%s",meus_carros[i].matricula );      
        printf("\nAno de matricula: %d" ,meus_carros[i].ano_matricula); 
        printf("\nKm:%d ",meus_carros[i].num_km);
        
        if (meus_carros[i].estado==1){
        	printf("\nEstado do carro:ALUGADO");
        	printf("\nCliente: %s %s",meus_carros[i].nome,meus_carros[i].apelido);
       	}	
        if (meus_carros[i].estado==0){
            printf("\nEstado do carro:NAO ALUGADO");
        }

    }
}

// No registo de um novo carro,assume-se que os carros novos estão sempre não alugados 
// a cada novo registo, escolho  mostrar carros para confirmar os novos registos
int registar_carro(Carro meus_carros[],int posicao){
    
	if(posicao<CARROS){
		
		printf("\nCarro:%d",posicao+1);
		printf("\nNumero Id:");
		scanf("%d",&meus_carros[posicao].num_identificador);  
		printf("\nIndique a matricula do carro:");
	    scanf("%s",meus_carros[posicao].matricula);
		printf("\nIndique o ano da matricula:");
	    scanf("%d",&meus_carros[posicao].ano_matricula);  
	    printf("\nIndique a quilometragem:");
	    scanf("%d",&meus_carros[posicao].num_km);
	    meus_carros[posicao].estado=0;
	    printf("\nEstado do carro:NAO ALUGADO");
	    printf("\n");
	    posicao++;
	}
	else{
		printf("\nNao e possivel registar novas viaturas!");
	}	
    return posicao;
    
	}

// para mostrar os carros da frota que não estão alugados
int mostrar_carro_nao(Carro meus_carros[],int posicao){
	int i;
	for(i=0;i<posicao;i++){
	    if (meus_carros[i].estado==0){
		printf("\n");
        printf("\nCarro:%d ",i+1);
        printf("\nCarro numero Id:%d ",meus_carros[i].num_identificador);
		printf("\nMatricula:%s",meus_carros[i].matricula);      
        printf("\nAno de matricula: %d" , meus_carros[i].ano_matricula); 
        printf("\nKm:%d",meus_carros[i].num_km);
        printf("\nEstado do carro:NAO ALUGADO");
        return posicao; 
		
        }
        
    }
    printf("\nSinto muito, nao ha carros disponiveis para alugar."); //Quando não tenho carros para alugar, a lista do mostrar_carro_nao está vazia, então não mostra nada
//  esta frase aparece, mas tbm aparece "Indique o numero identificador carro:"
//tentei aqui de diversas formas, tentei no alugar_carro, mas não foi.
//não consegui resolver esse bug 
    return 0;
}

// para mostrar os carros da frota que  estão alugados
int mostrar_carro_sim(Carro meus_carros[],int posicao){
	int i;
	for(i=0;i<posicao;i++){
	    if (meus_carros[i].estado==1){
		printf("\n");
        printf("\nCarro:%d ",i+1);
        printf("\nCarro numero Id:%d ",meus_carros[i].num_identificador);
		printf("\nMatricula:%s",meus_carros[i].matricula);      
        printf("\nAno de matricula: %d" , meus_carros[i].ano_matricula); 
        printf("\nKm:%d",meus_carros[i].num_km);
        printf("\nEstado do carro:ALUGADO");
        printf("\nCliente: %s %s",meus_carros[i].nome,meus_carros[i].apelido);
        return posicao; 
        }
    }
   return 0; 
}
// para remover um carro o mesmo tem que ter o estado de não alugado
// como não posso apagar os dados, faço um novo registo por cima e confiro se foi feito escolhendo a opção mostrar frota
int remover_carro(Carro meus_carros[],int posicao){
    int i;
    int remove;
    mostrar_carro_nao(meus_carros,posicao);
    printf("\n");
  	printf("\nIndique o carro que deseja remover da frota:");
	scanf("%d",&remove);
		for(i=remove;i<posicao-1;i++){	
	        meus_carros[i]=meus_carros[i+1];
	        posicao--; 
		    }
        printf("\nCarro %d removido da frota com sucesso.",posicao);   
        
        
    return posicao-1;
}


// para alugar o carro percorre o array e mostra os carros não alugados
// pede ao utilizador que digite o numero do carro que deseja, se o numero for o mesmo do carro pede o nome e apelido  
int alugar_carro(Carro meus_carros[],int posicao){
	int i;
    int num_carro;
    
    mostrar_carro_nao(meus_carros,posicao);
	printf("\n");
   	printf("\nIndique o numero identificador carro:");
	scanf("%d",&num_carro);
	for(i=0;i<posicao;i++){
		if(num_carro == meus_carros[i].num_identificador ){
            printf("\n");	
	   	    printf("\nNome:");
	        scanf("%s",meus_carros[i].nome);
	        printf("Apelido:");
	        scanf("%s",meus_carros[i].apelido);
	        printf("\nCarro:%d",posicao);
	        printf("\nNumero identificador:%d",meus_carros[i].num_identificador);
	        printf("\nMatricula:%s",meus_carros[i].matricula);
	        printf("\nAno de matricula:%d" ,meus_carros[i].ano_matricula);
	        printf("\nPossui:%d km",meus_carros[i].num_km);
	        printf("\nCliente: %s %s",meus_carros[i].nome,meus_carros[i].apelido);
			meus_carros[i].estado=1;	
	        printf("\nEstado do carro:ALUGADO");
	        return posicao;
	    }
	    
	}

    printf("\nEste numero nao existe! Sera direcionado ao menu de opcoes.");
    return posicao;
}



int entregar_carro(Carro meus_carros[],int posicao){
	int i;
	int entrega;
	int rodados;
	int prim_posicao = -1;
	mostrar_carro_sim(meus_carros,posicao);
	printf("\n");
	printf("\nIndique o numero identificador carro:");
	scanf("%d",&entrega);
	printf("\nIndique o numero de Km rodados:");
	scanf("%d",&rodados);
	for(i=0;i<posicao;i++){
		if(entrega == meus_carros[i].num_identificador ){
		printf("\n");
        printf("\nCarro:%d ",i+1);
        printf("\nNumero Id:%d ",meus_carros[i].num_identificador);
		printf("\nMatricula:%s",meus_carros[i].matricula );      
        printf("\nAno de matricula: %d" ,meus_carros[i].ano_matricula);
		meus_carros[i].num_km=meus_carros[i].num_km + rodados; 
        printf("\nKm:%d ",meus_carros[i].num_km);
		meus_carros[i].estado=0;	
	    printf("\nEstado do carro:NAO ALUGADO");
	    printf("\nCarro devolvido com sucesso!");
	    return prim_posicao++;
		}
	}
	printf("\nEste numero nao existe! Sera direcionado ao menu de opcoes.");
    return posicao;
}

// regista no ficheiro txt os carros existentes 
int registar_no_ficheiro(Carro meus_carros[],int posicao){
	FILE *fptr;
	int i;
	int resposta;
	printf("\nDeseja guardar os dados no ficheiro?\nDigite 1 para sim ou 2 para nao:");
	scanf("%d",&resposta);
	if(resposta==1){
	    fptr = fopen("frota.txt","w");
	    if(fptr==NULL){
	    	printf("Erro!");
	    	exit(1);
		}
		for(i=0;i<CARROS;i++){
			fflush(stdin);
		}
		fwrite(meus_carros,sizeof(Carro),i,fptr);
		fclose(fptr);
		printf("\nDados guardados com sucesso!");
	}
	else{
		printf("\nSera redirecionado ao menu de opcoes.Tenha um Bom dia!"); 	
	}
}
	
// faz a leitura dos carros existentes	
int ler_ficheiro(Carro meus_carros[],int posicao){
	FILE *fptr;
	int i;
	int resposta;
	printf("\nDeseja ler os dados no ficheiro?\nDigite 1 para sim ou 2 para nao:");
	scanf("%d",&resposta);
	if(resposta==1){
	    fptr = fopen("frota.txt","r");
	    if(fptr==NULL){
	    	printf("Erro!");
	    	exit(1);
		}
		for(i=0;i<posicao;i++){
			fflush(stdin);
		       
		}
		mostrar_frota(meus_carros,posicao);
		fread(meus_carros,sizeof(Carro),i,fptr);
		fclose(fptr);
		printf("\nFim da leitura");	
	}
}
	


int main() {
printf("*******************************");	
printf("\nAS Locadora de Automoveis Lda");
printf("\n*******************************"); 
int i;
int opcao;
Carro meus_carros[CARROS];  
int posicao;         
int ultimo_carro=2; 
FILE *fptr;
int resposta;  
int n;           
strcpy(meus_carros[0].nome, "Leo");
strcpy(meus_carros[0].apelido, "Mendes");
meus_carros[0].num_identificador=7;
meus_carros[0].ano_matricula=2019;
meus_carros[0].estado=1;
strcpy(meus_carros[0].matricula,"27-10-AB");
meus_carros[0].num_km=1500;

  

meus_carros[1].num_identificador=33;
meus_carros[1].ano_matricula=2019;
meus_carros[1].estado=0;
strcpy(meus_carros[1].matricula,"11-35-HI");
meus_carros[1].num_km=1100;

 


    do {
    printf("\n");	
	printf("\nEscolha uma das opcoes disponiveis:");
	printf("\n");
	printf("\n0- Ler dados");
	printf("\n1-Registar um carro em frota");
	printf("\n2-Mostrar a frota");
	printf("\n3- Remover um carro");
	printf("\n4- Alugar um carro");
	printf("\n5- Entregar um carro");
	printf("\n6- Guardar dados");
	printf("\n7- Sair");
	printf("\n");
    printf("\nDigite a opcao desejada:");
	scanf("%d", &opcao);
	 
	switch(opcao){
	  case 0:
	   ultimo_carro=ler_ficheiro(meus_carros,ultimo_carro);
	   break;	
      case 1:
       ultimo_carro=registar_carro(meus_carros,ultimo_carro);
       break;
       
      case 2:
       mostrar_frota(meus_carros,ultimo_carro);
       break;
       
      case 3:
       ultimo_carro=remover_carro(meus_carros,ultimo_carro);
       break;
       
      case 4:
       alugar_carro(meus_carros,ultimo_carro);
       break;
       
      case 5:
       ultimo_carro=entregar_carro(meus_carros,ultimo_carro);
	   break;
		
      case 6:
       ultimo_carro=registar_no_ficheiro(meus_carros,ultimo_carro);
  /*    	printf("\nDeseja guardar os dados no ficheiro?\nDigite 1 para sim ou 2 para nao:");
		scanf("%d",&resposta);
			if(resposta==1){
	    		fptr = fopen("frota.txt","w");
	    		if(fptr==NULL){
	    		printf("Erro!");
	    		exit(1);
			}
			for(i=0;i<CARROS;i++){
			fflush(stdin);
			}
			fwrite(meus_carros,sizeof(Carro),i,fptr);
			fclose(fptr);
			printf("\nDados guardados com sucesso!");
			}
			else{
			printf("\nSera redirecionado ao menu de opcoes.Tenha um Bom dia!"); 	
			}  */
        	break;
      
	  case 7:  	
       printf("\nObrigado pela preferencia.Tenha um Bom dia!");
	   break;
	       
      default :
        printf("\nOpcao invalida! Digite um numero entre  0 e 7!");
        break;
    }
      } while (opcao!=7);    
	                                             
    


return 0;
}
