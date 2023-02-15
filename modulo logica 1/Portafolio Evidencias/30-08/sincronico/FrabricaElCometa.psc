Proceso FabricasElComenta
	Definir materiaPrima,costoProduccion,manoObra,gastosFabricacion,precioVenta Como Real;
	Definir claveProductos Como Entero;
	claveProductos <- 0;
	materiaPrima <- 0; costoProduccion <- 0; manoObra <- 0; gastosFabricacion <- 0; precioVenta <- 0;
	Escribir 'Digite la cantidad de materia prima';
	Leer materiaPrima;
	Escribir 'Digite la clave para el producto las cuales pueden ser 1,2,3,4,5,6';
	Leer claveProductos;
	Si clavaProductos==3 O claveProductos==4 Entonces
		manoObra <- materiaPrima*0.75;
	SiNo
		Si clavaProductos==1 O claveProductos==5 Entonces
			manoObra <- materiaPrima*0.80;
		SiNo
			manoObra <- materiaPrima*0.85;
		FinSi
	FinSi
	Si claveProducto==2 O claveProducto==5 Entonces
		gastoFabricacion <- materiaPrima*0.30;
	SiNo
		Si claveProducto==3 O claveProducto==6 Entonces
			gastoFabricacion <- materiaPrima*0.35;
		SiNo
			gastoFabricacion <- materiaPrima*0.28;
		FinSi
	FinSi
	costoProduccion <- materiaPrima+manoObra+gastoFabricacion;
	precioVenta <- costoProduccion+(costoProduccion*1.45);
	Escribir 'EL precio de venta es:',costoProducion;
FinProceso
