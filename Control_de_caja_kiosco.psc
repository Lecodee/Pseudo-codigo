//Un kiosco de comida rápida desea procesar las ventas del día. Para ello dispone de los siguientes datos: precio del desayuno, 
//almuerzo y cena respectivamente y cantidad de desayunos, almuerzos y cenas vendidos durante el día.Elabore el programa que permita imprimir: ingreso del
// kiosco por cada tipo de comida (desayuno, almuerzo y cena), Total ingreso del día y promedio de los precios de las comidas.

//Instrucciones: este programa calcula ingresos por tipo de comida (desayuno, almuerzo y cena), promedio de precios por tipo de comida e ingreso del dia.
// A tener en cuenta: 
// - Si maneja distintos precios dentro de un mismo tipo de comida, cargue por cantidades vendidas de tipo de comida las que tengan el mismo precio,
//  al realizar el calculo, el programa le preguntara si desea cargar otro tipo de comida, ingrese nuevamente la opcion que ya estaba trabajando para 
// cargar ventas del mismo tipo con distinto precio, el programa ira sumando todas las entradas y calculando el promedio de precios en cada tipo de comida.
// - Al cambiar de opcion de tipo de comida, el programa sumara los totales anteriores y no perdera la cuenta.
// - Al responder con la opcion 2 en "¿Desea agregar otro tipo de comida? 1- Si 2- No", el programa arrojara el valor total de los ingresos del dia por 
// todos los tipos de comiada ingresados.

Algoritmo Control_de_caja_kiosco
	
	Definir precio Como real
	Definir cantidad como entero
	Definir ingrTotal, promPrecComidas Como Real
	Definir Total, TotalD, TotalA, TotalC como real
	
	Repetir
	
		//Entrada
	Mostrar "Elija tipo de comida: 1-Desayuno 2-Almuerzo 3-Cena."
	Leer respuesta
	Desayuno = 1
	Almuerzo = 2
	Cena = 3
	
	Segun respuesta Hacer
		1: // Entrada
			Mostrar "Ingrese la cantidad de desayunos vendidos: "
			Leer cantidad
			Mostrar "Ingrese el precio del desayuno: "
			Leer precio
			
			//Proceso 
			Total = (cantidad * precio) 
			
			//Salida
			Mostrar "El ingreso por este tipo de comida es: $", Total
			
			//Proceso 
			TotalD = TotalD + Total
			
			//Salida
			Mostrar "El total de ingresos por desayunos es: $", TotalD
			
			//Proceso 
			promPrecComidas = TotalD / cantidad
			
			//Salida
			Mostrar "El precio promedio de los desayunos es: $", promPrecComidas
			
		2: //Entrada
			Mostrar "Ingrese la cantidad de almuerzos vendidos: "
			Leer cantidad
			Mostrar "Ingrese el precio del almuerzo: "
			Leer precio
			
			//Proceso 
			Total = cantidad * precio
			
			//Salida
			Mostrar "El ingreso por este tipo de comida es: $", Total
			
			//Proceso 
			TotalA = TotalA + Total
			
			//Salida
			Mostrar "El total de ingresos por almuerzos es: $", TotalA
			
			//Proceso 
			promPrecComidas = TotalA / cantidad
			
			//Salida
			Mostrar "El precio promedio de los almuerzos es: $", promPrecComidas
			
		3: //Entrada
			Mostrar "Ingrese la cantidad de cenas vendidas: "
			Leer cantidad
			Mostrar "Ingrese el precio de la cena: "
			Leer precio
			
			//Proceso 
			Total = cantidad * precio
			
			//Salida
			Mostrar "El ingreso por este tipo de comida es: $",Total
			
			//Proceso 
			TotalC = TotalC + Total
			
			//Salida
			Mostrar "El total de ingresos por cenas es: $", TotalC
			
			//Proceso 
			promPrecComidas = TotalC / cantidad
			
			//Salida
			Mostrar "El precio promedio de las cenas es: $", promPrecComidas
	Fin Segun
	
	//Entrada
	Mostrar "¿Desea agregar otro tipo de comida? 1- Si 2- No"
	Leer respuesta
	Mientras respuesta < 1 o respuesta > 2 Hacer
		Mostrar "Ingrese una opcion valida: 1- Si 2- No"
		Leer respuesta
	Fin Mientras
     Hasta que respuesta <> 1 

	//Salida 
	 ingrTotal = TotalD + TotalA + TotalC
Mostrar "El ingreso del dia por todas las comidas vendidas es: $", ingrTotal

FinAlgoritmo

