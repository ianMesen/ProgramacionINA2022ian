Proceso AhorroMesDoWhile
	Definir cont Como Entero;
	Definir suma,ahorro Como Real;
	cont <- 1; suma <- 0; ahorro <- 0;
	Repetir
		Escribir 'Cuanto es el ahorro de este mes';
		Leer ahorro;
		suma <- suma+ahorro;
		cont <- cont+1;
		Escribir 'En el mes ',cont,' en su ahorro: ',suma;
	Hasta Que cont=12
	Escribir 'El ahorro total es de:',suma;
FinProceso
