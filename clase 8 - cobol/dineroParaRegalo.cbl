      ******************************************************************
      * Author: Sala 4 - Carlos Javier  Pizarro
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. dinero.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  acuMontoGen PIC    9(6).
       01  plata   PIC     S9(5).
       01  i       PIC     9.
       01  cant    PIC     9(2).
       01  acuComp PIC     9(5).
       01  nombre  PIC     x(15).
       01  nombMayRec  PIC x(15).
       01  monMayRec   PIC 9(5).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM inicio
            PERFORM cicloGen VARYING i FROM 1 by 1 until i > cant
            PERFORM finCicloGen

            STOP RUN.

       inicio.
           DISPLAY"Ingreso de plata para regalo de cumpleaņeros del mes"
           DISPLAY"Ingrese cuanto compaņeros cumplen aņos este mes"
           ACCEPT cant
           MOVE ZEROS to acuMontoGen acuComp monMayRec.

       datos.
           DISPLAY"Ingrese el nombre del compaņero ",i
           ACCEPT nombre.

       ingreso.
           DISPLAY"Para compaņero ",i, " - ",nombre
           DISPLAY"Ingrese su aporte o cero (0) para terminar"
           ACCEPT plata.

       cicloGen.
           PERFORM datos
           PERFORM ingreso
           PERFORM cicloIndiv UNTIL plata = 0.
           PERFORM FinCicloIndiv.

       cicloIndiv.
           PERFORM validar UNTIL plata > 0
           ADD plata to acuComp
           PERFORM ingreso.

       FinCicloIndiv.
           DISPLAY"Total juntado para ",nombre, "es de ",
           acuComp, " pesos"
           PERFORM mayorRec
           ADD acuComp to acuMontoGen
           MOVE ZEROS to acuComp.

       finCicloGen.
           DISPLAY"El total recaudado para los cumpleaņeros es de",
           acuMontoGen, " pesos".
           DISPLAY "El compaņero que recaudo mas dinero es: "
           nombMayRec " con un total de : $" monMayRec.

       validar.
           DISPLAY"Noooo podes sacar plata -- ĄĄĄ Vamos de vuelta !!!"
           PERFORM ingreso.

       mayorRec.
           if acuComp > monMayRec
               MOVE acuComp to monMayRec
               MOVE nombre to nombMayRec.

       END PROGRAM dinero.
