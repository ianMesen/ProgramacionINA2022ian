Proceso Arreglo100Elementos
	Definir prome,suma,estu,mayorProme Como Real;
	Definir i Como Entero;
	i <- 0; estu <- 0; suma <- 0; mayorProme <- 0;
	Dimension prome[100];
	Para i<-0 Hasta 99 Hacer
		prome[i] <- 0;
		Escribir 'De cuanto es la calificacion del ',i+1,' estudiante';
		Leer prome[i];
		suma <- suma+prome[i];
		estu <- suma/5;
	FinPara
	Escribir ' ',estu;
	Para i<-0 Hasta 99 Hacer
		Si prome[i]>estu Entonces
			 mayorProme = mayorProme+1;
		FinSi
	FinPara
	Escribir 'Los estudiantes con calificaciones mayores al promedio grupal son: ',mayorProme;
FinProceso
