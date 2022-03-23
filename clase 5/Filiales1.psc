Algoritmo modGeneral
	// inicio
	definir gen_mayCanVtas, gen_Nfilial como entero
	inicio(gen_mayCanVtas, gen_Nfilial)
	// desarrollo
	Para i<-1 Hasta 3 Hacer
		moduloFilial(gen_mayCanVtas, gen_Nfilial, i)
	FinPara
	// fin
	fin(gen_mayCanVtas, gen_Nfilial)
FinAlgoritmo

Funcion inicio(val1 por Referencia, val2 por Referencia)
	val1 = 0
	val2 = 0
FinFuncion

Funcion fin(val1, val2)
	Escribir "La filial que mas ventas tuvo fue la nro ", val1, " con ", val2, " ventas"
FinFuncion

Funcion moduloFilial(gen_val1 por Referencia, gen_val2 por Referencia, nro)
	// inicio
	definir fil_canVtas como cadena
	inicioFilial(fil_canVtas)
	// desarrollo
	// fin
	finFilial(fil_canVtas, val1, val2, nro)
FinFuncion

Funcion inicioFilial(val por Referencia)
	Val = 0
FinFuncion

Funcion finFilial(v1,v2,v3,v4)
	
FinFuncion
