Algoritmo dosOpciones
	// Sala 4 - Cobolocos
	Definir resp,val1,val2 Como Caracter
	Definir msj_ing,msj_error Como Caracter
	iniciar(val1,val2,msj_ing,msj_error)
	resp <- consulta(val1,val2,msj_ing,msj_error)
	Escribir 'Ud ha elegido la opcion: ',resp
FinAlgoritmo

Funcion iniciar(v1 por Referencia,v2 por Referencia,m_ing por Referencia,m_err por Referencia)
	v1 <- 's'
	v2 <- 'n'
	m_ing <- '¿Es Ud fan de Boquita? conteste s/n'
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
