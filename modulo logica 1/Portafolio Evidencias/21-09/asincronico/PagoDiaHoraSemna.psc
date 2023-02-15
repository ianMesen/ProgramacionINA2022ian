Proceso PagoDiaHoraSemna
	Definir cont,horas,trabajadores,dias,cont2 Como Entero;
	Definir pago,pagoPersona,pagoSemanal,pagoDia Como Real;
	pagoSemanal <- 0; dias <- 0; pagoPersona <- 0; horas <- 0; pago <- 0; cont <- 0; trabajadores <- 0; cont2 <- 0; pagoDia <- 0;
	Escribir 'Cuantos trabajadores son?';
	Leer trabajadores;
	Escribir 'Cual es el pago por hora?';
	Leer pago;
	Para cont<-0+1 Hasta trabajadores Hacer
		Escribir 'Cuantos dias trabajo esta semana ';
		Leer dias;
		pagoSemanal = 0;
		Para cont2<-0+1 Hasta dias Hacer
			Escribir 'Cuantas horas trabajo ese dia';
			Leer horas;
			pagoPersona <- pago*horas;
			Escribir pagoPersona;
			pagoSemanal <- pagoSemanal+pagoPersona;
			pagoDia <- pagoDia+pagoPersona;
		FinPara
		Escribir 'A este trabajador se le pago ',pagoSemanal,' esta semana';
	FinPara
	Escribir 'La empresa pago ',pagoDia,' por todos los empreados esta semana';
FinProceso
