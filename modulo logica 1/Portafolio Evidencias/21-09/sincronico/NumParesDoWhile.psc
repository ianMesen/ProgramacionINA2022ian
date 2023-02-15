Proceso NumParesDoWhile
	Definir num Como Entero;
	num <- 0;
	Repetir
		Mientras num<=100 Hacer
			Escribir num,' es par';
			num <- num+2;
		FinMientras
	Hasta Que num mod 2==0
FinProceso
