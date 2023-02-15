Proceso vectorParesImpares
	Definir cont,vectorA,acu,acu2,i,num,total Como Entero;
	cont <- 0; acu2 <- 0; acu <- 0; i <- 0; num <- 0; total <- 0;
	Escribir 'DIgite la cantidad de numeros que hay dentro del vector';
	Leer num;
	Dimension vectorA[num];
	Para cont<-0 Hasta num-1 Hacer
		vectorA[i] <- 0;
		Escribir 'Digite el ',cont+1,' numero';
		Leer vectorA[i];
		Si vectorA[i] MOD 2==0 Entonces
			acu <- acu+1;
			Escribir "El numero ,",vectorA[i]," es par";
		SiNo
			acu2 <- acu2+1;
			Escribir "EL numero, ",vectorA[i]," es par";
		FinSi
	FinPara
	Escribir 'Los numeros impares son: ',acu2;
	Escribir 'Los numeros pares son: ',acu;
FinProceso
