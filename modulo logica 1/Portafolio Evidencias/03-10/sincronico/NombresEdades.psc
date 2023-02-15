Proceso NombresEdadesVector
	Definir cont,cont2,edad Como Entero;
	Definir ayuda Como Real;
	Definir nombres,ayudaCa Como Caracter;
	cont <- 0; ayuda <- 0;
	Dimension edad[10];
	Dimension nombres[10];
	Para cont<-0 Hasta 9 Hacer
		edad[cont] <- 0;
		nombres[cont] <- '';
		Escribir ' nombre que desea almacenar ';
		Leer nombres[cont];
		Escribir ' Digite la edad de ',nombres[cont];
		Leer edad[cont];
	FinPara
	Para cont<-0 Hasta 9 Hacer
		Si edad[cont]>ayuda Entonces
			ayuda <- edad[cont];
			ayudaCa <- nombres[cont];
		FinSi
	FinPara
	Escribir 'La persona con mayor edad es:',ayudaCa;
FinProceso
