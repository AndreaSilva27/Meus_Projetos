#include <stdio.h>
//2 g)
#define ALUNOS 15

int main (){
	//2 g)
	int notas_de_alunos[ALUNOS];
	int i=0;
	//2 h)
	int num_de_alunos[ALUNOS] = {20,11,3,5,66,70,8,55,12,26,89,54,71,31,8};	
	
	//2 f)
	for (i=0;i<ALUNOS;i++){
		notas_de_alunos[i] = 10;
	}
	//2 i)
	for (i=0;i<ALUNOS;i++){
		printf("Qual a nota do aluno %d: ", num_de_alunos[i]);
		scanf("%d", &notas_de_alunos[i]);
	}
	printf("\n");
	//2 j)
	for (i=0;i<ALUNOS;i++){
		printf("A nota do aluno %d foi %d.", num_de_alunos[i], notas_de_alunos[i]);
		printf("\n");
	}
	
}
