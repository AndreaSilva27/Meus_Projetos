      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. porco.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 TABELAS.
           05 TABELA-NOMES            PIC A(20) OCCURS 10.
           05 TABELA-DEPARTAMENTO     PIC A(15) OCCURS 10.
           05 TABELA-SATISFACAO       PIC 9     OCCURS 10.
       77 INDICE                      PIC 9(2)     VALUE 1.
       77 LINHA                       PIC 9(3)  VALUE 1.
       77 MEDIA                       PIC 9     VALUE 0.


       PROCEDURE DIVISION.
       INICIO.
      *CICLO LEITURA
           PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 10
               DISPLAY "QUAL O NOME:" NO ADVANCING
               ACCEPT TABELA-NOMES(INDICE)

               DISPLAY "QUAL O DEPARTAMENTO:" NO ADVANCING
               ACCEPT TABELA-DEPARTAMENTO(INDICE)

               DISPLAY "QUAL O GRAU DE SATISFACAO:" NO ADVANCING
               ACCEPT TABELA-SATISFACAO(INDICE)

           END-PERFORM.
      *CICLO ESCRITA.

           ADD 1 TO LINHA.
           DISPLAY "**************************************************"
           & "********************************************************"
           LINE LINHA.
           ADD 1 TO LINHA.
           DISPLAY "INDUSTRIA DO PORCO, S.A." LINE LINHA.
           ADD 1 TO LINHA.
           DISPLAY "Inquerito de Satisfacao(Servicos de Contabilidade)"
           LINE LINHA.
           ADD 1 TO LINHA.
           DISPLAY "**************************************************"
           & "********************************************************"
           LINE LINHA.
           ADD 1 TO LINHA.
           ACCEPT OMITTED.
           DISPLAY "1-Recolha de Dados:" LINE LINHA.
           ADD 1 TO LINHA.
           PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 10

               DISPLAY TABELA-NOMES(INDICE) POSITION 1
               DISPLAY TABELA-DEPARTAMENTO(INDICE) POSITION 25
               DISPLAY TABELA-SATISFACAO(INDICE) POSITION 35
               ADD 1 TO LINHA
           END-PERFORM.
           ACCEPT OMITTED.

           DISPLAY "2-Lista de funcionarios por depto: " LINE LINHA.
           ADD 1 TO LINHA.
           PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 10
               DISPLAY TABELA-NOMES(INDICE) POSITION 1
               DISPLAY TABELA-DEPARTAMENTO(INDICE) POSITION 25
               ADD 1 TO LINHA
           END-PERFORM.
           ACCEPT OMITTED.
           DISPLAY "3-Lista de funcionarios que atribuiram a nota mais"
           & " alta:" LINE LINHA.
           ADD 1 TO LINHA.
           PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 10
               DISPLAY TABELA-NOMES(INDICE) POSITION 1
               IF TABELA-SATISFACAO(INDICE)=5 THEN
                   DISPLAY TABELA-DEPARTAMENTO(INDICE)  POSITION 25

           END-IF
           ADD 1 TO LINHA
           END-PERFORM.
           ACCEPT OMITTED.
           DISPLAY "4-Lista de funcionarios que atribuiram a nota mais"
           & " baixa:" LINE LINHA.
           ADD 1 TO LINHA.
           PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 10
               DISPLAY TABELA-NOMES(INDICE) POSITION 1
               IF TABELA-DEPARTAMENTO(INDICE)=1 THEN
                   DISPLAY TABELA-DEPARTAMENTO(INDICE)  POSITION 25
           END-IF
           ADD 1 TO LINHA
           END-PERFORM.
           ACCEPT OMITTED.
           DISPLAY "Media global de satisfacao obtida:"

           ACCEPT OMITTED.
           STOP RUN.
       END PROGRAM porco.
