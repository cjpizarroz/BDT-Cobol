Algoritmo regalo_franco_2
	// Sala 4 - Cobolocos
	// Ejercicio 2: Regalo Franco
	// Idem ejercicio 1
	// Condicion de fin de bucle : Valor de ingreso "cero"(0)
	total <- 0
	valor <- 1
	Mientras valor<>0 Hacer
		Escribir 'Ingrese aporte para regalo o cero(0) para terminar'
		Leer valor
		Si valor>=0 Entonces
			total <- total+valor
		SiNo
			Escribir 'valor incorrecto - No se incluye'
		FinSi
	FinMientras
	Escribir 'El total recaudado es: ',total
FinAlgoritmo
