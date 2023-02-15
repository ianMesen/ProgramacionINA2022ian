Proceso VaijeDeEstudio
	Definir cobroAlu,pagoBus,cantAlumnos Como Entero;
	cobroAlu <- 0;
	pagoBus <- 0;
	cantAlumnos <- 0;
	Escribir 'Digite cuantos alumnos van a ir al viaje de estudio';
	Leer cantAlumnos;
	Si cantAlumnos>=100 Y cantAlumnos<=99 Entonces
		Escribir 'Lo que debe pagar cada alumno son: 65';
		pagoBus <- cantAlumnos*65+4000;
	SiNo
		Si cantAlumnos>=50 Y cantAlumnos<=99 Entonces
			Escribir 'Lo que debe pagar cada alumno son: 70';
			pagoBus <- cantAlumnos*70+4000;
		SiNo
			Escribir 'Lo que debe pagar cada alumno son: 95';
			pagoBus <- cantAlumnos*95+4000;
		FinSi
	FinSi
	Escribir 'El pago que se tiene que hacer a la empresa de viajes es de:',pagoBus;
FinProceso
