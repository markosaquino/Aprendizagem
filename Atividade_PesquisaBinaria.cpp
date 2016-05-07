# include <stdio.h>
# include <stdlib.h>

int buscaBinaria (int v[], int n, int x){
	
	int esq, meio, dir, i=1;
	int j =0;
	esq = 0; dir = n-1;
	
	while (esq <= dir){
		
			meio = (esq + dir)/2;
			i++;
			
			if (v[meio]== x){
			printf("\n Interacoes: %d.", i);	
			return meio;
			}
			if (v[meio] < x) esq = meio + 1;
			else dir = meio - 1;
	}

	return -1;
}
int main(){
	int a[100], k, buscando;
	printf("--------------- Armazenamento ---------------------------\n");
	printf("Digite os valores: \n");
	
	for (k=0; k <100; k++)
	{
		  a[k]= k + 10; 
		  printf("%d\n", a[k]);        
	}
	printf("Busca: ");
	scanf("\n%d", &buscando);
	
	int resultado =	buscaBinaria (a, 100, buscando);

	printf("\n Indice do vetor: %d", resultado);
	
}
