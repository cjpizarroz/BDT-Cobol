Algoritmo ciclo_do_while
	Definir total,monto Como Real
	Definir msj_ini,msj_mot,msj_preg,msj_ing,dest,resp Como Caracter
	inicio(total)
	mensaje(msj_ini,msj_mot,dest,msj_preg,msj_ing)
	Repetir
		ingreso(monto,msj_ing)
		procesos(monto,total)
	Hasta Que pregunta(msj_preg,dest)='n'
	final(total,dest)
FinAlgoritmo

Funcion resp <- pregunta(msj_preg,dest)
	Definir resp Como Caracter
	Escribir msj_preg,'? ( s / n ) para ',dest
	Leer resp
	Mientras resp<>'n' Y resp<>'s' Hacer
		Escribir ' Ingrese  s / n '
		Leer resp
	FinMientras
FinFuncion

Funcion inicio (val por referencia)
	val <- 0
FinFuncion

Funcion mensaje (msj_inicio por referencia,msj_motivo por referencia,destino por referencia,msj_pregunta por referencia,msj_ingreso por referencia)
	// Sector de mensajes modificables
	msj_inicio <- 'Grupo BDT Cobol - Sala 4, '
	msj_motivo <- 'Juntada de dinero para: '
	destino <- ' Regalo profesor'
	msj_pregunta <- 'Desea hacer otro ingreso '
	msj_ingreso <- 'Ingrese su aporte '
	// Fin de Sector de variables modificables
	Escribir msj_inicio+msj_motivo+destino
FinFuncion

Funcion final (nro,dest)
	Escribir ' En  total  recaudamos : $',nro,' Para: ',dest
FinFuncion

Funcion procesos (monto,total por referencia)
	total <- total+monto
FinFuncion

Funcion ingreso (valor por referencia,msj_ing)
	Escribir msj_ing
	Leer valor
	Mientras valor<0 Hacer
		Escribir ' Error  robar  es  malo , ingresar  un  valor  positivo '
		Leer valor
	FinMientras
FinFuncion
