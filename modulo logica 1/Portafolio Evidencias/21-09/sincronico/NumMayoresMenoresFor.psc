Proceso NumMayoresMenoresFor
	Definir cont,menores,mayores,cant,num Como Entero;
	cont <- 0; cant <- 0; mayores <- 0; menores <- 0; num <- 0;
	Escribir 'Cuantas cantidades desea cancular';
	Leer cant;
	Para cont<-0+1 Hasta cant Hacer
		Escribir 'Cual es el numero que desea calcular';
		Leer num;
		Si num<=0 Entonces
			menores <- menores+1;
		SiNo
			mayores <- mayores+1;
		FinSi
	FinPara
	Escribir 'Tiene ',menores,' cantidades menores o iguales a 0';
	Escribir 'Tiene ',mayores,' cantidades mayores a 0';
FinProceso
