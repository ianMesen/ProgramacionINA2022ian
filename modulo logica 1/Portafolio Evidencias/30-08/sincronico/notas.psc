Proceso notas
	Definir nota Como Entero;
	Definir resul Como Caracter;
	Escribir 'Digite la nota';
	Leer nota;
	Si nota==10 Entonces
		resul <- 'A';
	SiNo
		Si nota==9 Entonces
			resul <- 'B';
		SiNo
			Si nota==8 Entonces
				resul <- 'C';
			SiNo
				Si nota==6 O nota==7 Entonces
					resul <- 'D';
				SiNo
					Si nota<=5 Y nota>=0 Entonces
						resul <- 'F';
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'Su nota es:',resul;
FinProceso
