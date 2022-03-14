//Una empresa dedicada a la comercializaci�n de art�culos importados desea un programa que determine e imprima el precio de venta de un art�culo y 
//el monto que debe cancelar el comprador por impuestos al valor agregado (IVA) el cual es el equivalente al 15% del precio de venta.

//El precio de venta se obtiene sum�ndole al precio de f�brica la ganancia, equivalente al 25% del precio de fabrica, y la comisi�n del vendedor,
//equivalente al 20% del precio de fabrica. Como dato de entrada se tiene el precio de f�brica del art�culo.

//Entradas: precio de fabrica del articulo
//Procesos: calculo de porcentaje sumado a dato de entrada
//Salida: precio de venta, IVA

Algoritmo Precios_IVA	
	
	Definir precio Como Real
	Definir IVA Como Real
	Definir precioVenta Como Real
	Definir totalAbonar como real
	
	//Entrada
	Mostrar "Ingrese el precio de fabrica del articulo: "
	Leer precio
	
	//Proceso 
	precioVenta = precio * (45/100) + precio
	IVA = precioVenta * (15/100)
	totalAbonar = IVA + precioVenta
	
	//Salida
	Mostrar "El precio de venta es: $", precioVenta
	Mostrar "El valor de IVA a cancelar es: $", IVA
	Mostrar "El valor total a abonar es: $", totalAbonar
	
FinAlgoritmo
