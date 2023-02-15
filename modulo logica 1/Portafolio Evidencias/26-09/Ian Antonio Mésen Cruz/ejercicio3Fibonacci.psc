Proceso ejercicio3Fibonacci
	Definir num,cont,suma,suma2,repeti Como Entero;
	num <- 0; cont <- 0; suma <- 0; suma2 <- 1;
	Escribir 'hasta que numero quiere repetirlo';
	Leer repeti;
	Para cont<-0 Hasta repeti-1 Hacer
		Escribir num;
		suma <- num+(suma2);
		num <- suma2;
		suma2 <- suma;
	FinPara
FinProceso
