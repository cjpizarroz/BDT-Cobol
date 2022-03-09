Algoritmo escuela
	// Sala 4 - Cobolocos
	Definir c_homb,c_muj,t_homb,t_muj,muj_ok,t_muj_ok,i Como Entero
	Definir sexo,resp Como Caracter
	inicio(t_homb)
	inicio(t_muj)
	inicio(tp_mu_ok)
	Para i<-1 Hasta 2 Hacer
		inicio(c_homb)
		inicio(c_muj)
		inicio(muj_ok)
		Escribir 'Curso ',i
		Escribir 'Ingrese nombre del Alumno o fin para terminar carga del curso:'
		Leer nombre
		Mientras nombre<>'fin' Hacer
			carga(sexo,resp)
			Si sexo='M' Entonces
				Si resp='s' Entonces
					acumular(muj_ok)
				FinSi
				acumular(c_muj)
			SiNo
				acumular(c_homb)
			FinSi
			Escribir 'Curso ',i
			Escribir 'Ingrese nombre del Alumno o fin para terminar carga del curso'
			Leer nombre
		FinMientras
		acum_t(t_homb,c_homb)
		acum_t(t_muj,c_muj)
		acum_t(t_muj_ok,muj_ok)
		Escribir 'El porcntaje de mujeres del curso es: ',(c_muj*100)/(c_homb+c_muj)
		Escribir 'Porcentaje de mujeres de acuerdo con el nivel del curso es: ',(muj_ok*100)/c_muj
	FinPara
	Escribir '*******************************************'
	Escribir 'Cantidad de varones de los ',i,' cursos :',t_homb
	Escribir 'Cantidad de mujeres de los ',i,' cursos: ',t_muj
	Escribir 'Porcentaje de mujeres del total del alumnado: ',(t_muj*100)/(t_homb+t_muj)
	Escribir 'Porcentaje de mujeres totales de acuerdo con el nivel del curso es: ',t_muj_ok*100/t_muj
FinAlgoritmo

Funcion inicio (val por Referencia)
	val <- 0
FinFuncion

Funcion carga(sex por Referencia,opc por Referencia)
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

Funcion acumular(val por Referencia)
	val <- val+1
FinFuncion

Funcion acum_t(val1 por Referencia,val2)
	val1 <- val1+val2
FinFuncion
