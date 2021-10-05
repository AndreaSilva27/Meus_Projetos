#include <stdio.h>

void escreve_linha(){
	
	printf("******\n");
}

void escreve_linha_tamanho(int tamanho){
	
	int i=0;
		
	for (i=0;i<tamanho;i++){
	printf("*");	
	}	
	
}

void escreve_linha_tamanho_com_deslocamento(int deslocamento,int tamanho){
	
	int i=0;
	
	for (i=0;i<deslocamento;i++){
		printf(" ");
	}
	
		
	for (i=0;i<tamanho;i++){
		printf("*");	
	}
		
}

void escreve_linha_tamanho_com_deslocamento_caracter(int deslocamento,int tamanho,char caracter){
	
	int i=0;
	
	for (i=0;i<deslocamento;i++){
		printf(" ");
	}	
		
	for (i=0;i<tamanho;i++){
		printf("%c", caracter);
			
	}
		
}

void desenha_bilha(){
	
	int i=0;
		
	for (i=0;i<2;i++){
		printf("\n");
		escreve_linha_tamanho_com_deslocamento(6,8);
	}
	for (i=0;i<2;i++){
		printf("\n");
		escreve_linha_tamanho_com_deslocamento(8,4);
	}
	for (i=0;i<2;i++){
		printf("\n");
		escreve_linha_tamanho_com_deslocamento(6,8);
	}
	for (i=0;i<4;i++){
		printf("\n");
		escreve_linha_tamanho_com_deslocamento(4,12);
	}
	for (i=0;i<2;i++){
		printf("\n");
		escreve_linha_tamanho_com_deslocamento(8,4);
	}
		
}

void escreve_linha_tamanho_caracter_vezes(int tamanho, char caracter, int vezes){
	
	int i=0;
	int x=0;
	
	for (x=0;x<vezes;x++){
		for (i=0;i<tamanho;i++){
			printf("%c", caracter);
		}
		printf("\n");
	}	
	
}

void desenha_bilha_escala(int escala){
	
	int i=0;
		
		for (i=0;i<escala*2;i++){
			printf("\n");
			escreve_linha_tamanho_com_deslocamento(6*escala,8*escala);
		}
		for (i=0;i<escala*2;i++){
			printf("\n");
			escreve_linha_tamanho_com_deslocamento(8*escala,4*escala);
		}
		for (i=0;i<escala*2;i++){
			printf("\n");
			escreve_linha_tamanho_com_deslocamento(6*escala,8*escala);
		}
		for (i=0;i<escala*4;i++){
			printf("\n");
			escreve_linha_tamanho_com_deslocamento(4*escala,12*escala);
		}
		for (i=0;i<escala*2;i++){
			printf("\n");
			escreve_linha_tamanho_com_deslocamento(8*escala,4*escala);
		}
		
}

int main (){

	escreve_linha();
	printf("\n");
		
	int i=0;
	int y=0;
	int x=0;

	for (i=0;i<10;i++){
		escreve_linha();
	}
	printf("\n");
	
	printf ("Qual o tamanho? ");
	scanf("%d", &x);
	printf("\n");
		
	escreve_linha_tamanho(x);
	printf("\n");
	
	i=0;
	x=0;
	
	printf ("\nQual o tamanho? ");
	scanf("%d", &x);
	printf("\n");
	
	y = x-1;
	
	for (y;y>-1;y--){
		escreve_linha_tamanho(x-y);
		printf("\n");
	}
	printf("\n");
	
	x=0;
	y=0;
	
	printf ("Qual o tamanho: ");
	scanf("%d", &x);
	printf ("Qual o deslocamento: ");
	scanf ("%d", &y);
	printf("\n");
	
	escreve_linha_tamanho_com_deslocamento(y,x);
	printf("\n\n");
	
	x=8;
	y=1;
	
	while (x>0) {		
	escreve_linha_tamanho_com_deslocamento(x,y);
	x = x-1;
	y = y+2;
	printf ("\n");
	}
	printf ("\n");
	
	x=0;
	y=0;
	char c; 
	printf ("Qual o tamanho: ");
	scanf("%d", &x);
	printf ("Qual o deslocamento: ");
	scanf ("%d", &y);
	printf("Qual o caracter: ");
	scanf(" %c", &c);
	printf ("\n");
	
	escreve_linha_tamanho_com_deslocamento_caracter(y,x,c);
    printf ("\n");
    
    desenha_bilha();
	printf("\n\n");
	
	y=0;
	x=0;
	c=' ';
	
	printf ("Qual o tamanho: ");
	scanf("%d", &y);
	printf("Qual o caracter: ");
	scanf(" %c", &c);
	printf ("Qual o numero de vezes: ");
	scanf("%d", &x);
	printf("\n");

	escreve_linha_tamanho_caracter_vezes(y,c,x);
	printf("\n");
	
	x=0;
	
	do{
		printf ("Qual a escala(>0): ");
		scanf("%d", &x);
		printf("\n");
	}while(x<1);
	
	desenha_bilha_escala(x);
	printf("\n");

return 0;

}
