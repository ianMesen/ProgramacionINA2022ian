Proceso NumerosMayores
	Definir num1,num2,num3 Como Entero;
	Escribir 'Digite el primer numero';
	Leer num1;
	Escribir 'Digite el segundo numero';
	Leer num2;
	Escribir 'Digite el tercer numero';
	Leer num3;
	//mayor 
	Si num1>num2 y num1>num3 Entonces
		Escribir 'El mayor numero es el primer :',num1;
	SiNo
		si num2>num3 y num2>num1
		Escribir 'El mayor numero es el segundo :',num2;
	SiNo
		Escribir 'El mayor numero es el tercero :',num3;
	FinSi
	FinSi
	//menor 
	Si num1<num2 y num1<num3 Entonces
		Escribir 'El menor numero es el primer :',num1;
	SiNo
		si num2<num3 y num2<num1
			Escribir 'El menor numero es el segundo :',num2;
	SiNo 
		Escribir 'El menor numero es el tercero :',num3;
	FinSi
	FinSi
	
	//num medio
	
FinProceso
