Proceso TheBigOld
	Definir i1,j1,i,j,kilometros,chofer,totalkilo Como Entero;
	Definir nombre Como Caracter;
	Definir suma,aux,acu Como Real;
	i <- 0; j <- 0; suma <- 0; i1 <- 0; j1 <- 0; acu <- 0; aux <- 0;
	chofer <- 0;
	Escribir 'Cuantos choferes son: ';
	Leer chofer;
	Dimension nombre[chofer];
	Dimension kilometros[chofer,6];
	Dimension totalkilo[chofer];
	Para i<-0 Hasta chofer-1 Hacer
		totalkilo[i] <- 0;
		Escribir 'Cual es el nombre del chofer ',i+1;
		Leer nombre[i];
	FinPara
	Para i<-0 Hasta chofer-1 Hacer
		suma <- 0;
		Para j<-0 Hasta 6-1 Hacer
			Escribir 'Cuantos kilometros condujo el dia ',j+1,' el chofer ',nombre[i];
			Leer kilometros[i,j];
			suma <- suma+kilometros[i,j];
			Escribir suma;
			totalkilo[i] <- suma;
		FinPara
	FinPara
	Para i<-0 Hasta chofer-1 Hacer
		Escribir nombre[i],"   ",sin saltar;
		Para j<-0 Hasta 6-1 Hacer
			Escribir kilometros[i,j],' ',Sin Saltar Sin Saltar;
		FinPara
		Escribir "  ',totalKilo[i];
	FinPara
FinProceso
