Proceso tikiTaka
	Definir cont,acumulador,acumulador2,acumulador3,cantVentas Como Entero;
	Definir ventas,total3,total2,total,global Como Real;
	ventas <- 0; cont <- 0; acumulador <- 0; acumulador2 <- 0; acumulador3 <- 0; total <- 0; total2 <- 0; total3 <- 0; global <- 0;
	Escribir 'Cuantas ventas realizo el dia de hoy?';
	Leer cantVentas;
	Para cont<-0+1 Hasta cantVentas Hacer
		Escribir 'De cuanto fue la venta';
		Leer ventas;
		Si ventas>1000 Entonces
			acumulador <- acumulador+1;
			total <- total+ventas;
		SiNo
			Si ventas>=500 Y ventas<=1000 Entonces
				acumulador2 <- acumulador2+1;
				total2 <- total2+ventas;
			SiNo
				acumulador3 <- acumulador3+1;
				total3 <- total3+ventas;
			FinSi
		FinSi
		global <- global+ventas;
	FinPara
	Escribir 'La cantidad de ventas mayores a 1000 son: ',acumulador,' y el total de la categoria es: ',total;
	Escribir 'La cantidad de ventas entre 500 y 1000 son: ',acumulador2,' y el total de la categoria es: ',total2;
	Escribir 'La cantidad de ventas menores a 500 son: ',acumulador3,' y el total de la categoria es: ',total3;
	Escribir 'El total vendido es de: ',global;
FinProceso
