Proceso ahorcado
	Definir fallos,acierto,i,cont,j Como Entero;
	Definir palabra,juego,num,letra,busqueda Como Caracter;
	Definir bandera Como Logico;
	fallos <- 0; acierto <- 0; i <- 0; cont <- 0; j <- -1;
	bandera <- falso;
	Dimension palabra[10];
	Para i<-0 Hasta 9 Hacer
		Escribir 'Digite las palabras ',i+1,' que desea guardar';
		Leer palabra[i];
	FinPara
	num <- palabra[azar(10)];
	Dimension juego[longitud(num)],busqueda[longitud(num)];
	Para i<-0 Hasta longitud(num)-1 Hacer
		juego[i] <- subcadena(num,i,i);
		busqueda[i] <- '';
		Escribir busqueda[i];
		Escribir juego[i];
	FinPara
	Escribir num;
	Escribir 'Empieza el juego';
	Repetir
		bandera <- falso;
		cont <- 0;
		j <- j+1;
		Para i<-0 Hasta longitud(num)-1 Hacer
			Escribir '_ ', Sin Saltar;
		FinPara
		Escribir '';
		Escribir 'Digite la ',j+1,' letra.';
		Leer letra;
		Para i<-0 Hasta longitud(num)-1 Hacer
			Si letra==juego[i] Entonces
				busqueda[i] <- letra;
				acierto <- acierto+1;
			SiNo
				cont <- cont+1;
			FinSi
		FinPara
		Si cont>longitud(num)-1 Entonces
			fallos <- fallos+1;
		FinSi
		Para i<-0 Hasta longitud(num)-1 Hacer
			Escribir busqueda[i],' ', Sin Saltar;
		FinPara
		Escribir '';
		Escribir 'fallos ',fallos,' cont ',cont,'    ',' aciertos ',acierto;
	Hasta Que fallos>=7 O acierto==longitud(num)
	Escribir '';
	Si fallos>=7 Entonces
		Escribir 'ahorcado';
	SiNo
		Escribir 'ganador';
	FinSi
FinProceso
