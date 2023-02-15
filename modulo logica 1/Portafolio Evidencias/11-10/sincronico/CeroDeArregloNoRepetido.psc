Proceso CeroDeArregloNoRepetido
	Definir matriz,num,i,j,acu,i1,j1 Como Entero;
	Definir bandera Como Logico;
	i <- 0; j <- 0; acu <- 0; num <- 0;
	Dimension matriz[4,4];
	bandera <- falso;
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			matriz[i,j]<-0;
		FinPara
	FinPara
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Repetir
				bandera <- falso;
				num <- azar(50);
				// valido si es diferente de 0
				Si num<>0 Entonces
					// valido si existe en la matriz
					Para i1<-0 Hasta 3 Hacer
						Para j1<-0 Hasta 3 Hacer
							Si matriz[i1,j1]==num Entonces
								bandera <- verdadero;
								// se pasa a 3 porque es el limite para no seguir buscando
								i1 = 3;
								j1 = 3;
							FinSi
						FinPara
					FinPara
				SiNo
					acu <- acu+1;
				FinSi
			Hasta Que bandera==falso
			// asigno valor a matriz
			matriz[i,j]<-num;
		FinPara
	FinPara
	Escribir "Su matriz es:";
	Para i1<-0 Hasta 3 Hacer
		Para j1<-0 Hasta 3 Hacer
			Escribir matriz[i1,j1],' ' Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Escribir 'La cantidad de 0 que hay en su matriz es de: ',acu;
FinProceso
