Algoritmo regalo_franco_3
	// Sala 4 - Cobolocos
	// Ejercicio 3: Regalo Franco
	// Idem ejercicio 2
	// Al menos debe existir un aportante
	// Preguntar si existe otro compañero que desee aportar
	total <- 0
	opcion = "S"
	Repetir
		Escribir "Ingrese aporte para regalo: "
		Leer valor
		Si valor<0 Entonces
			Escribir "Ingreso un valor incorrecto"
		SiNo
			total = total + valor
		FinSi
		Escribir "Existe otro compañero que desee aportar?: "
		Escribir "S - para continuar "
		Escribir "N - Salir"
		Leer opcion
	Hasta Que opcion ="N"
	Escribir 'El total recaudado es: ',total
FinAlgoritmo
