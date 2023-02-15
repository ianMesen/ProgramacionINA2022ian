Proceso AhorroMesFor
	Definir cont Como Entero;
	Definir suma,ahorro Como Real;
	cont <- 1; suma <- 0; ahorro <- 0;
	Para cont<-0 Hasta 12 Hacer
		Escribir 'Cuanto es el ahorro de este mes';
		Leer ahorro;
		suma <- suma+ahorro;
		Escribir 'En el mes ',cont,' en su ahorro: ',suma;
	FinPara
	Escribir 'El ahorro total es de:',suma;
FinProceso
