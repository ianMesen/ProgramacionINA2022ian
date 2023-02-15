Proceso sin_titulo
	Definir total,pagoCita como real;
	Definir numCitas como entero;
	numCitas = 0;
	pagoCita = 0;
	total = 0;
	Escribir "A cuantas citas a asitido";
	Leer numCitas;
	Si numCitas<=3 Entonces
		total = numCitas*200;
		pagoCita = 200;
	SiNo
		Si numCitas<=5 Entonces
			total = 600+(numCitas-3)*150;
			pagoCita = 150;
		SiNo
			Si numCitas<=8 Entonces
				total = 900+(numCitas-5)*100;
				pagoCita = 100;
			SiNo
				total = 1200+(numCitas-8)*50;
				pagoCita = 50;
			FinSi
		FinSi
	FinSi
	Escribir "El costo por el tratamiento es:",total;
	Escribir "El pago la cita es:",pagoCita;
FinProceso
