#include <stdio.h>
#include <string.h>



typedef struct {
char nome[20];
float pontuacao[3];

int ano_nasc[2];//d
float media;
int nif; //b
} Atleta;


int main() {
printf("Estruturas"); //declarar a variável
Atleta m;             //tipo nome-da-etiqueta-ou-var
Atleta tomas;
int i;               //inicializar variável
strcpy(m.nome, "Maria Gertrudes");
m.ano_nasc[1]=1998;
m.pontuacao[0]=8;    // 1º juri deu nota 8
m.pontuacao[1]=9;    // 2º juri deu nota 9
m.pontuacao[2]=8;    // 3º juri deu nota 8
m.media =
(m.pontuacao[0]+m.pontuacao[1]+m.pontuacao[2])/3;    // inicializar a var tomas
//Mostrar
//a
printf(" \nO nome do atleta e: %s", m.nome);        // print do resto dos elementos
printf("\nA pontuacao media desta atleta:%.2f",m.media );

printf("\n");
strcpy(tomas.nome, "Tomas");
tomas.ano_nasc[1]=1993;
tomas.pontuacao[0]=10;    
tomas.pontuacao[1]=10;    
tomas.pontuacao[2]=10;    
tomas.media =
(tomas.pontuacao[0]+tomas.pontuacao[1]+tomas.pontuacao[2])/3;    
tomas.nif=123456789; //b
printf("\nO nome do atleta e: %s", tomas.nome);        
printf(" \nA sua data de nascimento e: %d", tomas.ano_nasc[1]); 
printf("\nA pontuacao media desta atleta:%.2f",tomas.media );
printf("\nO nif do atleta e: %d", tomas.nif); //b


printf("\n");
strcpy(tomas.nome, "Tomas");
tomas.ano_nasc[1]=1993;
   
tomas.media =
(tomas.pontuacao[0]+tomas.pontuacao[1]+tomas.pontuacao[2])/3;    
tomas.nif=123456789; //b
//c     
    printf("\n");
    for(i=1;i<4;i++){
    	printf("\nDigite a nota do jurado %d:",i);  
        scanf("%f", &tomas.pontuacao[i]);
	}
    tomas.media =
(tomas.pontuacao[0]+tomas.pontuacao[1]+tomas.pontuacao[2])/3;   
printf("\nO nome do atleta e: %s", tomas.nome);        
printf(" \nA sua data de nascimento e: %d", tomas.ano_nasc[1]); 
printf("\nA pontuacao media desta atleta:%2.2f",tomas.media );
printf("\nO nif do atleta e: %d", tomas.nif); //b


//d
printf("\n");
strcpy(tomas.nome, "Tomas");
tomas.ano_nasc[0]=7;
tomas.ano_nasc[1]=1993;
tomas.pontuacao[3];    
tomas.media =
(tomas.pontuacao[0]+tomas.pontuacao[1]+tomas.pontuacao[2])/3;    
tomas.nif=123456789; //b



    
    printf("\n");
    for(i=1;i<4;i++){
    	printf("\nDigite a nota do jurado %d:",i);  
        scanf("%f", &tomas.pontuacao[i]);
	}
     tomas.media =
(tomas.pontuacao[0]+tomas.pontuacao[1]+tomas.pontuacao[2])/3;   
printf("\nO nome do atleta e: %s", tomas.nome);        
printf(" \nA sua data de nascimento e %d de %d", tomas.ano_nasc[0],tomas.ano_nasc[1]); 
printf("\nA pontuacao media deste atleta:%2.2f",tomas.media );
printf("\nO nif do atleta e: %d", tomas.nif); //b


return 0;
}

