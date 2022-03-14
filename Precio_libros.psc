Algoritmo Precio_Libros
	
//Una librería estima el precio básico de venta de sus libros de la siguiente manera:
//costo base del libro más Bs. 0.75 por cada página del mismo. Para el cálculo del precio final de venta se debe realizar 
//los cálculos correspondientes según aplique:

//Según la cantidad de páginas:
//-Si excede de 300 y es menor o igual a 500, el precio básico de venta sufrirá un recargo adicional de Bs. 500.
//-Si excede a 500 se debe incrementar en Bs. 500 más Bs. 1.25 por cada página extra.
//A los tipos de texto especificado (una letra) también se añade un recargo al precio preliminar de venta:
//-Investigación: 3%
//-Recreativo: 2%
//-Técnico: 4%
	
//Se requiere mostrar en pantalla:
//-Precio básico.
//-Recargo según número de páginas (si aplica),
//-Recargo según el tipo de libro (si aplica),
//-Precio final venta
//Como entrada se tiene: costo del libro, tipo, cantidad de páginas.
	
Definir precioBasico, recTipolibro, precioFinal, costoBase Como Real
Definir cantPag Como Entero


Mostrar "Ingrese el costo del libro"
Leer costoBase

Mostrar "Ingrese la cantidad de paginas del libro"
Leer cantPag

precioBasico = costoBase + (0.75 * cantPag)
Mostrar "El precio preliminar del libro es: $", precioBasico

Si cantPag > 300 y cantPag <= 500 entonces
	Mostrar "El precio preliminar tiene un recargo de $500 porque la cantidad de paginas es mayor a 300 o menor o igual a 500"
	costoBase = costoBase + 500
Fin si

Si cantPag > 500 Entonces
	Mostrar "El precio preliminar tiene un recargo de $500 mas $1.25 por pagina extra a partir de la pagina 500"
	costoBase = costoBase + 500 + ((cantPag - 500) * 1.25)
Fin si

Si cantPag < 300 Entonces
	Mostrar "El precio preliminar no tiene recargo por cantidad de paginas"
FinSi

Repetir
	
      Mostrar "Ingrese el tipo de libro segun corresponda: 1- Investigacion 2- Recreativo 3- Tecnico 9- Otros"
      Leer respuesta

Investigacion = 1
Recreativo = 2
Tecnico = 3
Otros = 9


Segun respuesta Hacer
	1:
		recTipolibro = precioBasico * 0.03
	2:
		recTipolibro = precioBasico * 0.02
	3:
		recTipolibro = precioBasico * 0.04
	De Otro Modo:
		precioBasico = costoBase + (0.75 * cantPag)
Fin Segun

Mientras respuesta <> 1 y respuesta <> 2 y respuesta <> 3 y respuesta <> 9 Hacer
	Mostrar " Ingrese una respuesta valida"
	Leer respuesta
	
	Segun respuesta Hacer
		1:
			recTipolibro = precioBasico * 0.03
		2:
			recTipolibro = precioBasico * 0.02
		3:
			recTipolibro = precioBasico * 0.04
		De Otro Modo:
			precioBasico = costoBase + (0.75 * cantPag)
	Fin Segun
	
Fin Mientras
	
     Hasta que respuesta = 1 o respuesta = 2 o respuesta = 3 o respuesta = 9 
	
	precioFinal = recTipolibro + precioBasico
	
	Si cantPag > 300 entonces
		Mostrar "El precio por cantidad de paginas es: $", precioBasico
	Fin si

	Mostrar "El recargo por tipo de libro es: $", recTipolibro
	Mostrar "El precio final del libro es: $", precioFinal
	
FinAlgoritmo
