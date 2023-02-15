Proceso vectorExistenciasProductos
	Definir cont,vectorA,vectorB,vectorC,resta Como Entero;
	cont <- 0; resta <- 0;
	Dimension vectorA[10];
	Dimension vectorB[10];
	Dimension vectorC[10];
	Para cont<-0 Hasta 9 Hacer
		resta <- 0;
		vectorA[cont] <- 0;
		vectorB[cont] <- 0;
		vectorC[cont] <- 0;
		Escribir 'digite la cantidad de producto ',cont+1,' que hay en stock';
		Leer vectorA[cont];
		Escribir 'digite el pedido del producto',cont+1,' ';
		Leer vectorB[cont];
		Si vectorA[cont]==vectorB[cont] Entonces
			vectorC[cont] <- vectorA[cont];
			Escribir vectorC[cont];
		SiNo
			Si vectorB[cont]>vectorA[cont] Entonces
				resta <- vectorB[cont]-vectorA[cont];
				vectorC[cont] <- resta*2;
				Escribir vectorC[cont];
			SiNo
				vectorC[cont] <- vectorB[cont];
				Escribir vectorC[cont];
			FinSi
		FinSi
	FinPara
	Escribir ' Para mantener el stock requiere comprar';
	Para cont<-0 Hasta 9 Hacer
		Escribir Sin Saltar '  ' vectorC[cont];
	FinPara
FinProceso
