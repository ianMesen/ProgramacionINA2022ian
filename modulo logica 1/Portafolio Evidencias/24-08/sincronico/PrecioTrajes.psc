Proceso PrecioTrajes
	Definir precio,Descuento1,Descueto2 Como Real;
	Escribir 'Digite el precio del traje que desea comprar:';
	Leer precio;
	Si precio>=2500 Entonces
		Descuento1 <- precio*0.8;
		Escribir 'EL precio del traje es ',Descuento1;
	SiNo
		Descuento1 <- precio*0.15;
		Escribir 'EL precio del traje es ',Descuento2;
	FinSi
FinProceso
