Proceso Kilometros
	Definir cont,zaca,aguaCA Como Entero;
	cont <- 0; aguaCA <- 150; zaca <- 70;
	Mientras cont<40 Hacer
		aguaCA <- aguaCA-1;
		zaca <- zaca+1;
		cont <- cont+1;
		Si zaca==aguaCA Entonces
			Escribir 'Se encotrataran en el kilometro:',zaca;
		FinSi
	FinMientras
FinProceso
