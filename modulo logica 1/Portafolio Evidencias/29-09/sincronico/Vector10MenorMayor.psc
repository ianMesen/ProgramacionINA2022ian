Proceso Vector10MenorMayor
	Definir cont,vector,numMayor,numMenor Como Entero;
	cont <- 0; numMayor <- 0; numMenor <- 0;
	Dimension vector[10];
	Para cont<-0 Hasta 9 Hacer
		vector[cont] <- 0;
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
	Escribir 'El numero menor es ',numMayor;
	Escribir 'El numero mayor es:',numMenor;
FinProceso
