Proceso piramide
	Definir i,j,vacio Como Entero;
	Definir simbolo Como Caracter;
	simbolo <- '*';
	vacio <- 10;
	Para i<-0 Hasta 9 Hacer
		Para j<-0 Hasta vacio Hacer
			Escribir ' ' Sin Saltar;
		FinPara
		vacio <- vacio-1;
		Escribir simbolo;
		simbolo <- simbolo+'**';
	FinPara
FinProceso
