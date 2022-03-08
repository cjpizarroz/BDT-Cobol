Algoritmo ejercicio_1_mejorado
	Definir total, val como Real
	Definir i como Entero
	inicio(total)
	Para i<-1 Hasta 29 Hacer
		ingreso(i, val)
		procesos(val, total)
	FinPara
	fin(total)
FinAlgoritmo

Funcion inicio(tot_acum por Referencia)
	tot_acum = 0
FinFuncion

Funcion fin(total)
	Escribir "El total recaudado es : $ ", total
FinFuncion

Funcion ingreso(i, val_aporte por Referencia)
	Escribir "Compañero ",i, "Ingrese su colaboración: "
	Leer val_aporte
	Mientras val_aporte <0 Hacer
		Escribir "Error de ingreso.Solo valores positivos"
		Leer val_aporte
	FinMientras
FinFuncion

Funcion procesos(monto, total por Referencia)
	total = total + monto
FinFuncion
