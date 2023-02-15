Proceso IntercambiarPosiciones
	Definir cont,vector Como Entero;
	cont <- 0;
	Dimension vector[6];
	Para cont<-0 Hasta 5 Hacer
		vector[cont] = 0;
		Escribir "digite el ",cont+1," numero";
		Leer vector[cont];
	FinPara
	Para cont<-5 Hasta 0 Hacer
		Escribir Sin Saltar ' ',vector[cont];
	FinPara
FinProceso
