#include <stdio.h>

void Conversor(){
	
	float Taxa = 1.17;
	float ValorEuro;
	float ValorDolar;

	printf("Introduza o valor em euros: ");
	scanf("%f", &ValorEuro);

	ValorDolar = ValorEuro * Taxa;

	printf("O valor em Dolares e de: %.2f" , ValorDolar);	
	
}

void Maior(){
	
	int num1;	
	int num2;
	int num3;

	printf ("Introduza o 1 numero: ");
	scanf ("%d", &num1);
	
	while (num1 < 0)
	{
		printf("\nO numero tem de ser positivo");
		printf ("\nIntroduza o 1 numero de novo: ");
		scanf ("%d", &num1);
	}
	
	printf ("Introduza o 2 numero: ");
	scanf ("%d", &num2);
	
	while (num2 < 0)
	{
		printf("\nO numero tem de ser positivo");
		printf ("\nIntroduza o 2 numero de novo: ");
		scanf ("%d", &num2);
	}
	
	printf ("Introduza o 3 numero: ");
	scanf ("%d", &num3);

	while (num3 < 0)
	{
		printf("\nO numero tem de ser positivo");
		printf ("\nIntroduza o 3 numero de novo: ");
		scanf ("%d", &num3);
	}
	
	if (num1 > num2 and num1 > num3)
	{
		printf("\nO Maior numero e: %d" , num1);
	}
	else if ((num2 > num1 and num2 > num3))
	{
		printf("\nO Maior numero e: %d" , num2);
	}
	else
	{
		printf("\nO Maior numero e: %d" , num3);
	}
	
}


void Troca(){
	
	int numero1;
	int numero2;
	int troca;
	
	printf ("Introduza o 1 numero: ");
	scanf ("%d", &numero1);
	
	
	while (numero1 <= 0)
	{
		printf("\nTem de ser numerico");
		printf ("\nIntroduza o 1 numero de novo: ");
		scanf ("%d", &numero1);
	}
	
	printf ("Introduza o 2 numero: ");
	scanf ("%d", &numero2);
	
	while (numero2 <= 0)
	{
		printf("\nO numero tem de ser positivo");
		printf ("\nIntroduza o 2 numero de novo: ");
		scanf ("%d", &numero2);
	}
	
	troca = numero1;
	numero1 = numero2;
	numero2 = troca;
	
	printf("\nO numero 1 agora e %d e o numero 2 agora e %d", numero1, numero2);

	
	
}


int main() { 

int opcao;



do {
	printf("\n\n1- Conversor Moeda.");
	printf("\n2- Maior de 3 numeros.");
	printf("\n3- Troca de A para B.");
	printf("\n4- Sair.");
	printf("\nQual opção que quer: ");
	scanf("%d", &opcao);
	
	switch (opcao){
		case 1:
			Conversor();
			break;
		case 2:
			Maior();
			break;
		case 3:
			Troca();
			break;
		case 4:
			printf("\nObrigado por usar o programa!");
			break;
		default:
			printf("\nOpcao Invalida!");
			break;
	}
	
} while (opcao !=4);

return 0;  

} 
