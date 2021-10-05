      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. sabao.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL FIC ASSIGN "INDEX.TXT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS NUMERO-FATURA
           FILE STATUS IS FS.
       DATA DIVISION.
       FILE SECTION.
       FD FIC.
       01 REGISTO.
           05 NUMERO-FATURA       PIC X(5).
           05 DIA         PIC X(2).
           05 MES         PIC X(2).
           05 ANO         PIC X(4).
           05 PRAZO       PIC X(2).
           05 VALOR       PIC 9(5)V99.
           05 PAGO        PIC A VALUES SPACES.
           05 NIF         PIC X(9).
       WORKING-STORAGE SECTION.
       77 FS               PIC X(2).
       77 REPETIR          PIC X VALUE "S".
       77 OPCAO            PIC 9.
       77 EXISTE           PIC 9.
       88 VALIDA-PAGO      VALUES "S","N","s","n".
       88 VALIDA-PRAZO     VALUES 0,30,45,60,90,120.
       77 SAIDA            PIC ZZ.ZZZ.ZZ.
       SCREEN SECTION.
         01 CLS BLANK SCREEN.
         01 LAYOUT.
           03 COL 01 VALUE "*******************************************"
            & "*****************************"
            FOREGROUND-COLOR 2 HIGHLIGHT                        LINE 2.
           03 COL 01 VALUE "SABLIMPA,LDA "  FOREGROUND-COLOR 3 HIGHLIGHT
                                                                LINE 3.
           03 COL 50 VALUE "DATA: "FOREGROUND-COLOR 3 HIGHLIGHT
                                                                LINE 3.
           03 COL 01 VALUE "*******************************************"
            & "*****************************"
           FOREGROUND-COLOR 2 HIGHLIGHT                         LINE 4.
           03 COL 20 VALUE "GESTAO DE FATURAS "
           FOREGROUND-COLOR 3 HIGHLIGHT                         LINE 6.
           03 COL 1 VALUE "*******************************************"&
           "*****************************"
           FOREGROUND-COLOR 2 HIGHLIGHT                         LINE 7.
           03 COL 01 VALUE "1-REGISTAR FATURA: "                LINE 8.
           03 COL 01 VALUE "2-CONSULTAR FATURA: "               LINE 9.
           03 COL 01 VALUE "3-ALTERAR FATURA: "                 LINE 10.
           03 COL 01 VALUE "4-ELIMINAR FATURA: "                LINE 11.
           03 COL 01 VALUE "5-LISTAGEM GERAL: "                 LINE 12.
           03 COL 01 VALUE "0-SAIR DO PROGRAMA: "               LINE 13.
           03 COL 01 VALUE "DIGITE OPCAO DESEJADA[ ] "          LINE 15.

           01 DATA-SISTEMA.
           05 WRK-ANO PIC 9(4).
           05 WRK-MES PIC 9(2).
           05 WRK-DIA PIC 9(2).

         01 CABECALHO1.
           05 COL 1 VALUE "*******************************************"&
           "*****************************"
           FOREGROUND-COLOR 2 HIGHLIGHT                         LINE 1.
           05 COL 01 VALUE "REGISTAR FATURA"                  LINE 2.
           05 COL 1 VALUE "*******************************************"&
           "*****************************"
           FOREGROUND-COLOR 2 HIGHLIGHT                         LINE 3.
           05 COL 01 VALUE "    NUMERO DA FATURA: "             LINE 5.
           05 COL 01 VALUE "                DATA:  /  /     "   LINE 6.
           05 COL 01 VALUE "PRAZO PARA PAGAMENTO: "             LINE 7.
           05 COL 01 VALUE "       VALOR A PAGAR: "             LINE 8.
           05 COL 01 VALUE "          VALOR PAGO: "             LINE 9.
           05 COL 01 VALUE "                 NIF: "             LINE 10.
           05 COL 01 VALUE "*******************************************"
            &"*****************************"
           FOREGROUND-COLOR 2 HIGHLIGHT                         LINE 12.
       PROCEDURE DIVISION.
       INICIO.
           DISPLAY CLS.
           DISPLAY LAYOUT.
           ACCEPT DATA-SISTEMA FROM DATE YYYYMMDD.
           DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
            WRK-ANO) AT 0355.
           PERFORM UNTIL (REPETIR="N")
           ACCEPT OPCAO AT 1523
               EVALUATE OPCAO
                   WHEN 1 PERFORM REGISTAR
                   WHEN 2 PERFORM CONSULTAR
                   WHEN 3 PERFORM ALTERAR
                   WHEN 4 PERFORM ELIMINAR
                   WHEN 5 PERFORM LISTAR
                   WHEN 0 STOP RUN
               END-EVALUATE
           END-PERFORM.
           CLOSE FIC.
           STOP RUN.
           ACCEPT OMITTED.
       REGISTAR.
           DISPLAY CLS.
           DISPLAY CABECALHO1.
           MOVE 0 TO EXISTE.
           ACCEPT NUMERO-FATURA AT 0522.
                IF (NUMERO-FATURA = 1) THEN
                    DISPLAY "ESTA FATURA JÁ EXISTE!" AT 0535
                    ELSE
                        DISPLAY " " ERASE EOL AT 0535
                END-IF.
           ACCEPT DIA AT 0622.
           ACCEPT MES AT 0625.
           ACCEPT ANO AT 0628.
           ACCEPT PRAZO AT 0722.
                IF (NOT VALIDA-PRAZO) THEN
                    DISPLAY "PRAZO INEXISTENTE!"FOREGROUND-COLOR 4
                                                       HIGHLIGHT AT 0735
                    ELSE
                       DISPLAY " " ERASE EOL AT 0735
                END-IF.
           ACCEPT VALOR AT 0822.
           MOVE VALOR TO SAIDA.
           DISPLAY FUNCTION CONCATENATE(SAIDA) AT 0822.
           ACCEPT PAGO AT 0822.
                  IF (NOT VALIDA-PAGO) THEN
                      DISPLAY "OPCAO INVALIDA!!" AT 0835
                       ELSE
                          DISPLAY " " ERASE EOL AT 0835
                  END-IF.
           MOVE 0 TO EXISTE.
           WRITE REGISTO
               INVALID KEY MOVE 1 TO EXISTE
           END-WRITE.
           IF (EXISTE=0) THEN
               DISPLAY "REGISTO INSERIDO COM SUCESSO" AT 1320
           ELSE
               DISPLAY "REGISTO JA EXISTE" AT 1320
           END-IF.
           ACCEPT OMITTED.
       CONSULTAR.
       ALTERAR.
       ELIMINAR.
       LISTAR.

            STOP RUN.
       END PROGRAM sabao.
