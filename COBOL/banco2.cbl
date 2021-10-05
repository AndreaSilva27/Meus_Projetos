      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. banco2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 SALDO   PIC 9(6)V99 VALUE 0.
       77 OPERACAO       PIC A VALUE SPACES.
           88 VALIDAR-OPERACAO VALUES "D","C","S".
       77 MONTANTE       PIC 9(6)V99 VALUE 0.
       77 SAIDA          PIC Z,ZZZ.99.
       77 TEMP-S         PIC X(6).
       77 TEMP-M         PIC X(6).

       SCREEN SECTION.
       01 MENU.
           05 COL 01 VALUE "                         DATA:  "   LINE 01.
           05 COL 01 VALUE "*********BANCOBOM*********"         LINE 02.
           05 COL 01 VALUE "******SEUS MOVIMENTOS*****"         LINE 03.
           05 COL 01 VALUE "                SALDO INICIAL: "    LINE 04.
           05 COL 01 VALUE "OPERACAO (C)CREDITO (D)DEBITO: "    LINE 06.
           05 COL 01 VALUE "            VALOR DO MONTANTE:"     LINE 08.
           05 COL 01 VALUE "-------------------------"          LINE 09.
           05 COL 01 VALUE "                       SALDO :"     LINE 10.
           05 COL 01 VALUE "-------------------------"          LINE 13.
       01 DATA-SISTEMA.
           05 ANO PIC 9(4).
           05 MES PIC 9(2).
           05 DIA PIC 9(2).
       01 LIMPA-ECRAN.

       PROCEDURE DIVISION.
           DISPLAY LIMPA-ECRAN.
           DISPLAY MENU.
       INICIO.
           ACCEPT DATA-SISTEMA FROM DATE YYYYMMDD.
           DISPLAY FUNCTION CONCATENATE (DIA,"-",MES,"-",ANO) AT 0132.
       PARAGRAFO-SALDO.
           ACCEPT TEMP-S AT 0432.
           MOVE FUNCTION NUMVAL(TEMP-S) TO SALDO.
       MOVIMENTOS.
           ACCEPT OPERACAO AT 0632 PROMPT.
           DISPLAY " " ERASE EOL AT 0660.

           ACCEPT TEMP-M AT 0832.
           MOVE FUNCTION NUMVAL(TEMP-M) TO MONTANTE.
           IF (OPERACAO= "C") THEN
               COMPUTE SALDO = SALDO + MONTANTE
               MOVE SALDO TO SAIDA
               DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1032
               DISPLAY " " ERASE EOL AT 0637
               DISPLAY " " ERASE EOL AT 0837
           ELSE
               IF (OPERACAO= "D") THEN
                   COMPUTE SALDO = SALDO - MONTANTE
                   MOVE SALDO TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1032
                   DISPLAY " " ERASE EOL AT 0637
                   DISPLAY " " ERASE EOL AT 0837
               ELSE
                   IF (OPERACAO = "S") THEN
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 1032
                   DISPLAY "  -SALDO FINAL" AT 1040
                   DISPLAY " OBRIGADO POR NOS ESCOLHER!" AT 1065
                   DISPLAY " " ERASE EOL AT 0432
                   DISPLAY " " ERASE EOL AT 0637
                   DISPLAY " " ERASE EOL AT 0837

                   END-IF
               END-IF
           END-IF.
           PERFORM MOVIMENTOS UNTIL OPERACAO = "S".
           ACCEPT OMITTED.
            STOP RUN.
        END PROGRAM banco2.
