#include <stdio.h>
#include <stdlib.h>

float media(float nota1, float nota2, float nota3, float *p){	float extra;
	
	(*p) = (nota1 + nota2 + nota3)/3;
	
}

int main(){
	float a, b, c, m;
	float extra;

	scanf("%f", &a);
	scanf("%f", &b);
	scanf("%f", &c);
	scanf("%f", &extra);
	
	media(a, b, c, &m);
	
	
	printf("%f\n%f\n%f\n%f", a,b,c, m);
	printf("%f", m + extra);

}
