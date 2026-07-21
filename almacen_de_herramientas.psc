Algoritmo almacen_de_herramientas
	Definir opcion, totalHerramientas Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir herramienta Como Caracter
	Definir categoria Como Caracter
	Definir cantidad Como Entero
	Definir precio Como Real
	Definir proveedor Como Caracter
	Definir fecha Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension herramienta[100]
	Dimension categoria[100]
	Dimension cantidad[100]
	Dimension precio[100]
	Dimension proveedor[100]
	Dimension fecha[100]
	Dimension estado[100]
	totalHerramientas <- 0
	siguienteID <- 1
	//--------------------------------------------//
	//--|menu_principal_almacen_de_herramientas|--//
	//--------------------------------------------//
	Repetir
		Escribir "menu principal almacen de herramientas"
		Escribir "1) registrar herramienta"
		Escribir "2) editar herramienta"
		Escribir "3) eliminar herramienta"
		Escribir "4) buscar herramienta"
		Escribir "5) listar herramientas"
		Escribir "6) ver detalles de la herramienta"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------------//
			//--|registrar_herramienta|--//
			//---------------------------//
			1:
				Escribir "registrar herramienta"
				id[totalHerramientas + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalHerramientas + 1]
				Escribir "ingrese el nombre de la herramienta:"
				Leer herramienta[totalHerramientas + 1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalHerramientas + 1]
				Escribir "ingrese la cantidad:"
				Leer cantidad[totalHerramientas + 1]
				Escribir "ingrese el precio:"
				Leer precio[totalHerramientas + 1]
				Escribir "ingrese el proveedor:"
				Leer proveedor[totalHerramientas + 1]
				Escribir "ingrese la fecha de ingreso:"
				Leer fecha[totalHerramientas + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalHerramientas + 1]
				totalHerramientas <- totalHerramientas + 1
				Escribir "herramienta registrada correctamente."
			//------------------------//
			//--|editar_herramienta|--//
			//------------------------//
			2:
				Escribir "editar herramienta"
				Si totalHerramientas = 0 Entonces
					Escribir "no hay herramientas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalHerramientas Hacer
						Escribir id[i], " | ", herramienta[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la herramienta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHerramientas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre de la herramienta:"
							Leer herramienta[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese la nueva cantidad:"
							Leer cantidad[i]
							Escribir "ingrese el nuevo precio:"
							Leer precio[i]
							Escribir "ingrese el nuevo proveedor:"
							Leer proveedor[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "herramienta editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una herramienta con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|eliminar_herramienta|--//
			//--------------------------//
			3:
				Escribir "eliminar herramienta"
				Si totalHerramientas = 0 Entonces
					Escribir "no hay herramientas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalHerramientas Hacer
						Escribir id[i], " | ", herramienta[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la herramienta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHerramientas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalHerramientas Entonces
								Para j <- i Hasta totalHerramientas - 1 Hacer
									id[j] <- id[j+1]
									herramienta[j] <- herramienta[j+1]
									categoria[j] <- categoria[j+1]
									cantidad[j] <- cantidad[j+1]
									precio[j] <- precio[j+1]
									proveedor[j] <- proveedor[j+1]
									fecha[j] <- fecha[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalHerramientas <- totalHerramientas - 1
							Escribir "herramienta eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una herramienta con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|buscar_herramienta|--//
			//------------------------//
			4:
				Escribir "buscar herramienta"
				Si totalHerramientas = 0 Entonces
					Escribir "no hay herramientas registradas."
				SiNo
					Escribir "ingrese el id de la herramienta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHerramientas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", herramienta[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una herramienta con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|listar_herramientas|--//
			//-------------------------//
			5:
				Escribir "listar herramientas"
				Si totalHerramientas = 0 Entonces
					Escribir "no hay herramientas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalHerramientas Hacer
						Escribir id[i], " | ", herramienta[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------------------//
			//--|ver_detalles_de_la_herramienta|--//
			//------------------------------------//
			6:
				Escribir "ver detalles de la herramienta"
				Si totalHerramientas = 0 Entonces
					Escribir "no hay herramientas registradas."
				SiNo
					Escribir "ingrese el id de la herramienta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHerramientas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la herramienta"
							Escribir "id: ", id[i]
							Escribir "herramienta: ", herramienta[i]
							Escribir "categoria: ", categoria[i]
							Escribir "cantidad: ", cantidad[i]
							Escribir "precio: ", precio[i]
							Escribir "proveedor: ", proveedor[i]
							Escribir "fecha: ", fecha[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una herramienta con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar almacen de herramientas."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo