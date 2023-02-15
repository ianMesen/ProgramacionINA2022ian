Proceso ejercicio2Problemas
	Definir precioFinal,costoA,costoTotal,acu Como Real;
	Definir pantalones,modelo,talla,cont Como Entero;
	precioFinal <- 0; pantalones <- 0; modelo <- 0; ;
	costoA <- 0; costoTotal <- 0; cont <- 1; acu <- 0;
	Escribir 'Cuantos pantalones va a vender';
	Leer pantalones;
	Escribir 'Cuanta es el costo de tela';
	Leer costoA;
	Para cont<-1 Hasta pantalones Hacer
		costoTotal <- 0;
		Escribir 'De que modelo es el pantalon';
		Escribir 'Digite 1 para A, 2 para B';
		Leer modelo;
		Si modelo==1 Entonces
			costoA <- costoA*1.80;
		SiNo
			costoA <- costoA*1.95;
		FinSi
		costoTotal <- costoA;
		Escribir costoTotal;
		Escribir 'De que talla son los pantalones ';
		Escribir '1 para talla 30 2 para talla 32 y 36';
		Leer talla;
		Si talla==2 Entonces
			costoTotal <- costoTotal*1.04;
		FinSi
		Escribir costoTotal;
		acu <- acu+costoTotal;
		Escribir acu;
	FinPara
	precioFinal <- acu*1.30;
	Escribir 'El precio Final por los pantalones es de:',precioFinal;
FinProceso
