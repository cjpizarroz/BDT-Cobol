Algoritmo regalo_franco_1
	// Sala 4 - Cobolocos
	// Ejercicio 1: Regalo Franco
	// bucle 29 personas.
	// Mostrar total recaudado al final
	total <- 0
	Para i<-1 Hasta 29 Hacer
		Escribir 'Ingrese el aporte del alumno:',i
		Leer valor
		Si valor<0 Entonces
			Escribir 'Valor incorrecto. Se computa 0'
			valor <- 0
		FinSi
		total <- total+valor
	FinPara
	Escribir 'El total recaudado es: ',total
FinAlgoritmo
