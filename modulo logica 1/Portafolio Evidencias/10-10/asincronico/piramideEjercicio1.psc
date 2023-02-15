Proceso piramideEjercicio1
	Definir i,j,h,n Como Entero;
	h <- 0; j <- 0; i <- 0;
	// La variable i va a ser para que se repita las 
	// 10 veces y lo muestre en cada reglon los * ya acomodados
	Para i<-9 Hasta 0 Con Paso -1 Hacer
		Para j<-0 Hasta i Hacer
			// Hago j hasta i, y no j hasta 9, para que cada vez que repita 
			// no muestre los 10 * sino solo la cantidad de veces que se a repetido i
			Escribir ' ' Sin Saltar;
		FinPara
		Para h<-i Hasta 9 Hacer
			// igualo h a i para que, i agarre la vez que va el siglo y no lo haga hasta 10
			Escribir '* ' Sin Saltar;
		FinPara
		// Agrego un espacio en blanco para que no me tire todo en una misma linea y pase a la siguiente 
		Escribir ' ';
	FinPara
FinProceso
