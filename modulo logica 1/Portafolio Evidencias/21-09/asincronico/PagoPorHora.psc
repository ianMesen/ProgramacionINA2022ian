Proceso PagoPorHora
	Definir cont,horas,trabajadores Como Entero;
	Definir pago,pagoEmpresa,pagoPersona,cant Como Real;
	pagoPersona <- 0; horas <- 0; pagoEmpresa <- 0; pago <- 0; cont <- 0; trabajadores <- 0; cant = 0;
	Escribir 'Cuantos trabajadores son?';
	Leer trabajadores;
	Escribir 'Cual es el pago por hora?';
	Leer pago;
	Para cont<-0+1 Hasta trabajadores Hacer
		Escribir 'Cuantas horas trabajo esta semana';
		Leer horas;
		pagoPersona <- pago*horas;
		cant = cant+pagoPersona;
		Escribir 'A este trabajador se le pago ',pagoPersona,' esta semana';
	FinPara
	Escribir 'La empresa pago ',cant,' por todos los empreados esta semana';
FinProceso
