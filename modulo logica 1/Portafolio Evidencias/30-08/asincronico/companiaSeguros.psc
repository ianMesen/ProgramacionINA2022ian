Proceso companiaSeguros
	Definir cuota Como Real;
	Definir tipo,eleccion Como Entero;
	tipo = 0; cuota = 0; eleccion = 0;
	Escribir 'De que tipo es su poliza cobertura amplia 1 danos a terceros 2 ';
	Leer tipo;
	Si tipo==1 Entonces
		cuota = 1200;
	SiNo
		cuota = 950;
	FinSi
	Escribir "Usted acostumbra a beber alcohol 1 si 2 no";
	Leer eleccion;
	Si eleccion==1 Entonces
		cuota = cuota*1.10;
	FinSi
	Escribir "Usted utiliza lentes cuando conduce 1 si 2 no";
	Leer eleccion;
	Si eleccion==1 Entonces
		cuota = cuota*1.05;
	FinSi
	Escribir "Usted padece de una enfermedad candiaca o diabetes 1 si 2 no";
	Leer eleccion;
	Si eleccion==1 Entonces
		cuota = cuota*1.05;
	FinSi
	Escribir "Usted tiene mas de 40 anos 1 si no 2";
	Leer eleccion;
	Si eleccion==1 Entonces
		cuota = cuota*1.20;
	SiNo
		cuota = cuota*1.10;
	FinSi
	Escribir "El total a pagar es de:",cuota;
FinProceso
