Proceso Chimefon
	Definir tiempoLlamada,impuesto Como Real;
	Definir diaLlamada,matutino,vespertino Como Caracter;
	vespertino <- 'vespertino';
	matutino <- 'matutino';
	tiempoLlamada <- 0;
	impuesto <- 0;
	Escribir 'En que dia realizo la llamada';
	Leer diaLlamada;
	Escribir 'Digite caunto tiempo duro su llamada';
	Leer tiempoLlamada;
	Si diaLlamada='domingo' Entonces
		Si tiempoLlamada>10 Entonces
			impuesto <- 0.50*1.03;
		SiNo
			Si tiempoLlamada>8 Entonces
				impuesto <- 0.70*1.03;
			SiNo
				Si tiempoLlamada>5 Entonces
					impuesto <- 0.80*1.03;
				SiNo
					impuesto <- 1*1.03;
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir 'En que horario esta realizando la llamada, vespertino o matutino';
		Si vespertino='vespertino' Y matutino='matutino' Entonces
			Si tiempoLlamada>10 Entonces
				impuesto <- 0.50*1.03;
			SiNo
				Si tiempoLlamada>8 Entonces
					impuesto <- 0.70*1.03;
				SiNo
					Si tiempoLlamada>5 Entonces
						impuesto <- 0.80*1.030;
					SiNo
						impuesto <- 1*1.03;
					FinSi
				FinSi
			FinSi
		SiNo
			Si tiempoLlamada>10 Entonces
				impuesto <- 0.50*1.03;
			SiNo
				Si tiempoLlamada>8 Entonces
					impuesto <- 0.70*1.03;
				SiNo
					Si tiempoLlamada>5 Entonces
						impuesto <- 0.80*1.03;
					SiNo
						impuesto <- 1*1.03;
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'tiene que pagar:',impuesto;
FinProceso
