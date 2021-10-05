#include <stdio.h>
#include <string.h>
#define ALUNOS 20

//Ficha 5 
//A
typedef struct {
char nome[20];
int ano_nasc;
float media;
} Aluno;



//A a b
int main() {
printf("Escola do Futuro"); 
Aluno andrea;
int i;               
strcpy(andrea.nome, "Andrea");
andrea.ano_nasc=1966;
andrea.media=19;
Aluno tiago;
strcpy(tiago.nome, "Tiago");
tiago.ano_nasc=1978;
tiago.media=17;
Aluno celeste;
strcpy(celeste.nome, "Celeste");
celeste.ano_nasc=1982;
celeste.media=18;

printf("\n");
printf("\nO nome do aluno e: %s", andrea.nome);        
printf(" \nO seu ano de nascimento: %d" , andrea.ano_nasc); 
printf("\nA sua pontuacao media:%2.2f",andrea.media );

printf("\n");
printf("\nO nome do aluno e: %s", tiago.nome);        
printf(" \nO seu ano de nascimento: %d" , tiago.ano_nasc); 
printf("\nA sua pontuacao media:%2.2f",tiago.media );

printf("\n");
printf("\nO nome do aluno e: %s", celeste.nome);        
printf(" \nO seu ano de nascimento: %d" , celeste.ano_nasc); 
printf("\nA sua pontuacao media:%2.2f",celeste.media );

//B
Aluno meus_alunos[ALUNOS];  
//a          
strcpy(meus_alunos[0].nome, "Andrea");
meus_alunos[0].ano_nasc=1966;
meus_alunos[0].media=19;

strcpy(meus_alunos[1].nome, "Tiago");
meus_alunos[1].ano_nasc=1978;
meus_alunos[1].media=17;

strcpy(meus_alunos[2].nome, "Celeste");
meus_alunos[2].ano_nasc=1982;
meus_alunos[2].media=19;

//b
    printf("\n");
    for(i=0;i<3;i++){
    	printf(" \nO nome do aluno e: %s", meus_alunos[i].nome);  
}

//c
int imenor=0;
    for(i=0;i<3;i++) {
         if(meus_alunos[i].ano_nasc<meus_alunos[imenor].ano_nasc)
         imenor=i;
        
   }
   printf("\n");
   printf("\nA aluna mais velha e %s, nascida em %d.", meus_alunos[imenor].nome,meus_alunos[imenor].ano_nasc);

return 0;
}










