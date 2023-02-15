Proceso TipoDeUva
	Definir tamanoUva,precioUva Como Real;
	Definir tipoUva,A,B Como Caracter;
	A <- 'A';
	B <- 'B';
	Escribir 'Digite el precio de la uva';
	Leer precioUva;
	Escribir 'Digite de que tipo es la uva A o B';
	Leer tipoUva;
	Escribir 'Digite el tamano de la uva 1 o 2';
	Leer tamanoUva;
	Si tipoUva=A Entonces
		Si tamanoUva=1 Y tamanoUva=2 Entonces
			precioUva <- precioUva+20;
		SiNo
			precioUva <- precioUva+30;
		FinSi
	SiNo
		Si tipoUva=B Entonces
			Si tamanoUva=1 Y tamanoUva=2 Entonces
				precioUva <- precioUva-30;
			SiNo
				precioUva <- precioUva-50;
			FinSi
		FinSi
	FinSi
	Escribir 'El precio de la uva es: ',precioUva;
FinProceso
