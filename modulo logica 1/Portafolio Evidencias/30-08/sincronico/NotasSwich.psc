Proceso NotasSwich
	Definir nota Como Entero;
	Escribir 'Digite la nota';
	Leer nota;
	Segun nota  Hacer
		5,4,3,2,1,0:
			Escribir 'Su nota es F';
		6,7:
			Escribir 'Su nota es D';
		8:
			Escribir 'Su nota es C';
		9:
			Escribir 'Su nota es B';
		10:
			Escribir 'Su nota es A';
		De Otro Modo:
			Escribir 'La nota es invalida tiene que ser menor a 10 y mayor o igual a 0';
	FinSegun
FinProceso
