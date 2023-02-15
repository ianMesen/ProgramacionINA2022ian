Proceso ejercicio1
	Definir i,j,vector,aux,suma Como Entero;
	i <- 0; j <- 0; aux <- 0; suma = 0;
	Dimension vector[10];
	Para i<-0 Hasta 9 Hacer
		Escribir 'digite cual es el tiempo del corredor ',i+1;
		Leer vector[i];
	FinPara
	// Se ordenan los tienmos de menor a mayor 
	Para i<-0 Hasta 9 Hacer
		Para j<-0 Hasta 9 Hacer
			Si vector[i]<vector[j] Entonces
				aux <- vector[i];
				vector[i] <- vector[j];
				vector[j] <- aux;
			FinSi
		FinPara
	FinPara
	// se muestra solo los dos primeros tiempos ya ordenados
	Escribir 'El primer y segundo puesto son:  ';
	Para i<-0 Hasta 1 Hacer
		Escribir vector[i],'  ',sin saltar;
	FinPara
	Escribir "";
	Escribir "";
	// Se muestra el ultimo tiempo ya ordenado
	Escribir "El ultimo puesto es: ",sin saltar;
	Para i<-9 Hasta 9 Hacer
		Escribir vector[i];
	FinPara
	// hace la suma de el vector para sacar luego e; promedio
	Para i<-0 Hasta 9 Hacer
		suma <- suma+vector[i];
	FinPara
	// calcula el promedio
	Escribir '';
	Escribir 'El tiempo promedio que se a recorrido en la carrera es de: ',suma/10;
FinProceso
