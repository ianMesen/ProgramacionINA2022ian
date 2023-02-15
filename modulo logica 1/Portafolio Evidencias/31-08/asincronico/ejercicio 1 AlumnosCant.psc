Proceso AlumnosCant
	Definir cont,cant,edad,suma Como Entero;
	Definir prome Como Real;
	edad <- 0;
	suma <- 0;
	prome <- 0;
	cant <- 0;
	cont <- 0;
	Escribir 'Digite la cantidad de alumnos';
	Leer cant;
	Mientras cont<cant Hacer
		Escribir 'Digite la edad de los alumnos';
		Leer edad;
		suma <- suma+edad;
		cont <- cont+1;
	FinMientras
	prome <- suma/edad;
	Escribir 'El promedio de edad es de:',prome;
FinProceso
