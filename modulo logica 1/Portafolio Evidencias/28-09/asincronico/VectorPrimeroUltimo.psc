Proceso VectorPrimeroUltimo
	Definir cont,alumnos,cont2 Como Entero;
	Definir prome,ayuda Como Real;
	Definir nombres,ayudaCa Como Caracter;
	cont <- 0; ayuda <- 0; cont2 <- 0;
	Escribir 'Digite la cantidad de alumnos';
	Leer alumnos;
	Dimension prome[alumnos];
	Dimension nombres[alumnos];
	Para cont<-0 Hasta alumnos-1 Hacer
		prome[cont] <- 0;
		nombres[cont] <- '';
		Escribir 'digite ',cont+1,' nombre que desea almacenar ';
		Leer nombres[cont];
		Escribir 'digite',cont+1,' promedio que desea almacenar';
		Leer prome[cont];
	FinPara
	Para cont<-0 Hasta alumnos-1 Hacer
		Para cont2<-0 Hasta alumnos-1 Hacer
			Si prome[cont]>prome[cont2] Entonces
				ayuda <- prome[cont];
				prome[cont] <- prome[cont2];
				prome[cont2] <- ayuda;
				ayudaCa = nombres[cont];
				nombres[cont] = nombres[cont2];
				nombres[cont2] = ayudaCa;
			FinSi
		FinPara
	FinPara
	Escribir "La lista de alumnos es:";
	Para cont<-0 Hasta alumnos-1 Hacer
		Escribir nombres[cont];
		Escribir prome[cont];
	FinPara
FinProceso
