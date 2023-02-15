Proceso Lapices
	Definir cantidadLapiz Como Entero;
	Definir precioLApiz Como Real;
	Escribir 'Digite la cantidad de lapices que desea comprar';
	Leer cantidadLapiz;
	Si cantidadLapiz>=1000 Entonces
		Escribir 'El precio por lapiz es de 85c';
		precioLApiz <- 85*cantidadLapiz;
	SiNo
		Escribir 'El precio por lapiz es de 90c';
		precioLApiz <- 90*cantidadLapiz;
		Escribir 'El total de los lapiz es:',cantidadLapiz;
	FinSi
FinProceso
