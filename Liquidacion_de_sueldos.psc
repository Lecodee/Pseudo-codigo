Algoritmo Liquidacion_de_sueldos
	
//Una agencia desea calcular el sueldo neto semanal de un empleado,
//para ello dispone de los siguientes datos de un empleado:
	
//Entradas:
//-nombre del empleado		
//-sueldo base
//-número de horas trabajadas durante la semana
//-valor de la hora.

//Salidas:		
//Se desea calcular e imprimir la siguiente información:
//-nombre del empleado,		
//-pago por horas extras trabajadas (un empleado trabaja horas extras cuando trabaja más de 48 horas a la semana.
//Estas horas extras tienen un recargo del 35% sobre el valor de la hora)
//-sueldo neto a recibir por el empleado, este seria la suma del sueldo base mas el pago por horas normales trabajadas mas pago por horas extras.

	Definir nombre Como Caracter
	Definir sueldoBase, nroHoras, valorHora, pagoHoraextra, sueldoNeto como real
	
	Mostrar "Ingrese el nombre del vendedor"
	Leer nombre
	
	Mostrar "Ingrese el valor de sueldo base"
	Leer sueldoBase
	
	Mostrar "Ingrese la cantidad de horas semanales trabajadas"
	Leer nroHoras
	
	valorHora = sueldoBase/nroHoras
	sueldoNeto = sueldoBase + (valorHora * 1.35) + (nroHoras - 48)
	
	Mostrar "El sueldo neto a pagar a: ", nombre, " es de: $", sueldoNeto
	
	
FinAlgoritmo
