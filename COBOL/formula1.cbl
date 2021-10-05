      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. formula1.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
           SELECT OPTIONAL FICFORM ASSIGN "Formulas.TXT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD FICFORM.
       01 REGISTO.
           03 FORMULA                       PIC X(50)   VALUE SPACES.
           03 CODIGO                        PIC X(50)   VALUE SPACES.
           03 TIPO                          PIC A(10)   VALUE SPACES.
           03 UNIDADE                       PIC X(5)    VALUE SPACES.
           03 REF1                          PIC A(10)   VALUE SPACES.
           03 VALOR1                        PIC X(20)   VALUE SPACES.
           03 REF2                          PIC A(10)   VALUE SPACES.
           03 VALOR2                        PIC X(20)   VALUE SPACES.
           03 REF3                          PIC A(10)   VALUE SPACES.
           03 VALOR3                        PIC X(20)   VALUE SPACES.
           03 REF4                          PIC X(10)   VALUE SPACES.
           03 VALOR4                        PIC X(20)   VALUE SPACES.
           03 REF5                          PIC X(10)   VALUE SPACES.
           03 VALOR5                        PIC X(20)   VALUE SPACES .
           03 REF6                          PIC X(10)   VALUE SPACES.
           03 VALOR6                        PIC X(21)   VALUE SPACES .
           03 R                             PIC X(20)   VALUES SPACES.
           03 G                             PIC X(20)   VALUES SPACES.
           03 B                             PIC X(19)   VALUES SPACES.
           03 C1                            PIC X(03)   VALUES SPACES.
           03 C2                            PIC X(19)   VALUES SPACES.
           03 C3                            PIC X(2)    VALUES SPACES.
           03 C4                            PIC X(1)    VALUES SPACES.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC 9 VALUE 1.
       77 WRK-LINHA        PIC 9(2).
       77 WRK-CONTA-LINHA  PIC 9(2).
       77 WRK-PAGINA       PIC 9(3).

       SCREEN SECTION.
         01 CLS BLANK SCREEN.
         01 LAYOUT.
           03 COL 1 VALUE "-----------------------------------------"&
           "----------------------------------------------------------"&
           "----------------------------------------------------------"
           & "------------------------------"
           FOREGROUND-COLOR 2 HIGHLIGHT                          LINE 2.
           03 COL 1 VALUE "OUTRAS TINTAS,LDA"
           FOREGROUND-COLOR 3 HIGHLIGHT
                                                                 LINE 3.
           03 COL 1 VALUE "PAG: "                                LINE 4.
           03 COL 1 VALUE "-----------------------------------------"&
           "----------------------------------------------------------"
           & "--------------------------------------------------------"
           & "--------------------------------------------------------"
           FOREGROUND-COLOR 2 HIGHLIGHT                          LINE 5.
           03 COL 1 VALUE "FORMULA                    COD       TIPO  "
           & "   UND    REF1    VALOR1     REF2  VALOR2     REF3"
           & "    VALOR3     REF4  VALOR4     REF5  VALOR5   REF6   "
           & "VALOR6      R    G   B    C1 C2  C3  C4  "
               FOREGROUND-COLOR 3 HIGHLIGHT                      LINE 6.
           03 COL 1 VALUE "-------------------------------------------"&
           "-----------------------------------------------------------"
           & "---------------------------------------------------------"
           & "-----------------------------"
           FOREGROUND-COLOR 2 HIGHLIGHT                          LINE 7.
       PROCEDURE DIVISION.
       INICIO.
           DISPLAY CLS.
           DISPLAY "(1) PARA LISTAGEM (0) PARA SAIR:" FOREGROUND-COLOR
           2 HIGHLIGHT AT 0101.
           ACCEPT WRK-OPCAO AT 0133.
           EVALUATE (WRK-OPCAO)
               WHEN 1 PERFORM PARAGRAFO-LISTA
           END-EVALUATE.

           PARAGRAFO-LISTA.
           DISPLAY CLS.
           DISPLAY LAYOUT.
           MOVE 8 TO WRK-LINHA.
           MOVE 1 TO WRK-PAGINA.
           MOVE 0 TO WRK-CONTA-LINHA.
           DISPLAY FUNCTION CONCATENATE(WRK-PAGINA) AT 0405.
           OPEN INPUT FICFORM.
           MOVE LOW-VALUES TO REGISTO.
           PERFORM UNTIL REGISTO=HIGH-VALUES
               READ FICFORM
                   AT END MOVE HIGH-VALUES TO REGISTO
               END-READ
               IF(NOT REGISTO=HIGH-VALUES) THEN
                   DISPLAY FORMULA         LINE WRK-LINHA COL 1
                   DISPLAY CODIGO          LINE WRK-LINHA COL 28
                   DISPLAY TIPO            LINE WRK-LINHA COL 38
                   DISPLAY UNIDADE         LINE WRK-LINHA COL 47
                   DISPLAY REF1            LINE WRK-LINHA COL 54
                   DISPLAY VALOR1          LINE WRK-LINHA COL 62
                   DISPLAY REF2            LINE WRK-LINHA COL 73
                   DISPLAY VALOR2          LINE WRK-LINHA COL 79
                   DISPLAY REF3            LINE WRK-LINHA COL 90
                   DISPLAY VALOR3          LINE WRK-LINHA COL 98
                   DISPLAY REF4            LINE WRK-LINHA COL 110
                   DISPLAY VALOR4          LINE WRK-LINHA COL 115
                   DISPLAY REF5            LINE WRK-LINHA COL 126
                   DISPLAY VALOR5          LINE WRK-LINHA COL 132
                   DISPLAY REF6            LINE WRK-LINHA COL 141
                   DISPLAY VALOR6          LINE WRK-LINHA COL 148
                   DISPLAY R               LINE WRK-LINHA COL 160
                   DISPLAY G               LINE WRK-LINHA COL 165
                   DISPLAY B               LINE WRK-LINHA COL 169
                   DISPLAY C1              LINE WRK-LINHA COL 174
                   DISPLAY C2              LINE WRK-LINHA COL 177
                   DISPLAY C3              LINE WRK-LINHA COL 181
                   DISPLAY C4              LINE WRK-LINHA COL 185

                ADD 1 TO WRK-LINHA
                ADD 1 TO WRK-CONTA-LINHA
                  IF (WRK-CONTA-LINHA>=20) THEN
                  DISPLAY "-------------------------------------------"&
           "-----------------------------------------------------------"
           & "---------------------------------------------------------"
           & "-----------------------------"
                       FOREGROUND-COLOR 2 HIGHLIGHT LINE WRK-LINHA COL 1
                       ADD 2 TO WRK-LINHA
                       DISPLAY "ENTER PARA CONTINUAR:" LINE WRK-LINHA
                                      COL 1 FOREGROUND-COLOR 3 HIGHLIGHT
                       ACCEPT OMITTED LINE WRK-LINHA COL 22
                       DISPLAY CLS
                       DISPLAY LAYOUT
                       MOVE 8 TO WRK-LINHA
                       ADD 1 TO WRK-PAGINA
                       DISPLAY FUNCTION CONCATENATE(WRK-PAGINA) AT 0405
                       MOVE 0 TO WRK-CONTA-LINHA
                  END-IF
              END-IF
           END-PERFORM.

           DISPLAY "-----------------------------------------" &
           "---------------------------------------------------------" &
           "----------------------------------------------------------"&
                        "---------------------------------------------"&
                        "----------------------------------------------"
                      FOREGROUND-COLOR 2 HIGHLIGHT LINE WRK-LINHA COL 1.
           ADD 1 TO WRK-LINHA.
           DISPLAY "FIM DA LISTAGEM" FOREGROUND-COLOR 4 HIGHLIGHT
                                                   LINE WRK-LINHA COL 1.
           ACCEPT OMITTED LINE WRK-LINHA COL 22.

           CLOSE FICFORM.
           STOP RUN.

       END PROGRAM formula1.
