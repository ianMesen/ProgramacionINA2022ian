Proceso PromeEstatura
	Definir cont,cant Como Entero;
	Definir estatura,prome,suma Como Real;
	estatura <- 0;
	suma <- 0;
	prome <- 0;
	cant <- 0;
	cont <- 0;
	Escribir 'Digite la cantidad de personas';
	Leer cant;
	Mientras cont<cant Hacer
		Escribir 'Digite la la estatura de las personas';
		Leer estatura;
		suma <- suma+estatura;
		cont <- cont+1;
	FinMientras
	prome <- suma/estatura;
	Escribir 'El promedio de estatura es de:',prome;
FinProceso
