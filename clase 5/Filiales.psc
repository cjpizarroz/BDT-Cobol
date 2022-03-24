Algoritmo Filiales
	// inicio general
	Definir legajo,legProv Como Entero
	// Definicion variables Modulo VENDEDOR
	Definir ven_can_ventas,ven_acu_monto,ven_leg_can,ven_leg_monto,mayMonto,mayCventas Como Entero
	inicio(ven_can_ventas,ven_acu_monto,ven_leg_can,ven_leg_monto,mayMonto,mayCventas)
	legajo <- 0
	legProv <- 0
	ingresoLegajo(legajo)
	legProv <- legajo
	Mientras legajo<>0 Hacer
		IngresarDatos(ven_can_ventas,ven_acu_monto)
		procesoMay(ven_acu_monto,mayMonto,ven_leg_monto,legProv)
		procesoMay(ven_can_ventas,mayCventas,ven_leg_can,legProv)
		ingresoLegajo(legajo)
		Si legProv<legajo Entonces
			ven_acu_monto <- 0
			ven_can_ventas <- 0
			legProv <- legajo
		FinSi
	FinMientras
	fin(mayMonto,ven_leg_monto,mayCventas,ven_leg_can)
FinAlgoritmo

Funcion IngresarDatos(cantVtas por Referencia,acuMto por Referencia)
	cantVtas <- cantVtas+1
	Escribir 'Ingrese importe cobrado por las ventas'
	Leer val
	Validar(val)
	acuMto <- acuMto+val
FinFuncion

Funcion Validar(val por Referencia)
	Mientras val<0 Hacer
		Escribir 'Error - Ingrese un valor correcto'
		Leer val
	FinMientras
FinFuncion

Funcion ingresoLegajo(val por Referencia)
	Escribir 'Ingrese legajo o cero(0) para terminar'
	Leer val
	Validar(val)
FinFuncion

Funcion procesoMay(val,val1 por Referencia,nombre por Referencia,nomb)
	Si val>val1 Entonces
		val1 <- val
		nombre <- nomb
	FinSi
FinFuncion

Funcion inicio(val por Referencia,val1 por Referencia,val2 por Referencia,val3 por Referencia,val4 por Referencia,val5 por Referencia)
	val <- 0
	val1 <- 0
	val2 <- 0
	val3 <- 0
	val4 <- 0
	val5 <- 0
FinFuncion

Funcion fin(monto,legMonto,cant,legCant)
	Escribir 'El vendedor que mayor monto vendio fue ',legMonto,' con $ ',monto
	Escribir 'El vendedor con mayor cantidad de ventas fue ',legCant,' con ',cant,' ventas'
FinFuncion
