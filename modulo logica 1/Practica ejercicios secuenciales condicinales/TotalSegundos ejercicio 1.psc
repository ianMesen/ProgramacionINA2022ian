Proceso TotalSegundos
	Definir second,acu,acu2 Como Entero;
	definir bandera como logico;
	second <- 0; acu <- 0; acu2 <- 0; ;
	bandera = falso;
	Escribir 'Digite la cantidad de segundos que desea calcular';
	Leer second;
	Mientras bandera=falso Hacer
		Si second>=3600 Entonces
			second <- second-3600;
			acu <- acu+1;
		SiNo
			Si second>=60 Y second<3600 Entonces
				second <- second-60;
				acu2 <- acu2+1;
			SiNo
				bandera = verdadero;
			FinSi
		FinSi
	FinMientras
	Escribir 'En los segundos ingresados hay ',acu,' horas ',acu2,' minutos ',second,' segundos ';
	Escribir acu,":",acu2,":",second,;
FinProceso
