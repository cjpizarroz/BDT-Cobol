      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. dinero.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  acuMonto PIC    9(6).
       01  plata   PIC     S9(5).
       01  i       PIC     9.
       01  cant    PIC     9(2).
       01  acuComp PIC     9(5).
       01  nombre  PIC     x(15).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM inicio
            PERFORM ciclo VARYING i FROM 1 by 1 until i > cant
            PERFORM finprograma

            STOP RUN.

       inicio.
           DISPLAY"Ingreso de plata para regalo de cumpleañeros del mes"
           DISPLAY"Ingrese cuanto compañeros cumplen años este mes"
           ACCEPT cant
           MOVE ZEROS to acuMonto.

       ingreso.
           DISPLAY"Para compañero ",i, " - ",nombre
           DISPLAY"Ingrese su aporte o cero (0) para terminar"
           ACCEPT plata.

       proceso.
           PERFORM validar UNTIL plata > 0
           ADD plata to acuComp

           PERFORM ingreso.

       finprograma.
           DISPLAY"El total recaudado para los cumpleañeros es de",
           acuMonto, " pesos".

       validar.
           DISPLAY"Noooo podes sacar plata -- ¡¡¡ Vamos de vuelta !!!"
           PERFORM ingreso.

       ciclo.
           PERFORM datos
           PERFORM ingreso
           PERFORM proceso UNTIL plata = 0.
           DISPLAY"Total juntado para ",nombre, "es de ",
           acuComp, " pesos"
           ADD acuComp to acuMonto
           MOVE ZEROS to acuComp.

       datos.
           DISPLAY"Ingrese el nombre del compañero ",i
           ACCEPT nombre.

       END PROGRAM dinero.
