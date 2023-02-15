Proceso sin_titulo
	Definir cant,total,tipoPago,tipo Como Entero;
	cant <- 0;
	tipo <- 0;
	total <- 0;
	tipoPago <- 0;
	Escribir 'Que tipo de hambuguesa desea comprar 1 sencilla, 2 doble, 3 triple';
	Leer tipo;
	Escribir 'Cuantas hamburguesas va a comprar';
	Leer cant;
	Si tipo==1 Entonces
		total <- cant*20;
	SiNo
		Si tipo==2 Entonces
			total <- cant*25;
		SiNo
			total <- cant*28;
		FinSi
	FinSi
	Escribir 'Digite 1 si desea pagar con efectivo y 2 tarjeta';
	Leer tipoPago;
	Si tipoPago==2 Entonces
		total <- total*1.05;
	FinSi
	Escribir 'El total de su orden es de:',total;
FinProceso
