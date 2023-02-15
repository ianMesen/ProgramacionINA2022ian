Proceso VectorPositivosNEgativo
	Definir cont,vector,aux,cont2 Como Entero;
	cont <- 0; aux <- 0; cont2 = 0;
	Dimension vector[10];
	Para cont<-0 Hasta 9 Hacer
		vector[cont] <- 0;
		Escribir 'digite el ',cont+1,' numero';
		Leer vector[cont];
	FinPara
	Para cont<-0 Hasta 9 Hacer
		Para cont2<-0 Hasta 9 Hacer
			Si vector[cont]>vector[cont2] Entonces
				aux <- vector[cont];
				vector[cont] <- vector[cont2];
				vector[cont2] <- aux;
			FinSi
		FinPara
	FinPara
	Escribir "Los numeros ordenados son;";
	Para cont<-0 Hasta 9 Hacer
		Escribir vector[cont];
	FinPara
FinProceso
