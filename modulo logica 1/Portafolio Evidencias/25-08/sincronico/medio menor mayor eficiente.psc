Proceso sin_titulo
	Definir num1,num2,num3 Como Entero;
	Escribir 'Difite los tres numeros que desea calcular';
	Leer num1,num2,num3;
	Si num1>num2 y num1>num3 Entonces
		Escribir "El mayor es num1";
		Si num2>num3 Entonces
			Escribir "El num3 es el menor";
		SiNo
			Escribir "El num2 es el de en medio";
		FinSi
	SiNo
		Si num2>num1 y num2>num3 Entonces
			Escribir "El num2 es el mayor";
			Si num1>num3 Entonces
				Escribir "Num1 es el de medio";
			SiNo
				Escribir "num3 es el menor";
			FinSi
		SiNo
			Escribir "El num3 es el mayor";
			Si num1>num2 Entonces
				Escribir "El num2 de en medio es";
			SiNo
				Escribir "El num1 es el menor";
			FinSi
		FinSi
	FinSi
FinProceso
