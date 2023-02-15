Proceso limiteTarjetas
	Definir limiteCredito,limiteNuevo Como Real;
	Definir tipo,tarjetas Como Entero;
	tipo <- 0; limiteCredito <- 0; tarjetas <- 0; limiteNuevo <- 0;
	Escribir 'Cuantas tarjetas de credito tiene';
	Leer tarjetas;
	Si tarjetas>1 Entonces
		Escribir 'Ingrese la tarjeta de tipo mayor';
		Leer tipo;
	SiNo
		Escribir 'De cual tipo es su tarjeta 1,2,3 o cualquier otro';
		Leer tipo;
	FinSi
	Escribir 'Cual es el limite de su tarjeta de credito';
	Leer limiteCredito;
	Si tipo==1 Entonces
		limiteNuevo <- limiteCredito*1.25;
	SiNo
		Si tipo==2 Entonces
			limiteNuevo <- limiteCredito*1.35;
		SiNo
			Si tipo==3 Entonces
				limiteNuevo <- limiteCredito*1.40;
			SiNo
				limiteNuevo <- limiteCredito*1.50;
			FinSi
		FinSi
	FinSi
	Escribir 'El nuevo limite es de:',limiteNuevo;
FinProceso
