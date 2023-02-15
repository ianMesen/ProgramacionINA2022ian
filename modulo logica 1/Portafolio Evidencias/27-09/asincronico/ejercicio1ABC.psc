Proceso ejercicio1ABC
	Definir vectorC,suma,cont,vectorA,vectorB Como Entero;
	suma <- 0; cont <- 0; ;
	Dimension vectorC[5];
	Dimension vectorA[5];
	Dimension vectorB[5];
	Para cont<-0 Hasta 4 Hacer
		vectorA[cont] <- 0;
		vectorB[cont] <- 0;
		vectorC[cont] <- 0;
		Escribir 'digite ',cont+1,' numero que desea almacenar en el vectorA';
		Leer vectorA[cont];
		Escribir 'digite ',cont+1,' numero que desea almacenar en el vectorB';
		Leer vectorB[cont];
		suma <- vectorA[cont]+vectorB[cont];
		vectorC[cont] <- suma;
	FinPara
	Para cont<-0 Hasta 4 Hacer
		Escribir ' ',vectorC[cont] Sin Saltar;
	FinPara
FinProceso
