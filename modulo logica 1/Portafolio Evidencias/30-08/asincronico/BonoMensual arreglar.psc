Proceso BonoMensual
	Definir bonoMes,sueldo,bonoMes2 Como Real;
	Definir antiguedad,trabajado Como Entero;
	bonoMes <- 0; antiguedad <- 0; bonoMes2 <- 0; trabajado <- 0;
	Escribir 'Cuanto es su sueldo';
	Leer sueldo;
	Escribir 'Lleva mas de 2 anos trabajando 1 si 2 no';
	Leer trabajado;
	Si trabajado==1 Entonces
		Escribir 'cuantos anos lleva trabajando';
		Leer antiguedad;
		Si antiguedad>2 Y antiguedad<5 Entonces
			bonoMes <- sueldo*0.20;
		SiNo
			Si antiguedad>5 Entonces
				bonoMes <- sueldo*0.30;
			FinSi
		FinSi
	SiNo
		Si sueldo<1000 Entonces
			bonoMes2 <- sueldo*0.25;
		SiNo
			Si sueldo>1000 Y sueldo<=3500 Entonces
				bonoMes2 <- sueldo*0.15;
			SiNo
				Si sueldo>3500 Entonces
					bonoMes2 <- sueldo*0.10;
				FinSi
			FinSi
		FinSi
	FinSi
	Si bonoMes>bonoMes2 Entonces
		Escribir 'El bono por antiguedad es el mayor:',bonoMes;
	SiNo
		Escribir 'El bono  por cantidad de salario es el mayor:',bonoMes2;
	FinSi
FinProceso
