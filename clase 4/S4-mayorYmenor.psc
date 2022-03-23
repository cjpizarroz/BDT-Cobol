Algoritmo mayorYmenor
	// Sala 4 - Cobolocos
	// Inicio
	Definir I,num,nMayor,nMenor,lim_inf,lim_sup Como Entero
	Definir nomb_may,nomb_men Como Caracter
	limites(lim_sup,lim_inf)
	iniciar(I,nMayor,nMenor,lim_sup,lim_inf)
	// Desarrollo
	Para I<-1 Hasta 10 Hacer
		ingreso(i, num,nomb,lim_sup,lim_inf)
		// proceso nro mayor
		proceso_may(nMayor,num,nomb_may,nomb)
		// proceso nro menor
		proceso_men(nMenor,num,nomb_men,nomb)
	FinPara
	// Fin
	fin(nMenor,nMayor,nomb_men,nomb_may)
FinAlgoritmo

Funcion limiteSup(ls por referencia,li)
	Escribir 'Ingrese un nro mayor a ',li,' para limite superior'
	Leer ls
	Mientras ls<=li Hacer
		Escribir 'Error, debe ser mayor a: ',li
		Escribir 'Ingrese un nro mayor a: ',li,' para limite superior'
		Leer ls
	FinMientras
FinFuncion

Funcion iniciar(c por referencia,may por referencia,men por referencia,ls,li)
	I <- 0
	may <- li-1
	men <- ls+1
	Escribir "Vamos a ingresar 10 valores entre el ", li, " y ", ls
FinFuncion

Funcion ingreso(i, val por referencia,nombre por referencia,ls,li)
	Escribir i,' - Ingrese un valor entre ',li,' y ',ls
	Leer val
	Mientras val<li O val>ls Hacer
		Escribir 'Error - El valor debe estar entre ',li,' y ',ls
		Leer val
	FinMientras
	Escribir 'Ingrese nombre'
	Leer nombre
	Mientras Longitud(nombre)=0 Hacer
		Escribir 'El nombre no puede estar vacio - Reingrese!!'
		Leer nombre
	FinMientras
FinFuncion

Funcion proceso_may(may por referencia,val,nombre por referencia,nomb)
	Si val>may Entonces
		may <- val
		nombre <- nomb
	FinSi
FinFuncion

Funcion proceso_men(men por referencia,val,nombre por referencia,nomb)
	Si val<men Entonces
		men <- val
		nombre <- nomb
	FinSi
FinFuncion

Funcion limites(ls por referencia,li por referencia)
	Escribir 'ingrese un numero para  limite inferior'
	Leer li
	limiteSup(ls,li)
FinFuncion

Funcion fin(nMenor,nMayor,nombMenor,nombMayor)
	Escribir 'El nro menor es: ',nMenor,' y lo ingreso ',nombMenor
	Escribir 'El nro mayor es: ',nMayor,' y lo ingreso ',nombMayor
FinFuncion
