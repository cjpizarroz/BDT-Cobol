Algoritmo fecha
	// inicio Modulo Fecha
	Definir FechaOpc,v1,v2,m_ing,m_err Como Caracter
	Definir Mfecha Como Entero
	// Definicion variables Modulo VENDEDOR
	Definir legajo,legProv Como Entero
	Definir ven_can_ventas,ven_acu_monto,ven_leg_can,ven_leg_monto,mayMonto,mayCventas Como Entero
	iniciar(val1,val2,msj_ing,msj_error)
	// desarrollo
	Repetir
		ingresoFecha(Mfecha)
		// inicio general
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
		FechaOpc <- consulta(val1,val2,msj_ing,msj_error)
		Si FechaOpc=val1 o FechaOpc=val2 Entonces
			fin(mayMonto,ven_leg_monto,mayCventas,ven_leg_can)
		FinSi
	Hasta Que FechaOpc='n'
	// fin
FinAlgoritmo

Funcion iniciar(v1 por Referencia,v2 por Referencia,m_ing por Referencia,m_err por Referencia)
	Escribir 'Ventas realizadas en el dia por vendedor'
	v1 <- 's'
	v2 <- 'n'
	m_ing <- '¿Desea ingresar otra fecha? conteste s/n'
	m_err <- 'Error - Debe ingresar s/n'
FinFuncion

Funcion opc = consulta(v1,v2,m_ing,m_err)
	Definir opc Como Caracter
	Escribir m_ing
	Leer opc
	Mientras opc<>v1 Y opc<>v2 Hacer
		Escribir m_err
		Leer opc
	FinMientras
FinFuncion

Funcion ingresoFecha(fech por Referencia)
	Escribir 'Ingrese Fecha'
	Leer fech
	Mientras fech<0 O fech>30 Hacer
		Escribir 'Error de ingreso - Reingrese fecha'
		Leer fech
	FinMientras
FinFuncion

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
