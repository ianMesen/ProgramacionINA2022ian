Proceso MatrizEmpleados
	Definir i1,j1,i,j,matriz,venta Como Entero;
	Definir suma,aux,acu Como Real;
	i <- 0; j <- 0; suma <- 0; i1 <- 0; j1 <- 0; acu <- 0; aux <- 0;
	Dimension matriz[5,5];
	Dimension venta[5];
	Para i<-0 Hasta 4 Hacer
		Para j<-0 Hasta 4 Hacer
			matriz[i,j]<-0;
		FinPara
	FinPara
	Para i<-0 Hasta 4 Hacer
		suma <- 0;
		Para j<-0 Hasta 4 Hacer
			Escribir 'Cual es la venta del empleado ',i+1,' el dia ',j+1;
			Leer matriz[i,j];
			suma <- suma+matriz[i,j];
			Escribir 'suma ',suma;
			matriz[i,j]<-suma;
			Escribir 'sumacalculada ',suma;
		FinPara
	FinPara
	Para i<-0 Hasta 4 Hacer
		venta[i] <- matriz[i,4];
		Si venta[i]>aux Entonces
			aux <- venta[i];
		FinSi
	FinPara
	Escribir 'La mayor venta fue de: ',aux;
FinProceso
