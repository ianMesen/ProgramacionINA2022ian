Proceso ComprarZapatos
	Definir eleccion,pagina,cont,modelo Como Entero;
	Definir zapato Como Caracter;
	Definir bandera Como Logico;
	eleccion <- 0; pagina <- 0; cont <- 0; modelo <- 0;
	zapato <- ' ';
	bandera <- falso;
	Escribir 'Busqueda de zapatos por internet';
	Repetir
		Escribir 'Cual de las siguientes paginas elige';
		Escribir '1 google';
		Escribir '2 pepito88';
		Escribir '3 yahoo';
		Escribir '4 zanahoria';
		Escribir '5 apple';
		Leer pagina;
		Escribir 'Eligio ',pagina,' desea ingresar o quiere cambiar su eleccion 1 si 2 no';
		Leer eleccion;
	Hasta Que eleccion==2
	Escribir 'Digitelo que desea buscar';
	Leer zapato;
	Repetir
		Escribir 'Seleccione a cual de las siguientes tiendas desea ingresar';
		Escribir '1 Amazon';
		Escribir '2 Mercado Libre';
		Escribir '3 Nike';
		Escribir '4 Payless';
		Escribir '5 Fusion';
		Leer pagina;
		Escribir 'Eligio ',pagina,' desea ingresar o quiere cambiar su eleccion 1 si 2 no';
		Leer eleccion;
	Hasta Que eleccion==2
	Repetir
		Escribir 'Escoja entre los modelos disponibles';
		Escribir '1 zapato12';
		Escribir '2 zapato1245';
		Escribir '3 zapato1245';
		Escribir '4 zapato124545';
		Escribir '5 zapato1212';
		Leer pagina;
		Escribir 'Eligio ',pagina,' desea ingresar o quiere cambiar su eleccion 1 si 2 no';
		Leer eleccion;
	Hasta Que eleccion==2
FinProceso
