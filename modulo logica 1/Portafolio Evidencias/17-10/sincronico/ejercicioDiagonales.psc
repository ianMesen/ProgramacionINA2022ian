Proceso ejercicioDiagonalInversa
	Definir i,j,matriz Como Entero;
	Definir suma,aux,acu Como Entero;
	Definir bandera Como Logico;
	i <- 0; j <- 0; suma <- 0; acu <- 0; aux <- 0;
	Dimension matriz[5,5];
	bandera <- verdadero;
	Para i<-0 Hasta 4 Hacer
		Para j<-0 Hasta 4 Hacer
			Escribir "Digite un numero";
			Leer matriz[i,j];
		FinPara
	FinPara
	// verifico si matriz diagonal normal esta bien 
	Para i<-0 Hasta 4 Hacer
		Para j<-0 Hasta 4 Hacer
			Escribir matriz[i,j],' ', Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Escribir "aaaaaaaaaaaaaaaaaaaaaa";
	// verifico si matriz diagonal imversa esta birn
	Para i<-0 Hasta 4 Hacer
		Para j<-4 Hasta 0 Hacer
			Escribir matriz[i,j],' ', Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Para i<-0 Hasta 4 Hacer
		Para j<-4 Hasta 0 Hacer
			Si matriz[i,i]<>matriz[j,j] Entonces
				bandera <- falso;
			FinSi
		FinPara
	FinPara
	Si bandera Entonces
		Escribir 'Las diagonales son iguales';
	SiNo
		Escribir 'Las diagonales no son iguales';
	FinSi
FinProceso
