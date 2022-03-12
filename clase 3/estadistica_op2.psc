Algoritmo escuela
	// Sala 4 - Cobolocos
	Definir i,cont_Anios Como Entero
	// Seccion General
	Definir t_homb,t_muj,t_muj_ok Como Entero
	// Seccion para un curso
	Definir c_homb,c_muj,muj_ok Como Entero
	Definir nombre,c_msj1,c_msj2,t_msj1,t_msj2 Como Caracter
	Definir genero,resp Como Caracter
	iniciar(cont_Anios)
	inicio(t_homb,t_muj,tp_mu_ok)
	mensajes(c_msj1,c_msj2,t_msj1,t_msj2,o_msj1,o_msj2,o_msj3)
	Repetir
		Escribir '<<<<<<<<<< ',cont_Anios,' Año consultado ','>>>>>>>>>>'
		Para i<-1 Hasta 2 Hacer
			inicio(c_homb,c_muj,muj_ok)
			Escribir '--------------------------------------'
			Escribir '  ( Año ',cont_Anios,' ) *****  Curso ',i,' *****'
			Escribir 'Ingrese nombre del Alumno o FIN para terminar carga del curso:'
			Leer nombre
			Mientras nombre<>'FIN' Hacer
				carga(genero,o_msj1)
				carga_consulta(o_msj2,resp)
				Si genero='M' Entonces
					Si resp='S' Entonces
						muj_ok <- muj_ok+1
					FinSi
					c_muj <- c_muj+1
				SiNo
					c_homb <- c_homb+1
				FinSi
				Escribir 'Curso ',i
				Escribir 'Ingrese nombre del Alumno o FIN para terminar carga del curso'
				Leer nombre
			FinMientras
			t_homb <- t_homb+c_homb
			t_muj <- t_muj+c_muj
			t_muj_po <- t_muj_ok+muj_ok
			// Verificaciones y Final de cada curso
			verificacion(c_homb,c_muj,muj_ok,c_msj1,c_msj2)
		FinPara
		carga_consulta(o_msj3,resp)
		cont_Anios <- cont_Anios+1
	Hasta Que resp='N'
	Escribir '*******************************************'
	// Verificaciones y Final General
	Escribir "Cantidad de años consultados: ", cont_Anios
	Escribir 'Cantidad de varones totales :',t_homb
	Escribir 'Cantidad de mujeres totales : ',t_muj
	verificacion(t_homb,t_muj,t_muj_ok,t_msj1,t_msj2)
FinAlgoritmo

Funcion inicio (val por Referencia,val1 por Referencia,val2 por Referencia)
	val <- 0
	val1 <- 0
	val2 <- 0
FinFuncion

Funcion carga(gen_alum por Referencia,o_msj1)
	Escribir o_msj1
	Leer gen_alum
	Mientras gen_alum<>'M' Y gen_alum<>'H' Hacer
		Escribir 'ERROR - Ingrese M para mujer o H para hombre'
		Leer gen_alum
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

Funcion mensajes(c_msj1 por Referencia,c_msj2 por Referencia,t_msj1 por Referencia,t_msj2 por Referencia o_msj1 por Referencia,o_msj2 por Referencia,o_msj3 por Referencia)
	c_msj1 <- 'El porcentaje de mujeres del Año es: '
	c_msj2 <- 'Porcentaje de mujeres de acuerdo con el nivel del curso es: '
	t_msj1 <- 'Porcentaje de mujeres del total del alumnado: '
	t_msj2 <- 'Porcentaje de mujeres totales de acuerdo con el nivel del curso es: '
	o_msj1 <- 'Ingrese género del Alumno  (H- hombre o M- mujer)'
	o_msj2 <- '¿Esta de acuerdo con el nivel del curso? Ingrese S para SI o N para NO'
	o_msj3 <- '¿Existe otro Año para consultar? Ingrese S/N'
FinFuncion

Funcion carga_consulta(msj,opc por Referencia)
	Escribir msj
	Leer opc
	Mientras opc<>'S' Y opc<>'N' Hacer
		Escribir 'ERROR - Ingrese S para SI o N para NO'
		Leer opc
	FinMientras
FinFuncion

Funcion iniciar(val por Referencia)
	val <- 1
FinFuncion
