Proceso CompaniaViajes
	definir bus,km,personas como entero;
	definir precioPerso,total como real;
	 bus = 0; km = 0; personas = 0; precioPerso = 0; total = 0;
	Escribir "En que tipo de bus desea ir 1 2 3";
	Leer bus;
	Escribir "De cuantos kilometos van a ser el viaje";
	Leer km;
	Si bus==1 Entonces
		precioPerso = 2.0*km;
	SiNo
		Si bu==2 Entonces
			precioPerso = 2.5*km;
		SiNo
			precioPerso = 3.0*km;
		FinSi
	FinSi
	Escribir "Cuantas personas van a ir en el bus";
	Leer personas;
	Si personas>=20 Entonces
		total = precioPerso*personas;
	SiNo
		total = precioPerso*20;
	FinSi
	Escribir "El precio por persona es de:",precioPerso;
	Escribir "El costo total por el viaje seria de:",total;
FinProceso
