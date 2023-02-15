Proceso ejercicio1SueldoSemanal
	Definir salario,resta,pago2,pago3,total,final,resta2 Como Real;
	Definir hora,doble Como Entero;
	// inicializa valores
	salario <- 0; hora <- 0; resta <- 0; pago2 <- 0; pago3 <- 0; total <- 0; resta2 <- 0; final <- 0; doble <- 0;
	Escribir 'Digite las horas que trabajo esta semana';
	// si las horas trabajadas son mayores o iguales a 51 se muestra el mensaje
	Leer hora;
	Si hora>=51 Entonces
		Escribir 'Trabajo mas de 50 horas, lo cual no esta permitido';
	SiNo
		// si las horas trabajadas estan en ese rango se le calcula el doble de lo que este dentro del rango
		Escribir 'Digite el salario por hora';
		Leer salario;
		Si hora>=41 Y hora<=45 Entonces
			hora <- 40+((hora-40)*2);
		SiNo
			// si las horas trabajadas estan en ese rango se le da el tripe de lo que este dentro del rango
			Si hora>=46 Y hora<=50 Entonces
				hora = 40+10+((hora-45)*3);
			FinSi
			final <- hora*salario;
			Escribir 'Su sueldo de esta semana por sus horas trabajadas es de :',final;
		FinSi
		// se le restan las horas dobles o tripes al salirio total
		// Se calcula el pago final dependiendo de las otras trabajadas
		// se multiplica salario por doble en caso de que sea mayor de 45 las horas trabajadas
	FinSi
FinProceso
