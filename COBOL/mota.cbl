      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. mota.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL FICMOTA ASSIGN "FICHMOTA.TXT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FICMOTA.
       01 REGISTO.
           05 DATA-VENDA    PIC X(10).
           05 MARCA         PIC A(20).
           05 MODELO        PIC A(20).
           05 MATRICULA     PIC X(8).
           05 CLIENTE       PIC A(40).
           05 TEL           PIC 9(9).
           05 ANOF          PIC 9(4).
           05 KM            PIC S9(8).
           05 PRECO-VENDA     PIC S9(8).

       WORKING-STORAGE SECTION.
       77 CONFIRMA PIC A VALUES SPACES.
       77 VENDA    PIC ZZ.ZZZ,ZZ.
       77 SOMA     PIC 9(8)V99 VALUE 0.
       77 MAIOR    PIC 9(6)V99.
       77 OPCAO    PIC 9 VALUE 0.
           88 VALIDA-OPCAO VALUES 0 THRU 9.
       77 LINHA    PIC 9(2) VALUE 0.
       77 DIA      PIC 9(2).
       77 MES      PIC 9(2).
       77 ANO      PIC 9(4).
       77 TEMPV    PIC X(8).
       77 TEMPK    PIC X(6).
       77 TEMPF    PIC X(4).
       77 TEMPT    PIC X(9).
       77 SAIDAKM   PIC Z(6).
       77 SAIDAPV   PIC Z(6).ZZ.
       77 IVA      PIC 9(2)V99.
       77 VALOR-TOTAL  PIC ZZZ.ZZZ,ZZ.
       SCREEN SECTION.
       01 CLS BLANK SCREEN.
       01 MENU.

           05 COL 01 VALUE "MOTA AUTO, LDA "                    LINE 02.
           05 COL 01 VALUE "----------------------------------------" &
           "--------------------------------------------------------"
                                                                LINE 03.
           05 COL 45 VALUE "MENU"                               LINE 04.
           05 COL 01 VALUE "----------------------------------------" &
           "--------------------------------------------------------"
                                                                LINE 05.
           05 COL 01 VALUE "1 NOVO REGISTO."                    LINE 07.
           05 COL 01 VALUE "2 PESQUISA POR MATRICULA."          LINE 09.
           05 COL 01 VALUE "3 MOSTRAR TODAS AS VIATURAS."       LINE 11.

           05 COL 01 VALUE "4 MOSTRAR AS VIATURAS POR MARCA."   LINE 13.

           05 COL 01 VALUE "5 LISTAGEM GERAL COM IVA(23%)"
            & "E VALOR FINAL."                                  LINE 15.

           05 COL 01 VALUE "6 MOSTRAR TODAS AS VIATURAS COM ANO DE" &
            "FABRICO INFERIOR AO ANO DE 2019."                  LINE 17.
           05 COL 01 VALUE "7 CONTAGEM DE VIATURAS VENDIDAS POR MARCA."
                                                                LINE 19.
           05 COL 01 VALUE "8 TOTAIS POR MARCA."                LINE 21.
           05 COL 01 VALUE "9 MAIOR VENDA."                     LINE 23.
           05 COL 01 VALUE "0 SAIR."                            LINE 25.
           05 COL 01 VALUE "----------------------------------------" &
           "--------------------------------------------------------"
                                                                LINE 27.
           05 COL 01 VALUE "[ ] DIGITE A SUA OPCAO."            LINE 28.
           05 COL 01 VALUE "----------------------------------------" &
           "--------------------------------------------------------"
                                                                LINE 29.
       01 MENU-RECOLHA.
           05 COL 01 VALUE "----------------------------------------"
                                                                LINE 02.
           05 COL 01 VALUE "MOTA AUTO - RECOLHA DE DADOS"       LINE 03.
           05 COL 01 VALUE "----------------------------------------"
                                                                LINE 04.
       PROCEDURE DIVISION.
           INICIO.


           DISPLAY CLS.
           DISPLAY MENU.
           ACCEPT OPCAO AT 2802.
           EVALUATE OPCAO
                   WHEN 1 PERFORM NOVO-REGISTO
                   WHEN 2 PERFORM PESQUISA-MAT
                   WHEN 3 PERFORM VIATURAS
                   WHEN 4 PERFORM MARCAS
                   WHEN 5 PERFORM LISTAGEM-GERAL
                   WHEN 6 PERFORM ABAIXO-2019
                   WHEN 7 PERFORM VIATURAS-MARCA
                   WHEN 8 PERFORM TOTAIS-MARCA
                   WHEN 9 PERFORM MAIOR-VENDA
                   WHEN 0 STOP RUN
           END-EVALUATE.

       NOVO-REGISTO.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA

           DISPLAY "DATA DA VENDA: " AT 0701.
           ACCEPT DATA-VENDA AT 0715.

           DISPLAY "MARCA: " AT 0801.
           ACCEPT MARCA AT 0807.

           DISPLAY "MODELO: " AT 0901.
           ACCEPT MODELO AT 0909.

           DISPLAY "MATRICULA:" AT 1001.
           ACCEPT MATRICULA AT 1012.

           DISPLAY "NOME DO CLIENTE:" AT 1101.
           ACCEPT CLIENTE AT 1118.

           DISPLAY "CONTACTO:" AT 1201.
           ACCEPT TEMPT AT 1210.
           MOVE FUNCTION NUMVAL(TEMPT) TO TEL
           DISPLAY TEL AT 1210.

           DISPLAY "ANO DE FABRICO:" AT 1301.
           ACCEPT TEMPF AT 1316.
           MOVE FUNCTION NUMVAL(TEMPF) TO ANOF.
           DISPLAY ANOF AT 1316.

           DISPLAY "KMS:" AT 1401.
           ACCEPT TEMPK AT 1405.
           MOVE FUNCTION NUMVAL(TEMPK) TO KM.
           MOVE KM TO SAIDAKM.
           DISPLAY SAIDAKM AT 1405.

           DISPLAY "PRECO DE VENDA:" AT 1501.
           ACCEPT TEMPV AT 1517.
           MOVE FUNCTION NUMVAL(TEMPV) TO PRECO-VENDA.
           MOVE PRECO-VENDA TO SAIDAPV.
           DISPLAY SAIDAPV AT 1517.


           DISPLAY "CONFIRMA DADOS INDICADOS(S/N):" AT 1701.
           ACCEPT CONFIRMA AT 1732.

           IF FUNCTION UPPER-CASE(CONFIRMA)="S" THEN
               OPEN EXTEND FICMOTA
               WRITE REGISTO
               CLOSE FICMOTA
               DISPLAY "DADOS INSERIDOS COM SUCESSO!" AT 1801
               GO INICIO
              ELSE
                  GO NOVO-REGISTO
           END-IF.

       PESQUISA-MAT.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "INSIRA O NUM DA MATRICULA: " FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.
           ACCEPT MATRICULA LINE LINHA POSITION 28.
           ADD 1 TO LINHA
           OPEN INPUT FICMOTA.
           PERFORM UNTIL REGISTO = MATRICULA
           READ FICMOTA
           END-READ
           IF (REGISTO=MATRICULA) THEN
               DISPLAY DATA-VENDA LINE LINHA POSITION 1
               DISPLAY MARCA LINE LINHA POSITION 9
               DISPLAY MODELO LINE LINHA POSITION 23
               DISPLAY MATRICULA LINE LINHA POSITION 33
               DISPLAY CLIENTE LINE LINHA POSITION 41
               DISPLAY TEL LINE LINHA POSITION 60
               DISPLAY ANOF LINE LINHA POSITION 70
               DISPLAY KM LINE LINHA POSITION 75
               DISPLAY PRECO-VENDA LINE LINHA POSITION 82
           END-IF
           ADD 1 TO LINHA
           END-PERFORM.
           DISPLAY "DESEJA CONSULTAR NOVAMENTE(S/N): " AT 1601.
           ACCEPT CONFIRMA AT 1732.
           IF FUNCTION UPPER-CASE(CONFIRMA)="S" THEN
           GO VIATURAS
              ELSE
                  GO INICIO
           END-IF.

       VIATURAS.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "MOSTRAR TODAS AS VIATURAS: " FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.
           ADD 1 TO LINHA.
           OPEN INPUT FICMOTA.
           PERFORM UNTIL REGISTO=HIGH-VALUES
           READ FICMOTA
               AT END MOVE HIGH-VALUES TO REGISTO
           END-READ
           IF (NOT REGISTO=HIGH-VALUES) THEN
               DISPLAY DATA-VENDA LINE LINHA POSITION 1
               DISPLAY MARCA LINE LINHA POSITION 9
               DISPLAY MODELO LINE LINHA POSITION 23
               DISPLAY MATRICULA LINE LINHA POSITION 33
               DISPLAY CLIENTE LINE LINHA POSITION 41
               DISPLAY TEL LINE LINHA POSITION 60
               DISPLAY ANOF LINE LINHA POSITION 70
               DISPLAY KM LINE LINHA POSITION 75
               DISPLAY PRECO-VENDA LINE LINHA POSITION 82
           END-IF
           ADD 1 TO LINHA
           END-PERFORM.
           CLOSE FICMOTA.
           accept omitted.
           GO INICIO.

       MARCAS.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "VIATURAS POR MARCA: " FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.

       LISTAGEM-GERAL.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "LISTAGEM COM IVA E VALOR FINAL: " FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.

       ABAIXO-2019.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "MOSTRAR TODAS AS VIATURAS COM FABRICO: "
           & "ANTERIOR A 2019:" FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.
           ADD 1 TO LINHA.
           OPEN INPUT FICMOTA.
           PERFORM UNTIL REGISTO=HIGH-VALUES
           READ FICMOTA
               AT END MOVE HIGH-VALUES TO REGISTO
           END-READ
           IF (ANOF < 2019) THEN
               DISPLAY DATA-VENDA LINE LINHA POSITION 1
               DISPLAY MARCA LINE LINHA POSITION 9
               DISPLAY MODELO LINE LINHA POSITION 23
               DISPLAY MATRICULA LINE LINHA POSITION 33
               DISPLAY CLIENTE LINE LINHA POSITION 41
               DISPLAY TEL LINE LINHA POSITION 60
               DISPLAY ANOF LINE LINHA POSITION 70
               DISPLAY KM LINE LINHA POSITION 75
               DISPLAY PRECO-VENDA LINE LINHA POSITION 82
           END-IF
           ADD 1 TO LINHA
           END-PERFORM.
           CLOSE FICMOTA.
           accept omitted.
           GO INICIO.

       VIATURAS-MARCA.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "MOSTRAR VIATURAS POR MARCA: " FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.

       TOTAIS-MARCA.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "MOSTRAR TOTAIS POR MARCA: " FOREGROUND-COLOR 3
           HIGHLIGHT LINE LINHA.

       MAIOR-VENDA.
           DISPLAY CLS.
           DISPLAY MENU-RECOLHA.
           MOVE 6 TO LINHA.
           DISPLAY "MAIOR VENDA: " AT 0601.
           MOVE 0 TO MAIOR.
           OPEN INPUT FICMOTA.
           PERFORM UNTIL PRECO-VENDA = HIGH-VALUES
           READ FICMOTA
               AT END MOVE HIGH-VALUES TO REGISTO
           IF (PRECO-VENDA < MAIOR) THEN
                   MOVE PRECO-VENDA TO MAIOR
                   MOVE MAIOR TO SAIDAPV
           END-IF
           END-READ
           END-PERFORM.
           DISPLAY SAIDAPV AT 0615.
           GO INICIO.

           ACCEPT OMITTED.
            STOP RUN.
       END PROGRAM mota.
