Proceso matrizNumSinRepetirAcomodada
	Definir matriz,i,j,aux,num,j1,i1 Como Entero;
	Definir band Como Logico;
	i <- 0; j <- 0; aux <- 0; i1 <- 0; j1 <- 0;
	Dimension matriz[4,4];
	band <- falso;
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			matriz[i,j]<-0;
		FinPara
	FinPara
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			band <- falso;
			num <- azar(20);
			Para i1<-0 Hasta 3 Hacer
				Para j1<-0 Hasta 3 Hacer
					Si num==matriz[i1,j1] Entonces
						band <- verdadero;
					FinSi
				FinPara
			FinPara
			Si band Entonces
				j <- j-1;
			SiNo
				matriz[i,j]<-num;
			FinSi
		FinPara
	FinPara
	Escribir "La matriz sin acomodar es: ";
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir matriz[i,j],' ' Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Para i1<-0 Hasta 3 Hacer
				Para j1<-0 Hasta 3 Hacer
					Si matriz[i,j]<matriz[i1,j1] Entonces
						aux <- matriz[i,j];
						matriz[i,j]<-matriz[i1,j1];
						matriz[i1,j1]<-aux;
					FinSi
				FinPara
			FinPara
		FinPara
	FinPara
	Escribir 'La matriz acomodada de menor a mayor sin numeros repetidos es: ';
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir matriz[i,j],' ' Sin Saltar;
		FinPara
		Escribir '';
	FinPara
FinProceso
