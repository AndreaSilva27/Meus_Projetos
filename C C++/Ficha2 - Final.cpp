#include <stdio.h>
//D- a)
#define num_alunos 150
//D - b)
#define num_alunos2 20
#define num_alunos3 30


int main (){
	//A - a) e b)
	int i = 0;
	int Notas[15] = {13,5,12,7,10,20,15,17,18,8};
	//B - b)
	short Notas1[4] = {13,5,12,7};
	long Notas2[4] = {13,5,12,7};
	float Notas3[4] = {13,5,12,7};
	//B - c)
	char Letras[6] = {'a','b','c','d','e','f'};
	//C - a)
	int Total = 0;
	int Num = 0;
	int Media = 0;
	//C - b)
	int k = 0;
	int Notas10[k];
	int Notasmenos10[k];
	//D - a)
	int alunosvar[num_alunos];
		
	//A - c)
	for (i=10;i<15;i++){
		printf("Escreva a %dª nota: " , i+1);
		scanf("%d", &Notas[i]);	
	}	
	printf("\n");
	
	//A - d)
	for (i=0;i<15;i++){
		printf("A %dª nota foi: %d", i+1, Notas[i]);
		printf("\n");		
	}	
	printf("\n");
	
	
	//B - a)
	for (i=0;i<4;i++){
		printf("O endereço de memoria do %dº indice de int foi: %i", i+1, &Notas[i]);
		printf("\n");
	}	
	printf("\n");
	
	for (i=0;i<4;i++){
		printf("O endereço de memoria do %dº indice de short foi: %i", i+1, &Notas1[i]);
		printf("\n");
	}	
	printf("\n");
	
	for (i=0;i<4;i++){
		printf("O endereço de memoria do %dº indice de long foi: %i", i+1, &Notas2[i]);
		printf("\n");
	}	
	printf("\n");
	
	for (i=0;i<4;i++){
		printf("O endereço de memoria do %dº indice de float foi: %i", i+1, &Notas3[i]);
		printf("\n");
	}	
	printf("\n");
	
	//B - c)
	for (i=0;i<6;i++){
		printf("O %dº caracter é: %c", i+1, Letras[i]);
		printf("\n");		
	}	
	printf("\n");
	
	//B - d)
	for (i=0;i<6;i++){
		printf("O %dº endereço de memoria dos caracteres é: %i", i+1, &Letras[i]);
		printf("\n");		
	}	
	printf("\n");
	
	//C - a)	
	for (i=0;i<15;i++){
		if (Notas[i] >= 14)
		{
		Total = Total + Notas[i];
		Num++;
		}	 
	}	
	Media = (Total / Num);
	printf("A média das %d notas maiores que 13 é: %d", Num, Media);
	printf("\n");
	printf("\n");
	
	/*C - b) (isto dava para imprimir directamente, 
	mas fiz uma brincadeira entre dois arrays com array variavel :D,
	porque so me apercebi que era bem mais simples depois de ter isto quase feito.
	serviu de estudo :D)*/
	for (i=0;i<15;i++){	
		if (Notas[i] == 10)
		{
			Notas10[k] = 10;
			k++;
		}
	}
		
	for (i=0;i<k;i++){
		printf("Notas = 10: %d", Notas10[i]);
		printf("\n");	
	}
	printf("Total: %d", k);
	printf("\n");
	printf("\n");
	
	k=0;
	for (i=0;i<15;i++){
	
		if (Notas[i] < 10)
		{
			Notasmenos10[k] = Notas[i];
			k++;
		}
	}
		
	for (i=0;i<k;i++){
		printf("Notas < 10: %d", Notasmenos10[i]);
		printf("\n");
	}
	printf("Total: %d", k);
	printf("\n");
	printf("\n");
	
	//D - a)
	for (i=0;i<num_alunos;i++){
		alunosvar[i] = 10;
	}
	
	//D - b)
	for (i=0;i<num_alunos2;i++){
		alunosvar[i] = 15;
	}
	
	printf("As primeiras 30 notas dos alunos ficou: ");
	printf("\n");
	
	for (i=0;i<num_alunos3;i++){
		printf("%d", alunosvar[i]);
		printf("\n");
	}
			
}
