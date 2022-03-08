Algoritmo ejercicio_2_mejorado
	Definir total,val Como Real
	Definir resp Como Caracter
	inicio(total)
	ingreso(val)
	Mientras val <> 0 Hacer
		procesos(val,total)
		ingreso(val)
	FinMientras
	fin(total)
FinAlgoritmo

Funcion inicio(tot_acum por Referencia)
	tot_acum <- 0
FinFuncion

Funcion fin(total)
	Escribir 'El total recaudado es : $ ',total
FinFuncion

Funcion ingreso(val_aporte por Referencia)
	Escribir "Ingrese su colaboración: "
	Leer val_aporte
	Mientras val_aporte<0 Hacer
		Escribir 'Error de ingreso.Solo valores positivos'
		Leer val_aporte
	FinMientras
FinFuncion

Funcion procesos(monto,total por Referencia)
	total <- total+monto
FinFuncion

Funcion resp = consulta()
	
FinFuncion
