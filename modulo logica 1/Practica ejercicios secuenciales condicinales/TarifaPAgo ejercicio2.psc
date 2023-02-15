Proceso TarifaPagoHora
	Definir tarifa,pagoHora,pago como real;
	definir horas como entero;
	pagoHora = 0; pago = 0; horas = 0;
	Escribir "A cuanto pagan la hora";
	Leer pagoHora;
	Escribir "Cuantas horas trabajo";
	Leer horas;
	Si horas>= 40 Entonces
		pago = horas*(pagoHora*1.50);
	SiNo
		pago = pagoHora*horas;
	FinSi
	Escribir "Su salario es de ",pago;
FinProceso
