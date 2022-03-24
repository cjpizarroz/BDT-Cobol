Algoritmo fecha
	// inicio Modulo Fecha
	Definir FechaOpc,v1,v2,m_ing,m_err Como Caracter
	Definir Mfecha Como Entero
	iniciar(val1,val2,msj_ing,msj_error)
	// desarrollo
	Repetir
		ingresoFecha(Mfecha)
	Hasta Que consulta(val1,val2,msj_ing,msj_error)='n'
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

Funcion ingresoFecha(fech por referencia)
	Escribir "Ingrese Fecha"
	Leer fech
	Mientras fech <0 o fech >30 Hacer
		Escribir "Error de ingreso - Reingrese fecha"
		Leer fech
	FinMientras
FinFuncion
