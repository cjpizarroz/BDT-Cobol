Algoritmo escuela
	// Sala 4 - Cobolocos
	Definir i Como Entero
	// Seccion General
	Definir t_homb,t_muj,t_muj_ok Como Entero
	// Seccion para un curso
	Definir c_homb,c_muj,muj_ok Como Entero
	Definir nombre,c_msj1,c_msj2,t_msj1,t_msj2 Como Caracter
	Definir sexo,resp Como Caracter
	inicio(t_homb,t_muj,tp_mu_ok)
	mensajes(c_msj1,c_msj2,t_msj1,t_msj2)
	Para i<-1 Hasta 2 Hacer
		inicio(c_homb,c_muj,muj_ok)
		Escribir '--------------------------------------------------------------------'
		Escribir 'Curso ',i
		Escribir 'Ingrese nombre del Alumno o FIN para terminar carga del curso:'
		Leer nombre
		Mientras nombre<>'FIN' Hacer
			carga(sexo,resp)
			Si sexo='M' Entonces
				Si resp='S' Entonces
					muj_ok = muj_ok +1
				FinSi
				c_muj = c_muj +1
			SiNo
				c_homb = c_homb +1
			FinSi
			Escribir 'Curso ',i
			Escribir 'Ingrese nombre del Alumno o FIN para terminar carga del curso'
			Leer nombre
		FinMientras
		t_homb = t_homb + c_hom
		t_muj = t_muj + c_muj
		t_muj_ok =  t_muj_ok + muj_ok
		// Verificaciones y Final de cada curso
		verificacion(c_homb,c_muj,muj_ok,c_msj1,c_msj2)
		Escribir '*******************************************'
	FinPara
	// Verificaciones y Final General
	Escribir 'Cantidad de varones totales :',t_homb
	Escribir 'Cantidad de mujeres totales : ',t_muj
	verificacion(t_homb,t_muj,t_muj_ok,t_msj1,t_msj2)
FinAlgoritmo

Funcion inicio (val Por Referencia,val1 Por Referencia,val2 Por Referencia)
	val <- 0
	val1 <- 0
	val2 <- 0
FinFuncion

Funcion carga(sex Por Referencia,opc Por Referencia)
	Escribir 'Ingrese sexo del Alumno  (H- hombre o M- mujer)'
	Leer sex
	Mientras sex<>'M' Y sex<>'H' Hacer
		Escribir 'ERROR - Ingrese M para mujer o H para hombre'
		Leer sex
	FinMientras
	Escribir '¿Esta de acuerdo con el nivel del curso? Ingrese S para SI o N para NO'
	Leer opc
	Mientras opc<>'S' Y opc<>'N' Hacer
		Escribir 'ERROR - Ingrese S para SI o N para NO'
		Leer opc
	FinMientras
FinFuncion

Funcion verificacion(val1,val2,val3,c_msj1,c_msj2)
	Si (val1+val2)=0 Entonces
		Escribir 'El curso no tiene alumnos'
	SiNo
		Escribir c_msj1,(val2*100)/(val1+val2),' %'
	FinSi
	Si val2=0 Entonces
		Escribir 'El curso no tiene mujeres de acuerdo con el nivel del curso'
	SiNo
		Escribir c_msj2,(val3*100)/(val2),' %'
	FinSi
FinFuncion

Funcion mensajes(c_msj1 Por Referencia,c_msj2 Por Referencia,t_msj1 Por Referencia,t_msj2 Por Referencia)
	c_msj1 <- 'El porcentaje de mujeres del curso es: '
	c_msj2 <- 'Porcentaje de mujeres de acuerdo con el nivel del curso es: '
	t_msj1 <- 'Porcentaje de mujeres del total del alumnado: '
	t_msj2 <- 'Porcentaje de mujeres totales de acuerdo con el nivel del curso es: '
FinFuncion
