      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. pizahut.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 PEDIDO         PIC 9(3)     VALUE 0.
       77 CLIENTE        PIC A(30)    VALUES SPACES.
       77 CONTATO        PIC 9(9)     VALUE 0.
       77 TEMP-CONTATO   PIC X(9).
       77 TIPO           PIC 9        VALUE 0.
           88 VALIDA-TIPO VALUE 1 THRU 3.
       77 EXTRA          PIC 9(2)     VALUE 0.
           88 VALIDA-EXTRA VALUE 1 THRU 10.

       77 VALOR-EXTRA    PIC 9(2)V99  VALUE 0.
       77 VALOR-TIPO     PIC 9(2)V99  VALUE 0.
       77 TOTAL          PIC 9(2)V99  VALUE 0.
       77 SAIDA          PIC ZZ,ZZ.99.
       77 SAIDA-EXTRA    PIC Z,ZZ.99.
       77 TEMP           PIC X(3).
       77 LINHA          PIC 9(2)     VALUE 0.
       77 CONTADOR       PIC 9(1)       VALUE 0.

       77 IVA            PIC 9(2)V99 VALUE 0.

       SCREEN SECTION.
       01 DATA-SISTEMA.
           05 ANO PIC 9(4).
           05 MES PIC 9(2).
           05 DIA PIC 9(2).

       01 CLS BLANK SCREEN.
       01 MENU.
           05 COL 01 VALUE "*******PIZZARIA RAMALHO********"     LINE 3
           FOREGROUND-COLOR 3 HIGHLIGHT.
           05 COL 01 VALUE "     PIZA E DERIVADOS,LDA      "     LINE 4
           FOREGROUND-COLOR 3 HIGHLIGHT.
           05 COL 01 VALUE "      *GESTAO DE PEDIDOS*      "     LINE 5
           FOREGROUND-COLOR 3 HIGHLIGHT.
           05 COL 01 VALUE "********************************"   LINE 13.
           05 COL 01 VALUE "PEDIDO:          CLIENTE:  "        LINE 09.
           05 COL 01 VALUE "DATA: /  /       CONTATO:  "        LINE 10.
           05 COL 01 VALUE "********************************"   LINE 13.
           05 COL 01 VALUE "FACA SEU PEDIDO:      "             LINE 15.
           05 COL 01 VALUE "(1)PEQUENA (2)MEDIA (3)GRANDE"      LINE 16.
           05 COL 01 VALUE "NUM. INGREDIENTES:"                 LINE 17.
           05 COL 01 VALUE "COD EXTRA:                   "      LINE 18.
           05 COL 01 VALUE "TOTAL EXTRA:                 "      LINE 19.
           05 COL 01 VALUE "TOTAL PIZA:                  "      LINE 20.
           05 COL 01 VALUE "VALOR SEM IVA:               "      LINE 21.
           05 COL 01 VALUE "IVA(23%):                    "      LINE 22.
           05 COL 01 VALUE "TOTAL A PAGAR:               "      LINE 23.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY CLS.
           DISPLAY MENU.

           ACCEPT DATA-SISTEMA FROM DATE YYYYMMDD.
           DISPLAY FUNCTION CONCATENATE (DIA,"-",MES,"-",ANO) AT 1006.

           ACCEPT TEMP AT 0908.
           MOVE FUNCTION NUMVAL(TEMP) TO PEDIDO.

           ACCEPT CLIENTE AT 0926.

           ACCEPT TEMP-CONTATO AT 1026.
           MOVE FUNCTION NUMVAL(TEMP-CONTATO) TO CONTATO.

       AVALIAR-TIPO.
           ACCEPT TEMP AT 1517.
           MOVE FUNCTION NUMVAL(TEMP) TO TIPO.
           IF (NOT VALIDA-TIPO) THEN
               DISPLAY "N. INVALIDO !!!" FOREGROUND-COLOR 4
               HIGHLIGHT AT 1525
               GO AVALIAR-TIPO
           ELSE
               DISPLAY " " ERASE EOL AT 1520
           END-IF.
           EVALUATE TIPO
               WHEN 1
                   DISPLAY "1-PEQUENA 3.00" AT 1520
                   ADD 3.00 TO VALOR-TIPO
                   MOVE VALOR-TIPO TO SAIDA
                   DISPLAY SAIDA AT 2013

               WHEN 2
                   DISPLAY "2-MEDIA 4.00" AT 1520
                   ADD 4.00 TO VALOR-TIPO
                   MOVE VALOR-TIPO TO SAIDA
                   DISPLAY SAIDA AT 2013

               WHEN 3
                   DISPLAY "3-GRANDE 5.00" AT 1520
                   ADD 5.00 TO VALOR-TIPO
                   MOVE VALOR-TIPO TO SAIDA
                   DISPLAY SAIDA AT 2013
           END-EVALUATE.
           DISPLAY SAIDA AT 2116.


       PARAGRAFO-ESCOLHA.
           ACCEPT CONTADOR AT 1726.

           IF CONTADOR > 5 THEN
               DISPLAY "MAXIMO E 5!" FOREGROUND-COLOR 4 AT 1735
               GO PARAGRAFO-ESCOLHA
           ELSE
               DISPLAY " " ERASE EOL AT 1730
           END-IF.

           PERFORM UNTIL CONTADOR=0
               PERFORM WITH TEST AFTER UNTIL VALIDA-EXTRA
                   ACCEPT TEMP AT 1813
                   MOVE FUNCTION NUMVAL(TEMP) TO EXTRA
                   IF (NOT VALIDA-EXTRA) THEN
                       DISPLAY "INGREDIENTE INVALIDO !!!"
                       FOREGROUND-COLOR 4 AT 1820
                   ELSE
                        DISPLAY " " ERASE EOL AT 1817
                   END-IF
               END-PERFORM

           EVALUATE EXTRA
               WHEN 1
                   DISPLAY "   1-FIAMBRE 0.5" AT 1815
                   COMPUTE VALOR-EXTRA= 0.5 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 2
                   DISPLAY "      2-ATUM 0.7" AT 1815
                   COMPUTE VALOR-EXTRA= 0.7 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 3
                   DISPLAY "   3-ANCHOVA 0.4" AT 1815
                   COMPUTE VALOR-EXTRA= 0.4 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 4
                   DISPLAY "   4-CAMARAO 0.8" AT 1815
                   COMPUTE VALOR-EXTRA= 0.8 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 5
                   DISPLAY "     5-BACON 0.9" AT 1815
                   COMPUTE VALOR-EXTRA= 0.9 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 6
                   DISPLAY "    6-BANANA 0.3" AT 1815
                   COMPUTE VALOR-EXTRA= 0.3 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 7
                   DISPLAY "    7-ANANAS 0.4" AT 1815
                   COMPUTE VALOR-EXTRA= 0.4 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 8
                   DISPLAY "  8-AZEITONA 0.3" AT 1815
                   COMPUTE VALOR-EXTRA= 0.3 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY SAIDA-EXTRA AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY SAIDA AT 2116

               WHEN 9
                   DISPLAY "  9-COGUMELOS 0.6" AT 1815
                   COMPUTE VALOR-EXTRA= 0.6 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY FUNCTION CONCATENATE(SAIDA-EXTRA) AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 2116

               WHEN 10
                   DISPLAY "     10-MILHO 0.5" AT 1815
                   COMPUTE VALOR-EXTRA= 0.5 + VALOR-EXTRA
                   MOVE VALOR-EXTRA TO SAIDA-EXTRA
                   DISPLAY FUNCTION CONCATENATE(SAIDA-EXTRA) AT 1913
                   COMPUTE TOTAL= VALOR-EXTRA + VALOR-TIPO
                   MOVE TOTAL TO SAIDA
                   DISPLAY FUNCTION CONCATENATE(SAIDA) AT 2116
           END-EVALUATE

           COMPUTE CONTADOR = CONTADOR - 1

           END-PERFORM.

           COMPUTE IVA = TOTAL * 0.23
           MOVE IVA TO SAIDA
           DISPLAY SAIDA AT 2210

           COMPUTE TOTAL = TOTAL + IVA
           MOVE TOTAL TO SAIDA
           DISPLAY SAIDA AT 2316

           ACCEPT OMITTED AT 2501.

            STOP RUN.
       END PROGRAM pizahut.
