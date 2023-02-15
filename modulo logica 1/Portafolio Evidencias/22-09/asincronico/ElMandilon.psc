Proceso ElMandilon
	Definir cont2,cont3,cont4,cont5,ciudades,acu,acu2,acu3 Como Entero;
	Definir ventas Como Real;
	 cont2 <- 1; cont3 <- 1; cont4 <- 1; cont5 = 1;
	 ciudades <- 0; acu = 0; acu2 = 0; acu3 = 0;
	Escribir 'En cuantas ciudades tiene tiendas?';
	Leer ciudades;
	Para cont2<-0 Hasta cont2-1 Hacer
		Escribir "Cuidad: ",cont2;
		Escribir 'Cuantas tiendas hay en la cuidad ';
		Leer cont3;
		Para cont3<-0 Hasta cont3-1 Hacer
			Escribir "Tienda",cont3;
			Escribir 'Cuantos empleados hay en la tienda ';
			Leer cont4;
			acu2 = 0;
			Para cont4<-0 Hasta cont4-1 Hacer
				Escribir "Empleados",cont4;
				Escribir "Cuantas ventas tiene el empleado';
				Leer cont5;
				acu = 0;
				Para cont5<-0 Hasta cont5-1 Hacer
					Escribir "Ventas",cont5;
					Leer ventas;
					acu = acu+ventas;
					acu2 = acu2+ventas;
					acu3 = acu3+ventas;
				FinPara
				Escribir "La venta total del empleado es de: ",acu;
			FinPara
			Escribir "Las ventas total de la tienda es de:",acu2;
		FinPara
	FinPara
	Escribir "Las ventas totales de la region son de: ",acu3;
FinProceso
