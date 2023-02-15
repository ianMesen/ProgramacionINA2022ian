Proceso CompaniaPaqueteria
	Definir costoPaquete,pesoKilo,pesoGramo,pesoTotal Como Real;
	Definir direccion Como Entero;
	Definir bandera Como Logico;
	bandera <- falso;
	costoPaquete <- 0; pesoKilo <- 0; pesoGramo <- 0; direccion <- 0; pesoTotal <- 0;
	Escribir 'Digite a donde se dirige su paquete 1 para america del norte 2 para america central 3 para america del sur 4 europa 5 asia';
	Leer direccion;
	Escribir 'Digite el peso de su paquete en kilos';
	Leer pesoKilo;
	pesoGramo <- pesoKilo*1000;
	Si pesoGramo>5000 Entonces
		bandera <- verdadero;
		Escribir 'Su paquete excede el peso maximo de 5kg';
	SiNo
		Escribir 'El total a pagar por el envio de su paquete es de:',pesoTotal;
	FinSi
	Si direccion==1 Entonces
		pesoTotal <- pesoGramo*11;
	SiNo
		Si direccion==2 Entonces
			pesoTotal <- pesoGramo*10;
		SiNo
			Si direccion==3 Entonces
				pesoTotal <- pesoGramo*12;
			SiNo
				Si direccion==4 Entonces
					pesoTotal <- pesoGramo*24;
				SiNo
					pesoTotal <- pesoGramo*27;
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
