      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. sanca.
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
           SELECT OPTIONAL FICSANCA ASSIGN "HOME.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD FICSANCA.
       01 REGISTO.
           03 DESCRICAO                     PIC X(32) VALUE SPACES.
           03 QUANTIDADE                    PIC 9(3) VALUE 0.
           03 UNIDADE                       PIC A(2) VALUE SPACES.
           03 PR-UNITARIO                   PIC 9(2) VALUE 0.

       WORKING-STORAGE SECTION.
       77 LINHA               PIC 9(2) VALUE 1.
       77 PAGINA              PIC 9(2) VALUE 0.
       77 LINHAS-PAG          PIC 9(2) VALUE 0.
       77 TOTAL-QUANT         PIC 9(6) VALUE 0.
       77 TOTAL-QUANT-ACUM    PIC 9(7) VALUE 0.
       77 PRECO-UNIT          PIC 9(6) VALUE 0.
       77 SAIDA               PIC ZZZ.
       77 TOTAL-FINAL         PIC 9(7) VALUE 0.
       77 ACUM-FINAL          PIC 9(7) VALUE 0.
       77 SAIDA-FINAL               PIC ZZ,ZZZ,ZZZ.
       SCREEN SECTION.
         01 CLS BLANK SCREEN.
         01 LAYOUT.
           03 COL 1 VALUE "-----------------------------------------"&
           "----------------------------------------------------------"
            FOREGROUND-COLOR 2 HIGHLIGHT                         LINE 2.
           03 COL 1 VALUE "SANCAS,LDA"   FOREGROUND-COLOR 3 HIGHLIGHT
                                                                 LINE 3.
           03 COL 1 VALUE "PAG: "                                LINE 4.
           03 COL 1 VALUE "-----------------------------------------"&
           "----------------------------------------------------------"
           FOREGROUND-COLOR 2 HIGHLIGHT                          LINE 5.
           03 COL 1 VALUE "DESCRICAO                   "
           & "QUANTIDADE       UNIDADE      PRECO UNITARIO      "
            & "     TOTAL"     FOREGROUND-COLOR 3 HIGHLIGHT
                                                                 LINE 6.
           03 COL 1 VALUE "-------------------------------------------"&
           "--------------------------------------------------------"
           FOREGROUND-COLOR 2 HIGHLIGHT                          LINE 7.
       PROCEDURE DIVISION.
       INICIO.
           DISPLAY CLS.
           DISPLAY LAYOUT.
           MOVE 8 TO LINHA.
           MOVE 1 TO PAGINA.
           MOVE 0 TO LINHAS-PAG.
           DISPLAY FUNCTION CONCATENATE(PAGINA) AT 0405.
           OPEN INPUT FICSANCA.
           PERFORM UNTIL REGISTO=HIGH-VALUES
               READ FICSANCA
                  AT END MOVE HIGH-VALUES TO REGISTO
               END-READ
               IF(NOT REGISTO=HIGH-VALUES) THEN
                   DISPLAY DESCRICAO LINE LINHA POSITION 01
                   MOVE QUANTIDADE TO SAIDA
                   ADD QUANTIDADE TO TOTAL-QUANT
                   DISPLAY SAIDA LINE LINHA POSITION 32
                   DISPLAY UNIDADE LINE LINHA POSITION 49
                   MOVE PR-UNITARIO TO SAIDA
                   DISPLAY SAIDA LINE LINHA POSITION 62
                   COMPUTE PRECO-UNIT = QUANTIDADE * PR-UNITARIO
                   MOVE PRECO-UNIT TO SAIDA-FINAL
                   ADD PRECO-UNIT TO TOTAL-FINAL
                   DISPLAY SAIDA-FINAL LINE LINHA POSITION 78
                   ADD 1 TO LINHA
                   ADD 1 TO LINHAS-PAG
                   IF (LINHAS-PAG)>15 THEN
                      PERFORM PARAGRAFO-TOTAL
                      ADD 2 TO LINHA
                      DISPLAY "ENTER PARA CONTINUAR:" LINE LINHA
                      POSITION 1 FOREGROUND-COLOR 2 HIGHLIGHT
                      ACCEPT OMITTED LINE LINHA POSITION 25
                      ADD 1 TO PAGINA
                      DISPLAY CLS
                      DISPLAY LAYOUT
                      DISPLAY PAGINA AT 0405
                      MOVE 8 TO LINHA
                      MOVE 0 TO LINHAS-PAG
                      MOVE 0 TO TOTAL-QUANT
                      MOVE 0 TO TOTAL-FINAL
                   END-IF
               END-IF
           END-PERFORM.
           CLOSE FICSANCA.
           MOVE LOW-VALUES TO REGISTO.
           DISPLAY "-------------------------------------" &
                   "--------------------------------------------------"
                   FOREGROUND-COLOR 2 HIGHLIGHT   LINE LINHA POSITION 1.
           PERFORM PARAGRAFO-TOTAL.
           ADD 2 TO LINHA.
           DISPLAY "ENTER PARA TERMINAR:"         LINE LINHA POSITION 1
           FOREGROUND-COLOR 6 HIGHLIGHT.
           ACCEPT OMITTED                        LINE LINHA POSITION 20.
           STOP RUN.
       PARAGRAFO-TOTAL.
           DISPLAY "-------------------------------------------------" &
           "--------------------------------------------------"
           FOREGROUND-COLOR 2 HIGHLIGHT           LINE LINHA POSITION 1.
           COMPUTE TOTAL-QUANT-ACUM = TOTAL-QUANT-ACUM + TOTAL-QUANT.
           COMPUTE ACUM-FINAL = ACUM-FINAL + TOTAL-FINAL.
           ADD 1 TO LINHA.
           DISPLAY "TOTAL:" FOREGROUND-COLOR 3 HIGHLIGHT
                                                  LINE LINHA POSITION 1.
           MOVE TOTAL-QUANT TO SAIDA-FINAL.
           DISPLAY SAIDA-FINAL                   LINE LINHA POSITION 32.
           MOVE TOTAL-FINAL TO SAIDA-FINAL.
           DISPLAY SAIDA-FINAL                   LINE LINHA POSITION 78.
           ADD 1 TO LINHA.
           DISPLAY "ACUMULADO:" FOREGROUND-COLOR 3 HIGHLIGHT
                                                  LINE LINHA POSITION 1.
           MOVE TOTAL-QUANT-ACUM TO SAIDA-FINAL.
           DISPLAY SAIDA-FINAL                   LINE LINHA POSITION 32.
           MOVE ACUM-FINAL TO SAIDA-FINAL.
           DISPLAY SAIDA-FINAL                   LINE LINHA POSITION 78.
           ADD 1 TO LINHA.


       END PROGRAM sanca.
