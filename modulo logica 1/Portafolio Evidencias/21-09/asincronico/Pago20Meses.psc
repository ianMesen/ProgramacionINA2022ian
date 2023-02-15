Proceso PagoMesFor
	Definir producto,cont,mes,total Como Entero;
	producto <- 10; cont <- 0; mes <- 1; total=0;
	Para cont<-0 Hasta 19 Hacer
		Escribir 'El pago por el mes ',mes,' es de: ',producto;
		producto <- producto*2;
		mes <- mes+1;
	FinPara
	total=total+producto;
	Escribir 'Despues de 20 meses el pago es de: ',total;
FinProceso
