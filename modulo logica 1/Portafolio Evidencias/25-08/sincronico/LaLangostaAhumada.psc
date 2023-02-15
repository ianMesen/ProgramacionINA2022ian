Proceso LaLangostaAhumada
	Definir personas,precioPlato,presupuesto Como Real;
	precioPlato <- 0;
	presupuesto <- 0;
	personas <- 0;
	Escribir 'Cuantas personas personas van a comer ';
	Leer personas;
	Si personas>=200 Y personas<300 Entonces
		precioPlato <- 85;
	SiNo
		Si personas>300 Entonces
			precioPlato <- 75;
		SiNo
			precioPlato <- 95;
		FinSi
	FinSi
	Escribir 'El precio por Plato es de:',precioPlato;
FinProceso
