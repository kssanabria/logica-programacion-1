Algoritmo inventarioProductos
	// Definir la matriz para el inventario
	//vector, matriz o un arreglo es lo mismo
	Dimension inventario[10, 3]
	
    //Inicializar las variables para controlar el menú
    Definir opcion, codigo, cantidad, indice, totalVenta Como Entero
    Definir nombreProducto Como Caracter
    Definir precioProducto Como Real
	
	//Inicializar el ciclo principal del programa
	Repetir
		//Mostrar el menu
		Escribir "Seleccione una opción: "
		Escribir "1. Agregar nuevo producto"
		Escribir "2. Actualizar cantidad disponible"
		Escribir "3. Mostrar información del inventario"
		Escribir "4. Realizar venta"
		Escribir "5. Salir"
		Leer opcion
		
		//Realizar las acciobes según la opción que elijamos
		Segun opcion Hacer
			1:
				//Agregar nuevo producto
				Escribir "Ingrese el codigo del producto: "
				leer codigo
				Escribir "Ingrese el nombre del producto: "
				Leer nombreProducto
				Escribir "Ingrese la cantidad del producto: "
				Leer cantidad
				Escribir "Ingrese el precio del producto"
				Leer precioProducto
				
				//Buscar un espacio 
				indice <- 1
				Mientras indice <= 10 Y inventario[indice, 1] <> 0 Hacer
					indice<- indice + 1
				FinMientras
				
				//Verificar si hay un espacio
				Si indice <= 10 Entonces
					inventario[indice, 1] <- codigo
					inventario[indice, 2] <- cantidad
					inventario[indice, 3] <- precioProducto
					Escribir "Producto agregado correctamente"
				Sino
					Escribir "No hay espacio disponible en el inventario"
				FinSi
			2:
				//Actualizar la cantidad
				Escribir "Ingrese el codigo del producto"
				Leer codigo
				
				//Buscar el producto en el inventario
				indice <- 1
				Mientras indice <= 10 Y inventario[indice, 1] <> codigo Hacer
					indice<- indice +1
					
				FinMientras
				
				//Verificar si se encontro el productor
				Si indice <= 10 Entonces
					Escribir "Ingrese la nueva cantidad disponible"
					Leer cantidad
					inventario[indice, 2] <- cantidad
					Escribir "Cantidad fue actualizada correctamente"
				SiNo
					Escribir "Producto no encontrado en el inventario"
				FinSi
			3:
				//Mostrar información del inventario
				Escribir "Codigo | Cantidad | Precio"
				Para indice Desde 1 hasta 10 Hacer
					Si inventario[indice, 1] <> 0 Entonces
						Escribir inventario[indice, 1], " | ", inventario[indice, 2], " | ", inventario[indice, 3]
						
					FinSi
				FinPara
			4:
				//Realizar venta
				Escribir "Ingrese el código del producto a vender"
				Leer codigo
				
				//Buscar el producto en el inventario
				indice <- 1
				Mientras indice <= 10 Y inventario[indice, 1] <> codigo Hacer
					indice <- indice + 1
				FinMientras
				
				//Verificar si se encontro el producto
				Si indice <= 10 Entonces
					Escribir "Ingrese la cantidad a vender: "
					leer cantidad
					si cantidad <= inventario[indice, 2] Entonces
						totalVenta <- cantidad * inventario[indice, 3]
						Escribir "Venta realizada, total a pagar es de: $", totalVenta
						//Actualizar la cantidad en el inventario
						inventario[indice, 2] <- inventario[indice, 2] - cantidad
					SiNo
						Escribir "No hays uficiente cantidad disponible para la venta."
					FinSi
				SiNo
					Escribir "Producto no encontrado en el inventario"
				FinSi
			5:
				//Salir del programa
				Escribir "Te saliste del programa, reinicialo."
		FinSegun
	Hasta Que opcion = 5
	
	
FinAlgoritmo
