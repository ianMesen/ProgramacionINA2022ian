Proceso Vector10MenorMayor
	Definir cont,vector,numMayor,numMenor,acu,vector2,i Como Entero;
	cont <- 0; numMayor <- 0; numMenor <- 0; acu <- 0; i <- 0;
	Dimension vector[10];
	Dimension vector2[20];
	Para cont<-0 Hasta 9 Hacer
		vector[cont] <- 0;
		vector2[i] <- 0;
		Escribir 'digite el ',cont+1,' numero';
		Leer vector[cont];
		Si vector[cont]==1 Entonces
			vector[cont] <- numMayor;
			vector[cont] <- numMenor;
		SiNo
			Si vector[cont]>numMayor Entonces
				numMayor <- vector[cont];
			SiNo
				numMenor <- vector[cont];
			FinSi
		FinSi
	FinPara
	Para cont<-0 Hasta 9 Hacer
		i <- vector[cont];
	FinPara
	Escribir acu;
	Escribir 'El numero menor es ',numMayor;
	Escribir 'El numero mayor es:',numMenor;
FinProceso
