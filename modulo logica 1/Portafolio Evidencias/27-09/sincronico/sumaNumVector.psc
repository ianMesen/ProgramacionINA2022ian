Proceso sumaNumVector
	Definir vector,suma,cont Como Entero;
	suma <- 0; cont <- 0;
	Dimension vector[10];
	Para cont<-0 Hasta 9 Hacer
		vector[cont] = 0;
		Escribir 'digite los numeros que desea almacenar';
		Leer vector[cont];
		suma <- suma+vector[cont];
	FinPara
	Escribir 'La suma de los numeros es:',suma;
FinProceso
