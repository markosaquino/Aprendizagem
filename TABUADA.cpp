#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int soma(int n1){
	int n, soma;
	for (n=0; n<=10; n++){	
	soma = n1 + n;

	printf("%i  +  %i = %i\n", n1, n, soma);
	}
}

int sub(int n1){
	int n, sub;
	for (n=0; n<=10; n++){	
	sub = n1 - n;

	printf("%i  -  %i = %i\n", n1, n, sub);
	}
}

int mult(int n1){
	int n, mult;
	for (n=0; n<=10; n++){	
	mult = n1 * n;

	printf("%i  x  %i = %i\n", n1, n, mult);
	}
}

int div(float n1){
	float n, div;
	for (n=1; n<=10; n++){	
	div = n1 / n;

	printf("%.0f  /  %.0f = %.2f\n", n1, n, div);
	}
}


int main()
{
	int tab, num1, sair=0;
	
	while (sair < 1){
	
	printf("---------------------------------------------------------------------------------------------------\n");
	printf("                                        BEM VINDO A TABUADA                                        \n");
	printf("---------------------------------------------------------------------------------------------------\n");
	printf("				 Digite qual tabuada voce quer: "); 
	
	

	scanf("%i", &num1);	
		printf("Digite (1): Soma\n"); 
		printf("Digite (2): Subtracao\n");
		printf("Digite (3): Multiplicacao\n");
		printf("Digite (4): Divisao\n");
		printf("Digite (5): Todos\n");
		
	printf("\nOpcao: ");
	scanf("%i", &tab);
	printf("                         \n");
	switch (tab)
	{
		
		case 1 :
			printf("Tabuada de adicao do numero %i\n", num1);
			printf("", soma(num1));
		return 0;
		case 2 :	
			printf("Tabuada de subtracao do numero %i\n", num1);
			printf("", sub(num1));
		return 0;
		case 3 :
			printf("Tabuada de multiplicacao do numero %i\n", num1);
			printf("", mult(num1));
		return 0;
		case 4 :
			printf("Tabuada de divisao do numero %i\n", num1);
			printf("", div(num1));
		return 0;
		case 5:
			printf("todas as operacoes com o numero %i\n", num1);
			printf("", soma(num1));
			printf("                         \n");
			printf("", sub(num1));
			printf("                         \n");
			printf("", mult(num1));
			printf("                         \n");
			printf("", div(num1));
		return 0;
					
		default:
			printf("opcao invalida\n");
		return 0;
			
		
	}
}
}




