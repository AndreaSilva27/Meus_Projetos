      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. mac.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 TOTAL          PIC 9(3)V99 VALUE 0.
       77 MAC           PIC 9 VALUE 0.
           88 VALIDAR-MAC VALUE 0 THRU 6.
       77 SOMA           PIC 9(5)V99.
       77 VALOR          PIC 9(5)V99.
       77 TEMP           PIC X(6).
       77 SAIDA          PIC Z,ZZ.99.
       SCREEN SECTION.
       01 DATA-SISTEMA.
           05 ANO PIC 9(4).
           05 MES PIC 9(2).
           05 DIA PIC 9(2).
       01 LIMPA-ECRAN.
       01 MENU.
           05 COL 01 VALUE " DATA:  "                           LINE 01.
           05 COL 01 VALUE "*********BOCACHEIA*********"        LINE 03.
           05 COL 01 VALUE "ESCOLHA SEU MENU:         "         LINE 06.
           05 COL 01 VALUE "************OBA!!************"      LINE 08.
           05 COL 01 VALUE "           TOTAL: "                 LINE 10.
           05 COL 01 VALUE "******BOM APETITE!!!*******"        LINE 12.

       PROCEDURE DIVISION.
           DISPLAY LIMPA-ECRAN.
           DISPLAY MENU.
       INICIO.
           ACCEPT DATA-SISTEMA FROM DATE YYYYMMDD.
           DISPLAY FUNCTION CONCATENATE (DIA,"-",MES,"-",ANO) AT 0107.

       ESCOLHA.
           ACCEPT TEMP AT 0618.
           MOVE FUNCTION NUMVAL(TEMP) TO MAC.
           EVALUATE MAC
                   WHEN 1
                   DISPLAY "  -HAMBURGUER PEQ" AT 0621
                   COMPUTE VALOR= 5.15 + VALOR
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0650
                   GO ESCOLHA
                   WHEN 2
                   DISPLAY "  -HAMBURGUER MED" AT 0621
                   COMPUTE VALOR= 6.05 + VALOR
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0650
                   GO ESCOLHA
                   WHEN 3
                   DISPLAY "  -HAMBURGUER GRA" AT 0620
                   COMPUTE VALOR= 7.10 + VALOR
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0650
                   GO ESCOLHA
                   WHEN 4
                   DISPLAY "  -HAMBURGUER SUP" AT 0620
                   COMPUTE VALOR= 8.20 + VALOR
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0650
                   GO ESCOLHA
                   WHEN 5
                   DISPLAY "           -BATATA"         AT 0620
                   COMPUTE VALOR= 4.50 + VALOR
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0650
                   GO ESCOLHA
                   WHEN 6
                   DISPLAY "           -SALADA"         AT 0620
                   COMPUTE VALOR= 5.00 + VALOR
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0650
                   GO ESCOLHA
                   WHEN 0
                   MOVE VALOR TO SAIDA
                   DISPLAY FUNCTION CONCATENATE (SAIDA) AT 1017
                   DISPLAY " " ERASE EOL AT 0630
                   DISPLAY "     -VALOR A PAGAR.BOM APETITE!" AT 1024
           END-EVALUATE.
           PERFORM ESCOLHA UNTIL MAC = 0.


           ACCEPT OMITTED AT 1510.
            STOP RUN.
       END PROGRAM mac.
