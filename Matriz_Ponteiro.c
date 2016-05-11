#include <stdio.h>
#include <stdlib.h>
#define CRIADOR: Marcos Aquino
#define Algortimo para ler uma matriz e imprimir a linha que possuir o menor valor.

// Algoritmo para aprendizagem da manipulação de Matriz e ponteiro.

int main(){

   int matriz[3][3], // Matriz quadrada.
   i, j, menor, m;
   int *p = &m;

// Bloco para preencher a matriz com numeros aleatórios //
   for (i = 0; i <3; i++){
       for(j = 0; j<3; j++){

            matriz[i][j]=rand()%10+10;
			//Este IF armazena a variavel "menor", o menor valor da matriz
            if (matriz[i][j] < menor){
                menor = matriz [i][j];
                *p = i;
            }
        }

    }
// Bloco para mostrar a matriz //
    for (i = 0; i <3; i++){
       for(j = 0; j<3; j++){

        printf("%3d", matriz[i][j]);

       }
        puts("");
    }
// Bloco para mostrar a linha que contém o menor numero.
    puts("");
    printf("Linha com o menor valor ");
	for (j=0; j < 3; j++)
        printf("| %d |", matriz[m][j]);
        puts("");

}
