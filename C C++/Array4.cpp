
//D
#include <stdio.h>

#define ALUNOS 8


int main (){

int num_de_alunos[ALUNOS] = {20,11,3,5,66,70,8,55};
int i;
int notas0809[ALUNOS];

   for (i=0;i<ALUNOS;i++){
        printf("Insira a nota do aluno %d: ", num_de_alunos[i]);
        scanf("%d", &notas0809[i]);
   }

   for (i=0;i<ALUNOS;i++){
        printf("\nA nota do aluno %d foi %d", num_de_alunos[i], notas0809[i]);
   }
}




