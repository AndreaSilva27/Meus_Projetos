      ******************************************************************
      * Author:Andrea Silva, Luís Sousa e Marthina Wiegerinck
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. livro.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL FICCLI ASSIGN TO "USUARIOS.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           FILE STATUS IS FS
           RECORD KEY IS FS-NIF.

           SELECT OPTIONAL FICTEM ASSIGN TO "TEMAS.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           FILE STATUS IS FS
           RECORD KEY IS FS-CODTEMA.

           SELECT OPTIONAL FICAUT ASSIGN TO "AUTORES.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           FILE STATUS IS FS
           RECORD KEY IS FS-CODAUTOR.

           SELECT OPTIONAL FICLIV ASSIGN TO "LIVROS.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           FILE STATUS IS FS
           RECORD KEY IS FS-CODLIVRO.

           SELECT OPTIONAL FICALU ASSIGN TO "ALUGUERES.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           FILE STATUS IS FS
           RECORD KEY IS FS-CODALUGUER.

       DATA DIVISION.
       FILE SECTION.
       FD FICCLI.
       01 REGISTO-C.
           05 FS-NIF              PIC 9(09) BLANK WHEN ZEROS.
               88 VALIDA-NIF           VALUES 100000000 THRU 999999999.
           05 FS-NOME             PIC A(30) VALUES SPACES.
           05 FS-DATA-ADM.
              10 FS-DATA-DIA      PIC 9(2) BLANK WHEN ZEROS.
                   88 VALIDA-DIA       VALUE 01 THRU 31.
              10 FS-DATA-MES      PIC 9(2) BLANK WHEN ZEROS.
                   88 VALIDA-MES       VALUE 01 THRU 12.
              10 FS-DATA-ANO      PIC 9(4) BLANK WHEN ZEROS.
                   88 VALIDA-ANO       VALUES 2000 THRU 2021.
           05 FS-EMAIL            PIC X(50) VALUES SPACES.

       FD FICTEM.
       01 REGISTO-T.
           05 FS-CODTEMA          PIC 9(02) BLANK WHEN ZEROS.
               88 VALIDA-TEMA          VALUES 01 THRU 99.
           05 FS-TEMA             PIC X(25) VALUES SPACES.

       FD FICAUT.
       01 REGISTO-A.
           05 FS-CODAUTOR         PIC 9(03) BLANK WHEN ZEROS.
               88 VALIDA-AUTOR         VALUES 001 THRU 999.
           05 FS-AUTOR            PIC X(40) VALUES SPACES.

       FD FICLIV.
       01 REGISTO-L.
           05 FS-CODLIVRO         PIC 9(04) BLANK WHEN ZEROS.
               88 VALIDA-LIVRO         VALUES 0001 THRU 9999.
           05 FS-TITULO           PIC X(60) VALUES SPACES.
           05 FS-CODTEMA1         PIC 9(02) BLANK WHEN ZEROS.
               88 VALIDA-TEMA1         VALUES 01 THRU 99.
           05 FS-CODAUTOR1        PIC 9(03) BLANK WHEN ZEROS.
               88 VALIDA-AUTOR1        VALUES 001 THRU 999.

       FD FICALU.
       01 REGISTO-AL.
           05 FS-CODALUGUER       PIC 9(05) BLANK WHEN ZEROS.
             88 VALIDA-ALUGUER        VALUE 00001 THRU 99999.
           05 FS-DATA-ALU.
             10 FS-DATA-DIA1      PIC 9(2) BLANK WHEN ZEROS.
               88 VALIDA-DIA1           VALUE 01 THRU 31.
             10 FS-DATA-MES1      PIC 9(2) BLANK WHEN ZEROS.
               88 VALIDA-MES1           VALUE 01 THRU 12.
             10 FS-DATA-ANO1      PIC 9(4) BLANK WHEN ZEROS.
               88 VALIDA-ANO1           VALUES 2000 THRU 2021.
           05 FS-DATA-ENT.
             10 FS-DATA-DIA2      PIC 9(2) BLANK WHEN ZEROS.
               88 VALIDA-DIA2           VALUE 01 THRU 31.
             10 FS-DATA-MES2      PIC 9(2) BLANK WHEN ZEROS.
               88 VALIDA-MES2           VALUE 01 THRU 12.
             10 FS-DATA-ANO2      PIC 9(4) BLANK WHEN ZEROS.
               88 VALIDA-ANO2           VALUES 2000 THRU 2021.
           05 FS-CODLIVRO1        PIC 9(04) BLANK WHEN ZEROS.
             88 VALIDA-LIVRO1         VALUES 0001 THRU 9999.
           05 FS-NIF1             PIC 9(09) BLANK WHEN ZEROS.
             88 VALIDA-NIF1       VALUES 000000001 THRU 999999999.
           05 FS-SITUACAO         PIC X(10) VALUES SPACES.

       WORKING-STORAGE SECTION.
       77 FS                      PIC 9(02) VALUES 0.
           88 FS-OK                   VALUES 0.
           88 FS-CANCELA              VALUES 99.
           88 FS-NAO-EXISTE           VALUES 35.

       01 WS-MENU.
           05 WS-OP               PIC X(25) VALUE SPACES.

       01 WS-MENU1.
           05 WS-OP1              PIC X(10) VALUE SPACES.

       77 WS-NUML                 PIC 9(02) VALUES 0.
       77 WS-NUMC                 PIC 9(02) VALUES 0.
       77 WS-ESTADO               PIC X(30) VALUES SPACES.

       77 WS-OPCAO1               PIC 9(01) VALUES 9.
           88 CLIENTES                VALUES 1.
           88 LIVROS                  VALUES 2.
           88 TEMAS                   VALUES 3.
           88 AUTORES                 VALUES 4.
           88 ALUGUERES               VALUES 5.
           88 SAIR                    VALUES 0.

       77 WS-OPCAO2               PIC 9(01) VALUES 9.
           88 INSERIR                 VALUES 1.
           88 CONSULTAR               VALUES 2.
           88 ALTERAR                 VALUES 3.
           88 ELIMINAR                VALUES 4.
           88 LISTAR                  VALUES 5.
           88 SAIR1                   VALUES 0.

       77 WS-OPCAO3               PIC 9(01) VALUES 9.
           88 INSERIR1                VALUES 1.
           88 CONSULTAR1              VALUES 2.
           88 ALTERAR1                VALUES 3.
           88 ELIMINAR1               VALUES 4.
           88 LISTAR1                 VALUES 5.
           88 DEVOLVER                VALUES 6.
           88 SAIR2                   VALUES 0.

       01 DATA-SISTEMA.
           05 WRK-ANO            PIC 9(4).
           05 WRK-MES            PIC 9(2).
           05 WRK-DIA            PIC 9(2).

       77 WS-MSG-ERRO            PIC X(80) VALUES SPACES.
       77 WS-CONFIRMAR           PIC X(01) VALUES SPACES.
           88 VALIDA-CONFIRMAR       VALUES ARE "S","s","N","n".
       77 WS-LINHA               PIC 9(02) VALUES 0.
       77 RESTO                  PIC 9(04) VALUES 0.
       77 DIVISAO                PIC 9(04) VALUES 0.
       77 WS-LINHAS-PAGINA       PIC 9(02) VALUES 0.
       77 WS-PAGINA              PIC 9(02) VALUES 0.
       77 BOOLEANO               PIC 9(01) VALUES 0.
       77 BOOLEANO1              PIC 9(01) VALUES 0.
       77 TEMA1                  PIC X(25) VALUES SPACES.
       77 AUTOR1                 PIC X(40) VALUES SPACES.
       77 TITULO1                PIC X(60) VALUES SPACES.
       77 NOME1                  PIC X(30) VALUES SPACES.

       COPY SCREENIO.

       SCREEN SECTION.
       01 CLS BLANK SCREEN.

       01 LAYOUT-INICIAL.
           05 PARTE-1.
               10 BLANK SCREEN.
               10 LINE 01 COL 01 ERASE EOL BACKGROUND-COLOR 1.
               10 LINE WS-NUML COL 01 ERASE EOL BACKGROUND-COLOR 1.
           05 CABECALHO.
               10 LINE 01 COL 02 PIC X(18) FROM WS-MENU HIGHLIGHT
               FOREGROUND-COLOR 6 BACKGROUND-COLOUR 1.
           05 ESTADO.
               10 LINE WS-NUML COL 2 ERASE EOL PIC X(30) FROM WS-ESTADO
               HIGHLIGHT FOREGROUND-COLOR 6 BACKGROUND-COLOR 1.

       01 LAYOUT-MENU-INICIAL.
           05 MENU FOREGROUND-COLOR 6.
               10 LINE 03 COL 01 VALUE "Vilabiblio".
               10 LINE 03 COL 74 VALUE "Data:".
               10 LINE 04 COL 01 VALUE "*******************************"
               & "***********************************"
               & "***********************".
           05 MENU1 FOREGROUND-COLOR 6.
               05 LINE 06 COL 38 VALUE "Gestao de " FOREGROUND-COLOR 6.
               05 LINE 06 COL 48 PIC X(10) FROM WS-MENU1
               FOREGROUND-COLOR 6.
               05 LINE 07 COL 35 VALUE "*************************"
               FOREGROUND-COLOR 6.

       01 LAYOUT-MENU FOREGROUND-COLOR 6.
           05 LINE 08 COL 36 VALUE "1-Clientes".
           05 LINE 09 COL 36 VALUE "2-Livros".
           05 LINE 10 COL 36 VALUE "3-Temas".
           05 LINE 11 COL 36 VALUE "4-Autores".
           05 LINE 12 COL 36 VALUE "5-Alugueres".
           05 LINE 13 COL 36 VALUE "0-Sair".
           05 LINE 14 COL 36 VALUE "Digite a sua escolha:".
           05 LINE 14 COL PLUS 1 USING WS-OPCAO1 AUTO.

       01 LAYOUT-CLTA FOREGROUND-COLOR 6.
           05 LINE 08 COL 36 VALUE "1-Novo".
           05 LINE 09 COL 36 VALUE "2-Consultar".
           05 LINE 10 COL 36 VALUE "3-Alterar".
           05 LINE 11 COL 36 VALUE "4-Eliminar".
           05 LINE 12 COL 36 VALUE "5-Listar".
           05 LINE 13 COL 36 VALUE "0-Menu Inicial".
           05 LINE 14 COL 36 VALUE "Digite a sua escolha:".
           05 LINE 14 COL PLUS 1 USING WS-OPCAO2 AUTO.

       01 LAYOUT-ALUGUERES FOREGROUND-COLOR 6.
           05 LINE 08 COL 36 VALUE "1-Inserir Aluguer".
           05 LINE 09 COL 36 VALUE "2-Consultar".
           05 LINE 10 COL 36 VALUE "3-Alterar".
           05 LINE 11 COL 36 VALUE "4-Eliminar".
           05 LINE 12 COL 36 VALUE "5-Listar".
           05 LINE 13 COL 36 VALUE "6-Devolver".
           05 LINE 14 COL 36 VALUE "0-Menu Inicial".
           05 LINE 15 COL 36 VALUE "Digite a sua escolha:".
           05 LINE 15 COL PLUS 1 USING WS-OPCAO3 AUTO.

       01 LAYOUT-ERRO.
           05 FILLER FOREGROUND-COLOR 4 BACKGROUND-COLOR 1 HIGHLIGHT.
               10 LINE WS-NUML COL 2 PIC X(80) FROM WS-MSG-ERRO.

       01 LAYOUT-REGISTO-CLIENTES.
           05 WS-CHAVE FOREGROUND-COLOR 6.
               10 LINE 10 COL 15 VALUE "NIF:".
               10 COL PLUS 2 PIC 9(09) USING FS-NIF BLANK WHEN ZEROS.
           05 WS-DADOS FOREGROUND-COLOR 6.
               10 LINE 11 COL 15 VALUE "Nome:".
               10 COL PLUS 2 PIC A(30) USING FS-NOME.
               10 LINE 12 COL 15 VALUE "Data de Admissao:".
               10 LINE 12 COL 35 VALUE "-  -".
               10 LINE 12 COL 33 PIC 9(2) USING FS-DATA-DIA
               BLANK WHEN ZEROS.
               10 LINE 12 COL 36 PIC 9(2) USING FS-DATA-MES
               BLANK WHEN ZEROS.
               10 LINE 12 COL 39 PIC 9(4) USING FS-DATA-ANO
               BLANK WHEN ZEROS.
               10 LINE 13 COL 15 VALUE "Email:".
               10 COL PLUS 2 PIC X(50) USING FS-EMAIL.

        01 LAYOUT-REGISTO-LIVROS.
           05 WS-CHAVE1 FOREGROUND-COLOR 6.
               10 LINE 10 COL 15 VALUE "COD Livro:".
               10 COL PLUS 2 PIC 9(04) USING FS-CODLIVRO
               BLANK WHEN ZEROS.
           05 WS-DADOS1 FOREGROUND-COLOR 6.
               10 LINE 11 COL 15 VALUE "Titulo:".
               10 COL PLUS 2 PIC X(30) USING FS-TITULO.
               10 LINE 12 COL 15 VALUE "COD Tema:".
               10 COL PLUS 2 PIC 9(02) USING FS-CODTEMA1
               BLANK WHEN ZEROS.
               10 LINE 13 COL 15 VALUE "COD Autor:".
               10 COL PLUS 2 PIC 9(03) USING FS-CODAUTOR1
               BLANK WHEN ZEROS.

       01 LAYOUT-REGISTO-TEMAS.
           05 WS-CHAVE2 FOREGROUND-COLOR 6.
               10 LINE 10 COL 15 VALUE "COD Tema:".
               10 COL PLUS 2 PIC 9(02) USING FS-CODTEMA
               BLANK WHEN ZEROS.
           05 WS-DADOS2 FOREGROUND-COLOR 6.
               10 LINE 11 COL 15 VALUE "Tema:".
               10 COL PLUS 2 PIC A(25) USING FS-TEMA .

       01 LAYOUT-REGISTO-AUTORES.
           05 WS-CHAVE3 FOREGROUND-COLOR 6.
               10 LINE 10 COL 15 VALUE "COD Autores:".
               10 COL PLUS 2 PIC 9(03) USING FS-CODAUTOR
               BLANK WHEN ZEROS.
           05 WS-DADOS3 FOREGROUND-COLOR 6.
               10 LINE 11 COL 15 VALUE "Autor:".
               10 COL PLUS 2 PIC A(30) USING FS-AUTOR.

       01 LAYOUT-REGISTO-ALUGUERES.
           05 WS-CHAVE4 FOREGROUND-COLOR 6.
               10 LINE 10 COL 15 VALUE "COD Aluguer:".
               10 COL PLUS 2 PIC 9(05) USING FS-CODALUGUER
               BLANK WHEN ZEROS.
           05 WS-DADOS4 FOREGROUND-COLOR 6.
               10 LINE 11 COL 15 VALUE "Data Aluguer:".
               10 LINE 11 COL 31 VALUE "-  -".
               10 LINE 11 COL 29 PIC 9(2) USING FS-DATA-DIA1
               BLANK WHEN ZEROS.
               10 LINE 11 COL 32 PIC 9(2) USING FS-DATA-MES1
               BLANK WHEN ZEROS.
               10 LINE 11 COL 35 PIC 9(4) USING FS-DATA-ANO1
               BLANK WHEN ZEROS.
               10 LINE 12 COL 15 VALUE "Livro:".
               10 COL PLUS 2 PIC 9(04) USING FS-CODLIVRO1
               BLANK WHEN ZEROS.
               10 LINE 13 COL 15 VALUE "NIF Cliente:".
               10 COL PLUS 2 PIC 9(9) USING FS-NIF1 BLANK WHEN ZEROS.
               10 LINE 14 COL 15 VALUE "Situacao:".

       01 LAYOUT-REGISTO-DEVOLUCOES.
           05 WS-CHAVE5 FOREGROUND-COLOR 6.
               10 LINE 10 COL 15 VALUE "COD Aluguer:".
               10 COL PLUS 2 PIC 9(05) USING FS-CODALUGUER
               BLANK WHEN ZEROS.
           05 WS-DADOS5 FOREGROUND-COLOR 6.
               10 LINE 11 COL 15 VALUE "Data Aluguer:".
               10 LINE 11 COL 31 VALUE "-  -".
               10 LINE 11 COL 29 PIC 9(2) USING FS-DATA-DIA1
               BLANK WHEN ZEROS.
               10 LINE 11 COL 32 PIC 9(2) USING FS-DATA-MES1
               BLANK WHEN ZEROS.
               10 LINE 11 COL 35 PIC 9(4) USING FS-DATA-ANO1
               BLANK WHEN ZEROS.
               10 LINE 12 COL 15 VALUE "Livro:".
               10 COL PLUS 2 PIC 9(04) USING FS-CODLIVRO1
               BLANK WHEN ZEROS.
               10 LINE 13 COL 15 VALUE "NIF Cliente:".
               10 COL PLUS 2 PIC 9(9) USING FS-NIF1 BLANK WHEN ZEROS.
           05 WS-DEVOLUCAO FOREGROUND-COLOR 6.
               10 LINE 14 COL 15 VALUE "Data Devolucao:".
               10 LINE 14 COL 33 VALUE "-  -".
               10 LINE 14 COL 31 PIC 9(2) USING FS-DATA-DIA2
               BLANK WHEN ZEROS.
               10 LINE 14 COL 34 PIC 9(2) USING FS-DATA-MES2
               BLANK WHEN ZEROS.
               10 LINE 14 COL 37 PIC 9(4) USING FS-DATA-ANO2
               BLANK WHEN ZEROS.
               10 LINE 15 COL 15 VALUE "Situacao:".


         01 LAYOUT-LISTAR-CLIENTE FOREGROUND-COLOR 6.
           05 LINE 06 COL 01 VALUE "   NIF          NOME       "
           & "             DATA ADMISSAO     EMAIL                ".
           05 LINE 07 COL 01 VALUE "***********************************"
           & "******************************************************".

       01 LAYOUT-LISTAR-LIVROS FOREGROUND-COLOR 6.
           05 LINE 06 COL 01 VALUE "CODLIVRO     TITULO                "
           & "                     CODTEMA       CODAUTOR    ".
           05 LINE 07 COL 01 VALUE "***********************************"
           & "******************************************************".

       01 LAYOUT-LISTAR-TEMAS FOREGROUND-COLOR 6.
           05 LINE 06 COL 01 VALUE "CODTEMA        TEMA               ".
           05 LINE 07 COL 01 VALUE "***********************************"
           & "******************************************************".

       01 LAYOUT-LISTAR-AUTORES FOREGROUND-COLOR 6.
           05 LINE 06 COL 01 VALUE " CODAUTOR       AUTOR          ".
           05 LINE 07 COL 01 VALUE "***********************************"
           & "******************************************************".

       01 LAYOUT-LISTAR-ALUGUERES FOREGROUND-COLOR 6.
           05 LINE 06 COL 01 VALUE "CODALUGUER  DATA-ALUGUER  DATA-ENTR"
           & "EGA   CODLIVRO       CLIENTE          SITUACAO".
           05 LINE 07 COL 01 VALUE "***********************************"
           & "******************************************************".

       PROCEDURE DIVISION.
       INICIO.

         ACCEPT DATA-SISTEMA FROM DATE YYYYMMDD.

         SET ENVIRONMENT 'COB_SCREEN_EXCEPTIONS' TO 'Y'.
         SET ENVIRONMENT 'COB_SCREEN_ESC' TO 'Y'.
         SET ENVIRONMENT 'ESCDELAY' TO '25'.

         ACCEPT WS-NUML FROM LINES.
         ACCEPT WS-NUMC FROM COLUMNS.

       MENU-INICIAL.

         PERFORM UNTIL SAIR

         DISPLAY CLS
         MOVE "MENU" TO WS-OP
         MOVE "ESC PARA SAIR" TO WS-ESTADO
         MOVE "Biblioteca" TO WS-OP1
         MOVE "SELECIONE A SUA OPCAO" TO WS-ESTADO
         MOVE 0 TO WS-OPCAO1
         DISPLAY LAYOUT-INICIAL
         DISPLAY LAYOUT-MENU-INICIAL
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6
         ACCEPT LAYOUT-MENU

              EVALUATE TRUE
                   WHEN CLIENTES
                       PERFORM INICIO-CLIENTES
                   WHEN LIVROS
                       PERFORM INICIO-LIVROS
                   WHEN TEMAS
                       PERFORM INICIO-TEMAS
                   WHEN AUTORES
                       PERFORM INICIO-AUTORES
                   WHEN ALUGUERES
                       PERFORM INICIO-ALUGUERES
                   WHEN SAIR
                       STOP RUN
                   END-EVALUATE
         END-PERFORM.

       INICIO-CLIENTES.

         DISPLAY CLS.

         PERFORM
           MOVE "Clientes" TO WS-OP1
           MOVE "MENU" TO WS-OP
           MOVE 0 TO WS-OPCAO2
           DISPLAY LAYOUT-INICIAL
           DISPLAY LAYOUT-MENU-INICIAL
           DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
           WRK-ANO) AT 0380 FOREGROUND-COLOR 6
           ACCEPT LAYOUT-CLTA

              EVALUATE TRUE
                   WHEN INSERIR
                       PERFORM INSERIR-CLIENTES
                   WHEN CONSULTAR
                       PERFORM CONSULTAR-CLIENTES
                   WHEN ALTERAR
                       PERFORM ALTERAR-CLIENTES
                   WHEN ELIMINAR
                       PERFORM ELIMINAR-CLIENTES
                   WHEN LISTAR
                       PERFORM LISTAR-CLIENTES
                   WHEN SAIR1
                       CLOSE FICCLI
                       PERFORM MENU-INICIAL
              END-EVALUATE
         END-PERFORM.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO MENU-INICIAL
         END-IF.

       INSERIR-CLIENTES.

         OPEN I-O FICCLI.
         MOVE 0 TO FS-NIF.
         MOVE SPACES TO FS-NOME.
         MOVE SPACES TO FS-EMAIL.
         MOVE 0 TO FS-DATA-DIA.
         MOVE 0 TO FS-DATA-MES.
         MOVE 0 TO FS-DATA-ANO.
         MOVE 0 TO DIVISAO.
         MOVE 1 TO RESTO.
         MOVE "INSERIR CLIENTES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         ACCEPT LAYOUT-REGISTO-CLIENTES.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-CLIENTES
         END-IF.

         PERFORM

         PERFORM WITH TEST AFTER UNTIL VALIDA-NIF
             IF NOT VALIDA-NIF THEN
               MOVE "NIF TEM DE SER DE 100000000 ATE 999999999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-CLIENTES
             END-IF
         END-PERFORM

         PERFORM WITH TEST AFTER UNTIL FS-NOME IS ALPHABETIC OR
         NOT FS-NOME = SPACES
             IF ((FS-NOME = SPACES) OR (FS-NOME NOT ALPHABETIC)) THEN
             MOVE "NOME MAL INTRODUZIDO" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-CLIENTES
         END-PERFORM

         PERFORM WITH TEST AFTER UNTIL VALIDA-DIA AND VALIDA-MES
         AND VALIDA-ANO
               IF NOT VALIDA-DIA THEN
                   MOVE "DATA INVALIDA (DIA)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO INSERIR-CLIENTES
               END-IF
               IF NOT VALIDA-MES THEN
                   MOVE "DATA INVALIDA (MES)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO INSERIR-CLIENTES
               END-IF
               IF NOT VALIDA-ANO THEN
                   MOVE "DATA INVALIDA (ANO)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO INSERIR-CLIENTES
               END-IF
         END-PERFORM

         IF ((FS-DATA-DIA>30) AND (FS-DATA-MES=04 OR FS-DATA-MES=06
             OR FS-DATA-MES=09 OR FS-DATA-MES=11)) THEN
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-CLIENTES
         END-IF

         DIVIDE FS-DATA-ANO BY 4 GIVING DIVISAO REMAINDER RESTO

         IF ((FS-DATA-DIA>28) AND (RESTO > 0) AND (FS-DATA-MES = 02))
           OR ((RESTO = 0) AND (FS-DATA-MES = 02) AND (FS-DATA-DIA >29))
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-CLIENTES
         END-IF

         PERFORM WITH TEST AFTER UNTIL NOT FS-EMAIL = SPACES
         IF FS-EMAIL EQUAL SPACES THEN
               MOVE "EMAIL MAL INTRODUZIDO" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-CLIENTES
         END-IF
         END-PERFORM

         END-PERFORM.

         WRITE REGISTO-C
           INVALID KEY
               MOVE "CLIENTE COM NIF INDICADO JA EXISTE" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-CLIENTES
           NOT INVALID KEY
               MOVE "CLIENTE INTRODUZIDO COM SUCESSO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-CLIENTES
         END-WRITE.

         CLOSE FICCLI.

       CONSULTAR-CLIENTES.

         OPEN I-O FICCLI.
         MOVE "CONSULTAR CLIENTES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-C.
         ACCEPT WS-CHAVE.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICCLI
              INVALID KEY
              MOVE "NIF NAO EXISTENTE!" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO CONSULTAR-CLIENTES
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-CLIENTES
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS
             MOVE "ENTER PARA CONTINUAR" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO CONSULTAR-CLIENTES
         END-IF.

         CLOSE FICCLI.

       ALTERAR-CLIENTES.

         OPEN I-O FICCLI.
         MOVE 0 TO FS-NIF.
         MOVE "ALTERAR CLIENTES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-C.
         ACCEPT WS-CHAVE.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-CLIENTES
         END-IF.

         PERFORM WITH TEST AFTER UNTIL VALIDA-NIF
             IF NOT VALIDA-NIF THEN
               MOVE "NIF TEM DE SER DE 100000000 ATE 999999999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-CLIENTES
             END-IF
         END-PERFORM

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICCLI
             INVALID KEY MOVE "NIF NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-CLIENTES
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             MOVE "ERRO AO ALTERAR" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INICIO-CLIENTES
         END-IF.

         IF (FS-OK) THEN
           ACCEPT WS-DADOS

           PERFORM

           PERFORM WITH TEST AFTER UNTIL FS-NOME IS ALPHABETIC OR
           NOT FS-NOME = SPACES
             IF ((FS-NOME = SPACES) OR (FS-NOME NOT ALPHABETIC)) THEN
               MOVE "NOME MAL INTRODUZIDO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-CLIENTES
           END-PERFORM

           PERFORM WITH TEST AFTER UNTIL VALIDA-DIA AND VALIDA-MES
           AND VALIDA-ANO
             IF NOT VALIDA-DIA THEN
                MOVE "DATA INVALIDA (DIA)" TO WS-MSG-ERRO
                PERFORM MOSTRA-ERRO
                GO ALTERAR-CLIENTES
             END-IF
             IF NOT VALIDA-MES THEN
                MOVE "DATA INVALIDA (MES)" TO WS-MSG-ERRO
                PERFORM MOSTRA-ERRO
                GO ALTERAR-CLIENTES
             END-IF
             IF NOT VALIDA-ANO THEN
                MOVE "DATA INVALIDA (ANO)" TO WS-MSG-ERRO
                PERFORM MOSTRA-ERRO
                GO ALTERAR-CLIENTES
             END-IF
           END-PERFORM

         IF ((FS-DATA-DIA>30) AND (FS-DATA-MES=04 OR FS-DATA-MES=06
         OR FS-DATA-MES=09 OR FS-DATA-MES=11)) THEN
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-CLIENTES
         END-IF

         DIVIDE FS-DATA-ANO BY 4 GIVING DIVISAO REMAINDER RESTO

         IF ((FS-DATA-DIA>28) AND (RESTO > 0) AND (FS-DATA-MES = 02))
         OR ((RESTO = 0) AND (FS-DATA-MES = 02) AND (FS-DATA-DIA >29))
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-CLIENTES
         END-IF

         PERFORM WITH TEST AFTER UNTIL NOT FS-EMAIL = SPACES
           IF FS-EMAIL EQUAL SPACES THEN
               MOVE "EMAIL MAL INTRODUZIDO" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-CLIENTES
           END-IF
         END-PERFORM
         END-PERFORM

         DISPLAY "QUER ALTERAR O REGISTO (S/N)?: " AT 1513
         FOREGROUND-COLOR 4 HIGHLIGHT
         PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
           ACCEPT WS-CONFIRMAR AT 1544
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
         END-PERFORM

         MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

         IF WS-CONFIRMAR = "S" THEN
            REWRITE REGISTO-C
            END-REWRITE
            MOVE "ALTERADO COM SUCESSO. ENTER PARA CONTINUAR"
            TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-CLIENTES
         ELSE
            MOVE "LIVRO NAO ALTERADO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-CLIENTES
         END-IF

         END-IF.

         CLOSE FICCLI.

       ELIMINAR-CLIENTES.

         OPEN I-O FICCLI.
         MOVE 0 TO FS-NIF.
         MOVE SPACES TO WS-CONFIRMAR.
         MOVE "ELIMINAR CLIENTES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-C.
         ACCEPT WS-CHAVE.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICCLI
             INVALID KEY
             MOVE "NIF NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ELIMINAR-CLIENTES
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-CLIENTES
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS
               DISPLAY "TEM A CERTEZA QUE QUER ELIMINAR (S/N)? " AT 1514
               FOREGROUND-COLOR 4 HIGHLIGHT

               PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1553
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
               END-PERFORM
             MOVE FUNCTION UPPER-CASE (WS-CONFIRMAR) TO WS-CONFIRMAR
             IF WS-CONFIRMAR = "S" THEN
               DELETE FICCLI
               END-DELETE
               MOVE "ELIMINADO COM SUCESSO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-CLIENTES
             ELSE
               MOVE "REGISTO NAO ELIMINADO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-CLIENTES
         END-IF.

         CLOSE FICCLI.

       LISTAR-CLIENTES.

         OPEN I-O FICCLI.
         MOVE "LISTAR CLIENTES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY LAYOUT-LISTAR-CLIENTE.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE 1 TO WS-PAGINA.
         MOVE 1 TO WS-LINHAS-PAGINA.
         MOVE 9 TO WS-LINHA.
         MOVE 0 TO FS-NIF.

         IF (FS-CANCELA) THEN
         GO INICIO-CLIENTES
         END-IF.

         START FICCLI KEY > FS-NIF
              INVALID KEY
              MOVE "FICHEIRO VAZIO" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              END-START.
         IF (FS <> "05") THEN
              PERFORM UNTIL (FS="10")
                 READ FICCLI NEXT RECORD
                 AT END
                   ADD 1 TO WS-LINHA
                   DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                   AT 0337 FOREGROUND-COLOR 6
                   DISPLAY FUNCTION CONCATENATE
                   (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                   AT 0380 FOREGROUND-COLOR 6
                   DISPLAY "*****************************************"
                   &"************************************************"
                   AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                   ADD 1 TO WS-LINHA
                   DISPLAY "Prima ENTER para sair."
                   LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                   HIGHLIGHT
                   CONTINUE
                 NOT AT END
                   DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                   AT 0337 FOREGROUND-COLOR 6
                   DISPLAY FUNCTION CONCATENATE
                   (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                   AT 0380 FOREGROUND-COLOR 6
                   DISPLAY FS-NIF LINE WS-LINHA COL 01
                   DISPLAY FS-NOME LINE WS-LINHA COL 14
                   DISPLAY FUNCTION CONCATENATE (FS-DATA-DIA,"-",
                   FS-DATA-MES,"-",FS-DATA-ANO) LINE WS-LINHA COL 42
                   DISPLAY FS-EMAIL LINE WS-LINHA COL 56
                   ADD 1 TO WS-LINHA
                   ADD 1 TO WS-LINHAS-PAGINA
                 IF (WS-LINHAS-PAGINA>10) THEN
                   ADD 1 TO WS-LINHA
                   DISPLAY "*******************************************"
                   & "**********************************************"
                   AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                   ADD 1 TO WS-LINHA
                   DISPLAY "Prima ENTER para continuar."
                   LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                   HIGHLIGHT
                   ACCEPT OMITTED LINE WS-LINHA COL 48
                   DISPLAY CLS
                   DISPLAY LAYOUT-INICIAL
                   DISPLAY MENU
                   DISPLAY LAYOUT-LISTAR-CLIENTE
                   MOVE 9 TO WS-LINHA
                   MOVE 1 TO WS-LINHAS-PAGINA
                   ADD 1 TO WS-PAGINA
                 END-IF
                 END-READ
              END-PERFORM
         END-IF.
         ACCEPT OMITTED AT 2501.
         CLOSE FICCLI.
         GO INICIO-CLIENTES.

       INICIO-LIVROS.
         DISPLAY CLS.

         PERFORM
           MOVE "Livros" TO WS-OP1
           MOVE "MENU" TO WS-OP
           MOVE "ESC PARA SAIR" TO WS-ESTADO
           MOVE 0 TO WS-OPCAO2
           DISPLAY LAYOUT-INICIAL
           DISPLAY LAYOUT-MENU-INICIAL
           DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
           WRK-ANO) AT 0380 FOREGROUND-COLOR 6
           ACCEPT LAYOUT-CLTA
              EVALUATE TRUE
                   WHEN INSERIR
                       PERFORM INSERIR-LIVROS
                   WHEN CONSULTAR
                       PERFORM CONSULTAR-LIVROS
                   WHEN ALTERAR
                       PERFORM ALTERAR-LIVROS
                   WHEN ELIMINAR
                       PERFORM ELIMINAR-LIVROS
                   WHEN LISTAR
                       PERFORM LISTAR-LIVROS
                   WHEN SAIR1
                       CLOSE FICLIV
                       PERFORM MENU-INICIAL
                   END-EVALUATE
         END-PERFORM.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO MENU-INICIAL
         END-IF.

       INSERIR-LIVROS.

         OPEN I-O FICLIV.
         MOVE 0 TO FS-CODLIVRO.
         MOVE SPACES TO FS-TITULO.
         MOVE 0 TO FS-CODTEMA1.
         MOVE 0 TO FS-CODAUTOR1.
         MOVE SPACES TO TEMA1.
         MOVE SPACES TO AUTOR1.
         MOVE 0 TO BOOLEANO
         MOVE 0 TO BOOLEANO1.
         MOVE SPACES TO FS-TEMA.
         MOVE SPACES TO FS-AUTOR.
         MOVE SPACES TO WS-CONFIRMAR.
         MOVE "INSERIR LIVROS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         ACCEPT LAYOUT-REGISTO-LIVROS.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-LIVROS
         END-IF.

         PERFORM

         PERFORM WITH TEST AFTER UNTIL VALIDA-LIVRO
             IF NOT VALIDA-LIVRO THEN
               MOVE "COD-LIVRO TEM DE SER DE 00001 ATE 99999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-LIVROS
             END-IF
         END-PERFORM

         PERFORM WITH TEST AFTER UNTIL FS-TITULO IS ALPHABETIC OR
         NOT FS-TITULO = SPACES
            IF ((FS-TITULO = SPACES) OR (FS-TITULO NOT ALPHABETIC)) THEN
            MOVE "NOME MAL INTRODUZIDO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO INSERIR-LIVROS
         END-PERFORM

         PERFORM WITH TEST AFTER UNTIL VALIDA-TEMA1
             IF NOT VALIDA-TEMA1 THEN
               MOVE "COD-TEMA TEM DE SER DE 01 ATE 99" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-LIVROS
             END-IF
         END-PERFORM

         OPEN I-O FICTEM

         IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICTEM NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODTEMA = FS-CODTEMA1 THEN
                  MOVE 1 TO BOOLEANO
                  MOVE FS-TEMA TO TEMA1
                  CONTINUE
             END-READ
             END-PERFORM
         END-IF

         IF BOOLEANO = 1 THEN
             DISPLAY TEMA1 AT 1228 FOREGROUND-COLOUR 6
         ELSE
             MOVE "TEMA NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             CLOSE FICTEM
             GO INSERIR-LIVROS
         END-IF

         CLOSE FICTEM

         PERFORM WITH TEST AFTER UNTIL VALIDA-AUTOR1
             IF NOT VALIDA-AUTOR1 THEN
               MOVE "COD-AUTOR TEM DE SER DE 001 ATE 999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-LIVROS
             END-IF
         END-PERFORM

         OPEN I-O FICAUT

         IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICAUT NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODAUTOR = FS-CODAUTOR1 THEN
                  MOVE 1 TO BOOLEANO1
                  MOVE FS-AUTOR TO AUTOR1
             END-READ
             END-PERFORM
         END-IF

         IF BOOLEANO1 = 1 THEN
             DISPLAY AUTOR1 AT 1330 FOREGROUND-COLOUR 6
         ELSE
             MOVE "AUTOR NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             CLOSE FICAUT
             GO INSERIR-LIVROS
         END-IF

         CLOSE FICAUT

         END-PERFORM.

         DISPLAY "QUER INSERIR O REGISTO (S/N)?: " AT 1513
         FOREGROUND-COLOR 4 HIGHLIGHT

         PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
           ACCEPT WS-CONFIRMAR AT 1544
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
         END-PERFORM

         MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

         IF WS-CONFIRMAR = "S" THEN
            WRITE REGISTO-L
            INVALID KEY
            MOVE "LIVRO COM COD-LIVRO INDICADO JA EXISTE" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO INSERIR-LIVROS
          NOT INVALID KEY
            MOVE "LIVRO INTRODUZIDO COM SUCESSO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            END-WRITE
            GO INSERIR-LIVROS
         ELSE
            MOVE "LIVRO NAO INTRODUZIDO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO INSERIR-LIVROS
         END-IF.

         CLOSE FICCLI.

       CONSULTAR-LIVROS.

         OPEN I-O FICLIV.
         MOVE "CONSULTAR LIVROS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-L.
         MOVE 0 TO FS-CODLIVRO.
         ACCEPT WS-CHAVE1.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICLIV
              INVALID KEY
              MOVE "LIVRO NAO EXISTENTE!" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO CONSULTAR-LIVROS
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-LIVROS
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS1
         END-IF.

         OPEN I-O FICTEM
         IF (FS <> "05") THEN
            PERFORM UNTIL (FS="10")
            READ FICTEM NEXT RECORD
            AT END
               CONTINUE
            NOT AT END
               IF FS-CODTEMA = FS-CODTEMA1 THEN
               MOVE FS-TEMA TO TEMA1
               DISPLAY TEMA1 AT 1228 FOREGROUND-COLOR 6
               CONTINUE
               END-IF
            END-READ
            END-PERFORM
         END-IF.

         CLOSE FICTEM
         OPEN I-O FICAUT

         IF (FS <> "05") THEN
           PERFORM UNTIL (FS="10")
           READ FICAUT NEXT RECORD
           AT END
              CONTINUE
           NOT AT END
              IF FS-CODAUTOR = FS-CODAUTOR1 THEN
                MOVE FS-AUTOR TO AUTOR1
                DISPLAY AUTOR1 AT 1330 FOREGROUND-COLOUR 6
              END-IF
           END-READ
           END-PERFORM
         END-IF.

         CLOSE FICAUT

         MOVE "ENTER PARA CONTINUAR" TO WS-MSG-ERRO
         PERFORM MOSTRA-ERRO
         GO CONSULTAR-LIVROS

         CLOSE FICLIV.

       ALTERAR-LIVROS.

         OPEN I-O FICLIV.
         MOVE "ALTERAR LIVROS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-L.
         MOVE 0 TO FS-CODLIVRO.
         MOVE 0 TO FS-CODAUTOR1
         MOVE 0 TO FS-CODTEMA1.
         MOVE SPACES TO WS-CONFIRMAR.
         ACCEPT WS-CHAVE1.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-LIVROS
         END-IF.

         PERFORM WITH TEST AFTER UNTIL VALIDA-LIVRO
             IF NOT VALIDA-LIVRO THEN
               MOVE "COD-LIVRO TEM DE SER DE 0001 ATE 9999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-LIVROS
             END-IF
         END-PERFORM.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICLIV
             INVALID KEY MOVE "COD-LIVRO NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-LIVROS
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             MOVE "ERRO AO ALTERAR" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INICIO-LIVROS
         END-IF.

         IF (FS-OK) THEN
           ACCEPT WS-DADOS1

           PERFORM

           PERFORM WITH TEST AFTER UNTIL FS-TITULO IS ALPHABETIC OR
           NOT FS-TITULO = SPACES
            IF ((FS-TITULO = SPACES) OR (FS-TITULO NOT ALPHABETIC)) THEN
               MOVE "NOME MAL INTRODUZIDO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-LIVROS
            END-IF
           END-PERFORM

           PERFORM WITH TEST AFTER UNTIL VALIDA-TEMA1
             IF NOT VALIDA-TEMA1 THEN
               MOVE "COD-TEMA TEM DE SER DE 01 ATE 99" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-LIVROS
             END-IF
           END-PERFORM

           OPEN I-O FICTEM

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICTEM NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODTEMA = FS-CODTEMA1 THEN
                  MOVE 1 TO BOOLEANO
                  MOVE FS-TEMA TO TEMA1
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO = 1 THEN
             DISPLAY TEMA1 AT 1228 FOREGROUND-COLOUR 6
           ELSE
             MOVE "TEMA NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-LIVROS
           END-IF

           CLOSE FICTEM

           PERFORM WITH TEST AFTER UNTIL VALIDA-AUTOR1
             IF NOT VALIDA-AUTOR1 THEN
               MOVE "COD-AUTOR TEM DE SER DE 001 ATE 999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-LIVROS
             END-IF
           END-PERFORM

           OPEN I-O FICAUT

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICAUT NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODAUTOR = FS-CODAUTOR1 THEN
                  MOVE 1 TO BOOLEANO1
                  MOVE FS-AUTOR TO AUTOR1
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO1 = 1 THEN
             DISPLAY AUTOR1 AT 1330 FOREGROUND-COLOUR 6
           ELSE
             MOVE "AUTOR NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-LIVROS
           END-IF

           CLOSE FICAUT

         END-PERFORM


         DISPLAY "QUER ALTERAR O REGISTO (S/N)?: " AT 1513
         FOREGROUND-COLOR 4 HIGHLIGHT

         PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
           ACCEPT WS-CONFIRMAR AT 1544
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
         END-PERFORM

         MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

         IF WS-CONFIRMAR = "S" THEN
            REWRITE REGISTO-L
            END-REWRITE
            MOVE "ALTERADO COM SUCESSO. ENTER PARA CONTINUAR"
            TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-LIVROS
         ELSE
            MOVE "LIVRO NAO ALTERADO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-LIVROS
         END-IF
         END-IF.

         CLOSE FICLIV.

       ELIMINAR-LIVROS.

         OPEN I-O FICLIV.
         MOVE "ELIMINAR LIVROS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-L.
         MOVE 0 TO FS-CODLIVRO.
         MOVE SPACES TO WS-CONFIRMAR.
         ACCEPT WS-CHAVE1.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICLIV
             INVALID KEY
             MOVE "LIVRO NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ELIMINAR-LIVROS
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-LIVROS
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS1

             OPEN I-O FICTEM

             IF (FS <> "05") THEN
               PERFORM UNTIL (FS="10")
               READ FICTEM NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODTEMA = FS-CODTEMA1 THEN
                  MOVE FS-TEMA TO TEMA1
                  DISPLAY TEMA1 AT 1228 FOREGROUND-COLOUR 6
                  CONTINUE
               END-READ
               END-PERFORM
             END-IF

             CLOSE FICTEM

             OPEN I-O FICAUT

             IF (FS <> "05") THEN
               PERFORM UNTIL (FS="10")
               READ FICAUT NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODAUTOR = FS-CODAUTOR1 THEN
                  MOVE FS-AUTOR TO AUTOR1
                  DISPLAY AUTOR1 AT 1330 FOREGROUND-COLOUR 6
               END-READ
               END-PERFORM
             END-IF

             CLOSE FICAUT

             DISPLAY "TEM A CERTEZA QUE QUER ELIMINAR (S/N)? " AT 1514
             FOREGROUND-COLOR 4 HIGHLIGHT

             PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1553
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
             END-PERFORM
             MOVE FUNCTION UPPER-CASE (WS-CONFIRMAR) TO WS-CONFIRMAR
             IF WS-CONFIRMAR = "S" THEN
               DELETE FICLIV
               END-DELETE
               MOVE "ELIMINADO COM SUCESSO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-LIVROS
             ELSE
               MOVE "REGISTO NAO ELIMINADO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-LIVROS
         END-IF.

         CLOSE FICLIV.

       LISTAR-LIVROS.

         OPEN I-O FICLIV.
         MOVE "LISTAR LIVROS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE 1 TO WS-PAGINA.
         MOVE 1 TO WS-LINHAS-PAGINA.
         MOVE 9 TO WS-LINHA.
         MOVE 0 TO FS-CODLIVRO.
         DISPLAY LAYOUT-LISTAR-LIVROS.

         IF (FS-CANCELA) THEN
               GO INICIO-LIVROS
         END-IF.

         START FICLIV KEY > FS-CODLIVRO
              INVALID KEY
              MOVE "FICHEIRO VAZIO" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
         END-START.

         IF (FS <> "05") THEN
            PERFORM UNTIL (FS="10")
               READ FICLIV NEXT RECORD
               AT END
                ADD 1 TO WS-LINHA
                DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                AT 0337 FOREGROUND-COLOR 6
                DISPLAY FUNCTION CONCATENATE
                (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                AT 0380 FOREGROUND-COLOR 6
                DISPLAY "*****************************************"
                &"************************************************"
                AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                ADD 1 TO WS-LINHA
                DISPLAY "Prima ENTER para sair."
                LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                HIGHLIGHT
                CONTINUE
               NOT AT END
                DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                AT 0337 FOREGROUND-COLOR 6
                DISPLAY FUNCTION CONCATENATE
                (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                AT 0380 FOREGROUND-COLOR 6
                DISPLAY FS-CODLIVRO LINE WS-LINHA COL 03
                DISPLAY FS-TITULO LINE WS-LINHA COL 13
                DISPLAY FS-CODTEMA1 LINE WS-LINHA COL 59
                DISPLAY FS-CODAUTOR1 LINE WS-LINHA COL 73
                ADD 1 TO WS-LINHA
                ADD 1 TO WS-LINHAS-PAGINA
                IF (WS-LINHAS-PAGINA>10) THEN
                   ADD 1 TO WS-LINHA
                   DISPLAY "*******************************************"
                   & "**********************************************"
                   AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                   ADD 1 TO WS-LINHA
                   DISPLAY "Prima ENTER para continuar."
                   LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                   HIGHLIGHT
                   ACCEPT OMITTED LINE WS-LINHA COL 48
                   DISPLAY CLS
                   DISPLAY LAYOUT-INICIAL
                   DISPLAY MENU
                   DISPLAY LAYOUT-LISTAR-LIVROS
                   MOVE 9 TO WS-LINHA
                   ADD 1 TO WS-PAGINA
                   MOVE 1 TO WS-LINHAS-PAGINA
                END-IF
               END-READ
            END-PERFORM
         END-IF.
         ACCEPT OMITTED AT 2501.
         CLOSE FICLIV.
         GO INICIO-LIVROS.

       INICIO-TEMAS.

         DISPLAY CLS
         PERFORM
           MOVE "Temas" TO WS-OP1
           MOVE "MENU" TO WS-OP
           MOVE "ESC PARA SAIR" TO WS-ESTADO
           MOVE 0 TO WS-OPCAO2
           DISPLAY LAYOUT-INICIAL
           DISPLAY LAYOUT-MENU-INICIAL
           DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
           WRK-ANO) AT 0380 FOREGROUND-COLOR 6
           ACCEPT LAYOUT-CLTA
              EVALUATE TRUE
                   WHEN INSERIR
                       PERFORM INSERIR-TEMAS
                   WHEN CONSULTAR
                       PERFORM CONSULTAR-TEMAS
                   WHEN ALTERAR
                       PERFORM ALTERAR-TEMAS
                   WHEN ELIMINAR
                       PERFORM ELIMINAR-TEMAS
                   WHEN LISTAR
                       PERFORM LISTAR-TEMAS
                   WHEN SAIR1
                       CLOSE FICTEM
                       PERFORM MENU-INICIAL
                   END-EVALUATE
         END-PERFORM.
         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO MENU-INICIAL
         END-IF.

       INSERIR-TEMAS.

         OPEN I-O FICTEM.
         MOVE 0 TO FS-CODTEMA.
         MOVE 0 TO FS-CODTEMA1.
         MOVE 0 TO BOOLEANO.
         MOVE SPACES TO TEMA1.
         MOVE SPACES TO FS-TEMA.
         MOVE SPACES TO FS-TEMA.
         MOVE "INSERIR TEMAS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         DISPLAY LAYOUT-INICIAL.
         ACCEPT LAYOUT-REGISTO-TEMAS.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-TEMAS
         END-IF.

         PERFORM

         PERFORM WITH TEST AFTER UNTIL VALIDA-TEMA
             IF NOT VALIDA-TEMA THEN
               MOVE "COD-TEMA TEM DE SER DE UM NUMERO DE 01 A 99" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-TEMAS
             END-IF
         END-PERFORM

         PERFORM WITH TEST AFTER UNTIL FS-TEMA IS ALPHABETIC OR
         NOT FS-TEMA = SPACES
             IF ((FS-TEMA = SPACES) OR (FS-TEMA NOT ALPHABETIC)) THEN
             MOVE "NOME DO TEMA MAL INTRODUZIDO" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-TEMAS
         END-PERFORM

         MOVE FS-CODTEMA TO FS-CODTEMA1
         MOVE FS-TEMA TO TEMA1

         IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICTEM NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-TEMA = TEMA1 THEN
                  MOVE 1 TO BOOLEANO
                  CONTINUE
             END-READ
             END-PERFORM
         END-IF

         IF BOOLEANO = 1 THEN
             MOVE "TEMA COM ESSE NOME JA EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-TEMAS
         ELSE
             MOVE FS-CODTEMA1 TO FS-CODTEMA
             MOVE TEMA1 TO FS-TEMA
         END-IF

         END-PERFORM.

         WRITE REGISTO-T
           INVALID KEY
              MOVE "TEMA COM COD-TEMA INDICADO JA EXISTE" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO INSERIR-TEMAS
           NOT INVALID KEY
              MOVE "TEMA INTRODUZIDO COM SUCESSO" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO INSERIR-TEMAS
         END-WRITE.

         CLOSE FICTEM.

       CONSULTAR-TEMAS.

         OPEN I-O FICTEM.
         MOVE "CONSULTAR TEMAS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-T.
         ACCEPT WS-CHAVE2.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICTEM
              INVALID KEY
              MOVE "CODIGO NAO EXISTENTE!" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO CONSULTAR-TEMAS
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-TEMAS
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS2
             MOVE "ENTER PARA CONTINUAR" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO CONSULTAR-TEMAS
         END-IF.

         CLOSE FICTEM.

       ALTERAR-TEMAS.

         OPEN I-O FICTEM.
         MOVE 0 TO FS-CODTEMA.
         MOVE "ALTERAR TEMAS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-T.
         ACCEPT WS-CHAVE2.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-TEMAS
         END-IF.

         PERFORM WITH TEST AFTER UNTIL VALIDA-TEMA
             IF NOT VALIDA-TEMA THEN
               MOVE "COD-TEMA TEM DE SER DE 01 ATE 99" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-TEMAS
             END-IF
         END-PERFORM

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICTEM
             INVALID KEY MOVE "COD-TEMA NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-TEMAS
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-OK) THEN
           ACCEPT WS-DADOS2

           PERFORM WITH TEST AFTER UNTIL FS-TEMA IS ALPHABETIC OR
           NOT FS-TEMA = SPACES
             IF ((FS-TEMA = SPACES) OR (FS-TEMA NOT ALPHABETIC)) THEN
               MOVE "NOME DO TEMA MAL INTRODUZIDO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-TEMAS
           END-PERFORM

           MOVE FS-CODTEMA TO FS-CODTEMA1
           MOVE FS-TEMA TO TEMA1

           CLOSE FICTEM
           OPEN I-O FICTEM

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICTEM NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-TEMA = TEMA1 THEN
                  MOVE 1 TO BOOLEANO
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO = 1 THEN
             MOVE "TEMA COM ESSE NOME JA EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-TEMAS
           ELSE
             MOVE FS-CODTEMA1 TO FS-CODTEMA
             MOVE TEMA1 TO FS-TEMA
           END-IF

           DISPLAY "QUER ALTERAR O REGISTO (S/N)?: " AT 1313
           FOREGROUND-COLOR 4 HIGHLIGHT

           PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1344
               IF NOT VALIDA-CONFIRMAR THEN
                 MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                 PERFORM MOSTRA-ERRO
           END-PERFORM

           MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

           IF WS-CONFIRMAR = "S" THEN
            REWRITE REGISTO-T
            END-REWRITE
            MOVE "ALTERADO COM SUCESSO. ENTER PARA CONTINUAR"
            TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-TEMAS
         ELSE
            MOVE "LIVRO NAO ALTERADO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-TEMAS
         END-IF

         END-IF.

         CLOSE FICTEM.

       ELIMINAR-TEMAS.

         OPEN I-O FICTEM.
         MOVE "ELIMINAR TEMAS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-T.
         MOVE 0 TO FS-CODTEMA.
         MOVE SPACES TO WS-CONFIRMAR.
         ACCEPT WS-CHAVE2.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
               READ FICTEM
                INVALID KEY
                MOVE "ESTE CODIGO NAO EXISTE!" TO WS-MSG-ERRO
                PERFORM MOSTRA-ERRO
                GO ELIMINAR-TEMAS
              END-READ
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
               GO INICIO-TEMAS
         END-IF.

         IF (FS-OK) THEN
               DISPLAY WS-DADOS2
               DISPLAY "TEM A CERTEZA QUE QUER ELIMINAR (S/N)? " AT 1314
               FOREGROUND-COLOR 4 HIGHLIGHT

               PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1353
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
               END-PERFORM
             MOVE FUNCTION UPPER-CASE (WS-CONFIRMAR) TO WS-CONFIRMAR
             IF WS-CONFIRMAR = "S" THEN
               DELETE FICTEM
               END-DELETE
               MOVE "ELIMINADO COM SUCESSO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-TEMAS
             ELSE
               MOVE "REGISTO NAO ELIMINADO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-TEMAS
         END-IF.


         CLOSE FICTEM.

       LISTAR-TEMAS.

         OPEN I-O FICTEM.

         MOVE "LISTAR TEMAS" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE 1 TO WS-PAGINA.
         MOVE 1 TO WS-LINHAS-PAGINA.
         MOVE 9 TO WS-LINHA.
         MOVE 0 TO FS-CODTEMA.
         DISPLAY MENU.
         DISPLAY LAYOUT-LISTAR-TEMAS.

         IF (FS-CANCELA) THEN
             GO INICIO-TEMAS
         END-IF.

         START FICTEM KEY > FS-CODTEMA
             INVALID KEY MOVE "FICHEIRO VAZIO" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
         END-START.

         IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICTEM NEXT RECORD
             AT END
               ADD 1 TO WS-LINHA
               DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
               AT 0337 FOREGROUND-COLOR 6
               DISPLAY FUNCTION CONCATENATE
               (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
               AT 0380 FOREGROUND-COLOR 6
               DISPLAY "*****************************************"
               &"************************************************"
               AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
               ADD 1 TO WS-LINHA
               DISPLAY "Prima ENTER para sair."
               LINE WS-LINHA COL 25 FOREGROUND-COLOR 3
               HIGHLIGHT
               CONTINUE
             NOT AT END
               DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
               AT 0337 FOREGROUND-COLOR 6
               DISPLAY FUNCTION CONCATENATE
               (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
               AT 0380 FOREGROUND-COLOR 6
               DISPLAY FS-CODTEMA LINE WS-LINHA COL 03
               DISPLAY FS-TEMA LINE WS-LINHA COL 15
               ADD 1 TO WS-LINHA
               ADD 1 TO WS-LINHAS-PAGINA
               IF (WS-LINHAS-PAGINA>10) THEN
                   ADD 1 TO WS-LINHA
                   DISPLAY "*******************************************"
                   & "*********************************************"
                   AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                   ADD 1 TO WS-LINHA
                   DISPLAY "Prima ENTER para continuar."
                   LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                   HIGHLIGHT
                   ACCEPT OMITTED LINE WS-LINHA COL 48
                   DISPLAY CLS
                   DISPLAY LAYOUT-INICIAL
                   DISPLAY MENU
                   DISPLAY LAYOUT-LISTAR-TEMAS
                   MOVE 9 TO WS-LINHA
                   MOVE 1 TO WS-LINHAS-PAGINA
                   ADD 1 TO WS-PAGINA
                END-IF
             END-READ
             END-PERFORM
         END-IF.
         ACCEPT OMITTED AT 2501.
         CLOSE FICTEM.
         GO INICIO-TEMAS.

       INICIO-AUTORES.

         DISPLAY CLS.
         PERFORM
           MOVE "Autores" TO WS-OP1
           MOVE "MENU" TO WS-OP
           MOVE "ESC PARA SAIR" TO WS-ESTADO
           MOVE 0 TO WS-OPCAO2
           DISPLAY LAYOUT-INICIAL
           DISPLAY LAYOUT-MENU-INICIAL
           DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
           WRK-ANO) AT 0380 FOREGROUND-COLOR 6
           ACCEPT LAYOUT-CLTA

              EVALUATE TRUE
                   WHEN INSERIR
                       PERFORM INSERIR-AUTORES
                   WHEN CONSULTAR
                       PERFORM CONSULTAR-AUTORES
                   WHEN ALTERAR
                       PERFORM ALTERAR-AUTORES
                   WHEN ELIMINAR
                       PERFORM ELIMINAR-AUTORES
                   WHEN LISTAR
                       PERFORM LISTAR-AUTORES
                   WHEN SAIR1
                       CLOSE FICAUT
                       PERFORM MENU-INICIAL
                   END-EVALUATE
         END-PERFORM.
         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO MENU-INICIAL
         END-IF.


       INSERIR-AUTORES.

         OPEN I-O FICAUT.
         MOVE 0 TO FS-CODAUTOR.
         MOVE SPACES TO FS-AUTOR.
         MOVE "INSERIR AUTORES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         DISPLAY LAYOUT-INICIAL.
         ACCEPT LAYOUT-REGISTO-AUTORES.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-AUTORES
         END-IF.

         PERFORM

         PERFORM WITH TEST AFTER UNTIL VALIDA-AUTOR
             IF NOT VALIDA-AUTOR THEN
               MOVE "COD-AUTOR TEM DE SER DE UM NUMERO DE 001 A 999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-AUTORES
             END-IF
         END-PERFORM

         PERFORM WITH TEST AFTER UNTIL FS-AUTOR IS ALPHABETIC OR
         NOT FS-AUTOR = SPACES
             IF ((FS-AUTOR = SPACES) OR (FS-AUTOR NOT ALPHABETIC)) THEN
             MOVE "NOME DO AUTOR MAL INTRODUZIDO" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-AUTORES
         END-PERFORM

         MOVE FS-CODAUTOR TO FS-CODAUTOR1
         MOVE FS-AUTOR TO AUTOR1

         IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICAUT NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-AUTOR = AUTOR1 THEN
                  MOVE 1 TO BOOLEANO
                  CONTINUE
             END-READ
             END-PERFORM
         END-IF

         IF BOOLEANO = 1 THEN
             MOVE "AUTOR COM ESSE NOME JA EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INSERIR-AUTORES
         ELSE
             MOVE FS-CODAUTOR1 TO FS-CODAUTOR
             MOVE AUTOR1 TO FS-AUTOR
         END-IF

         END-PERFORM.

         WRITE REGISTO-A
           INVALID KEY
               MOVE "AUTOR COM COD-AUTOR INDICADO JA EXISTE"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-AUTORES
           NOT INVALID KEY
               MOVE "AUTOR INTRODUZIDO COM SUCESSO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-AUTORES
         END-WRITE.

         CLOSE FICAUT.

       CONSULTAR-AUTORES.

         OPEN I-O FICAUT.
         MOVE "CONSULTAR AUTORES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-A.
         ACCEPT WS-CHAVE3.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICAUT
              INVALID KEY
              MOVE "CODIGO NAO EXISTENTE!" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO CONSULTAR-AUTORES
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-AUTORES
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS3
             MOVE "ENTER PARA CONTINUAR" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO CONSULTAR-AUTORES
         END-IF.

         CLOSE FICAUT.

       ALTERAR-AUTORES.

         OPEN I-O FICAUT.
         MOVE 0 TO FS-CODAUTOR.
         MOVE "ALTERAR AUTORES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-A.
         ACCEPT WS-CHAVE3.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-AUTORES
         END-IF.

         PERFORM WITH TEST AFTER UNTIL VALIDA-AUTOR
             IF NOT VALIDA-AUTOR THEN
               MOVE "COD-AUTOR TEM DE SER DE 001 ATE 999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-AUTORES
             END-IF
         END-PERFORM

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICAUT
             INVALID KEY MOVE "COD-AUTOR NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-AUTORES
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-OK) THEN
           ACCEPT WS-DADOS3

           PERFORM

           PERFORM WITH TEST AFTER UNTIL FS-AUTOR IS ALPHABETIC OR
           NOT FS-AUTOR = SPACES
             IF ((FS-AUTOR = SPACES) OR (FS-AUTOR NOT ALPHABETIC)) THEN
               MOVE "TEMA MAL INTRODUZIDO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-AUTORES
               END-PERFORM

           MOVE FS-CODAUTOR TO FS-CODAUTOR1
           MOVE FS-AUTOR TO AUTOR1

           CLOSE FICAUT
           OPEN I-O FICAUT

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICAUT NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-AUTOR = AUTOR1 THEN
                  MOVE 1 TO BOOLEANO
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO = 1 THEN
             MOVE "AUTOR COM ESSE NOME JA EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-AUTORES
           ELSE
             MOVE FS-CODAUTOR1 TO FS-CODAUTOR
             MOVE AUTOR1 TO FS-AUTOR
           END-IF

           END-PERFORM

           DISPLAY "QUER ALTERAR O REGISTO (S/N)?: " AT 1313
           FOREGROUND-COLOR 4 HIGHLIGHT

           PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1344
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
           END-PERFORM

           MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

           IF WS-CONFIRMAR = "S" THEN
            REWRITE REGISTO-A
            END-REWRITE
            MOVE "ALTERADO COM SUCESSO. ENTER PARA CONTINUAR"
            TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-AUTORES
           ELSE
            MOVE "LIVRO NAO ALTERADO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO ALTERAR-AUTORES
           END-IF

         END-IF.

         CLOSE FICAUT.

       ELIMINAR-AUTORES.

         OPEN I-O FICAUT.

         MOVE "ELIMINAR AUTORES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-A.
         MOVE 0 TO FS-CODAUTOR.
         MOVE SPACES TO WS-CONFIRMAR.
         ACCEPT WS-CHAVE3.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICAUT
                INVALID KEY
                MOVE "ESTE CODIGO NAO EXISTE!" TO WS-MSG-ERRO
                PERFORM MOSTRA-ERRO
                GO ELIMINAR-AUTORES
              END-READ
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-AUTORES
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS3
             DISPLAY "TEM A CERTEZA QUE QUER ELIMINAR (S/N)? " AT 1314
             FOREGROUND-COLOR 4 HIGHLIGHT

             PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1353
                  IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
             END-PERFORM
             MOVE FUNCTION UPPER-CASE (WS-CONFIRMAR) TO WS-CONFIRMAR
             IF WS-CONFIRMAR = "S" THEN
               DELETE FICAUT
               END-DELETE
               MOVE "ELIMINADO COM SUCESSO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-AUTORES
             ELSE
               MOVE "REGISTO NAO ELIMINADO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-AUTORES
         END-IF.

         CLOSE FICAUT.

       LISTAR-AUTORES.

         OPEN I-O FICAUT.

         MOVE "LISTAR AUTORES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE 1 TO WS-PAGINA.
         MOVE 1 TO WS-LINHAS-PAGINA.
         MOVE 9 TO WS-LINHA.
         MOVE 0 TO FS-CODAUTOR.
         DISPLAY LAYOUT-LISTAR-AUTORES.

         IF (FS-CANCELA) THEN
             GO INICIO-AUTORES
         END-IF.

         START FICAUT KEY > FS-CODAUTOR
             INVALID KEY MOVE "FICHEIRO VAZIO" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
         END-START.

         IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICAUT NEXT RECORD
               AT END
                  ADD 1 TO WS-LINHA
                  DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                  AT 0337 FOREGROUND-COLOR 6
                  DISPLAY FUNCTION CONCATENATE
                  (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                  AT 0380 FOREGROUND-COLOR 6
                  DISPLAY "*****************************************"
                  &"************************************************"
                  AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                  ADD 1 TO WS-LINHA
                  DISPLAY "Prima ENTER para sair."
                  LINE WS-LINHA COL 25 FOREGROUND-COLOR 3
                  HIGHLIGHT
                  CONTINUE
               NOT AT END
                  DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                  AT 0337 FOREGROUND-COLOR 6
                  DISPLAY FUNCTION CONCATENATE
                  (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                  AT 0380 FOREGROUND-COLOR 6
                  DISPLAY FS-CODAUTOR LINE WS-LINHA COL 04
                  DISPLAY FS-AUTOR LINE WS-LINHA COL 13
                  ADD 1 TO WS-LINHA
                  ADD 1 TO WS-LINHAS-PAGINA
                  IF (WS-LINHAS-PAGINA>10) THEN
                   ADD 1 TO WS-LINHA
                   DISPLAY "*******************************************"
                   & "**********************************************"
                   AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                   ADD 1 TO WS-LINHA
                   DISPLAY "Prima ENTER para continuar."
                   LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                   HIGHLIGHT
                   ACCEPT OMITTED LINE WS-LINHA COL 48
                   DISPLAY CLS
                   DISPLAY LAYOUT-INICIAL
                   DISPLAY MENU
                   DISPLAY LAYOUT-LISTAR-AUTORES
                   MOVE 9 TO WS-LINHA
                   MOVE 1 TO WS-LINHAS-PAGINA
                   ADD 1 TO WS-PAGINA
                  END-IF
             END-READ
             END-PERFORM
         END-IF.

         ACCEPT OMITTED AT 2501.
         CLOSE FICAUT.
         GO INICIO-AUTORES.

       INICIO-ALUGUERES.

         DISPLAY CLS.

         PERFORM
           MOVE "Alugueres" TO WS-OP1
           MOVE "MENU" TO WS-OP
           MOVE "ESC PARA SAIR" TO WS-ESTADO
           MOVE 0 TO WS-OPCAO3
           DISPLAY LAYOUT-INICIAL
           DISPLAY LAYOUT-MENU-INICIAL
           DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
           WRK-ANO) AT 0380 FOREGROUND-COLOR 6
           ACCEPT LAYOUT-ALUGUERES

              EVALUATE TRUE
                   WHEN INSERIR1
                       PERFORM INSERIR-ALUGUERES
                   WHEN CONSULTAR1
                       PERFORM CONSULTAR-ALUGUERES
                   WHEN ALTERAR1
                       PERFORM ALTERAR-ALUGUERES
                   WHEN ELIMINAR1
                       PERFORM ELIMINAR-ALUGUERES
                   WHEN LISTAR1
                       PERFORM LISTAR-ALUGUERES
                   WHEN DEVOLVER
                       PERFORM DEVOLVER-ALUGUERES
                   WHEN SAIR2
                       CLOSE FICALU
                       PERFORM MENU-INICIAL
                   END-EVALUATE

         END-PERFORM.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
             GO MENU-INICIAL
         END-IF.

       INSERIR-ALUGUERES.

         OPEN I-O FICALU.
         MOVE 0 TO FS-CODALUGUER.
         MOVE 0 TO FS-DATA-DIA1.
         MOVE 0 TO FS-DATA-MES1.
         MOVE 0 TO FS-DATA-ANO1.
         MOVE 0 TO FS-CODLIVRO1.
         MOVE 0 TO FS-NIF1.
         MOVE 0 TO DIVISAO.
         MOVE 0 TO RESTO.
         MOVE 0 TO BOOLEANO.
         MOVE 0 TO BOOLEANO1.
         MOVE 0 TO FS-NIF.
         MOVE 0 TO FS-CODLIVRO.
         MOVE SPACES TO FS-TITULO.
         MOVE SPACES TO FS-NOME.
         MOVE SPACES TO NOME1.
         MOVE SPACES TO TITULO1.
         MOVE SPACES TO WS-CONFIRMAR.
         MOVE SPACES TO FS-SITUACAO.
         MOVE "INSERIR ALUGUERES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         ACCEPT LAYOUT-REGISTO-ALUGUERES.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-ALUGUERES
         END-IF.

         PERFORM

           PERFORM WITH TEST AFTER UNTIL VALIDA-ALUGUER
             IF NOT VALIDA-ALUGUER THEN
               MOVE "COD-ALUGUER TEM DE SER DE 00001 ATE 99999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-ALUGUERES
             END-IF
           END-PERFORM

           PERFORM WITH TEST AFTER UNTIL VALIDA-DIA1 AND VALIDA-MES1
           AND VALIDA-ANO1
               IF NOT VALIDA-DIA1 THEN
                   MOVE "DATA INVALIDA (DIA)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO INSERIR-ALUGUERES
               END-IF
               IF NOT VALIDA-MES1 THEN
                   MOVE "DATA INVALIDA (MES)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO INSERIR-ALUGUERES
               END-IF
               IF NOT VALIDA-ANO1 THEN
                   MOVE "DATA INVALIDA (ANO)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO INSERIR-ALUGUERES
               END-IF
           END-PERFORM

           IF ((FS-DATA-DIA1>30) AND (FS-DATA-MES1=04 OR FS-DATA-MES1=06
             OR FS-DATA-MES1=09 OR FS-DATA-MES1=11)) THEN
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-ALUGUERES
           END-IF

           DIVIDE FS-DATA-ANO1 BY 4 GIVING DIVISAO REMAINDER RESTO

           IF ((FS-DATA-DIA1>28) AND (RESTO > 0) AND
           (FS-DATA-MES1 = 02)) OR ((RESTO = 0) AND
           (FS-DATA-MES1 = 02) AND (FS-DATA-DIA1 >29))
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-ALUGUERES
           END-IF

           PERFORM WITH TEST AFTER UNTIL VALIDA-LIVRO1
             IF NOT VALIDA-LIVRO1 THEN
               MOVE "COD-LIVRO TEM DE SER DE 0001 ATE 9999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-ALUGUERES
             END-IF
           END-PERFORM

           OPEN I-O FICLIV

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICLIV NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODLIVRO = FS-CODLIVRO1 THEN
                  MOVE 1 TO BOOLEANO
                  MOVE FS-TITULO TO TITULO1
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO = 1 THEN
             DISPLAY TITULO1 AT 1227 FOREGROUND-COLOUR 6
           ELSE
             MOVE "LIVRO NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             CLOSE FICLIV
             GO INSERIR-ALUGUERES
           END-IF

           CLOSE FICLIV

           PERFORM WITH TEST AFTER UNTIL VALIDA-NIF1
             IF NOT VALIDA-NIF1 THEN
               MOVE "NIF-CLIENTE TEM DE SER DE 100000000 "
               &"ATE 999999999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO INSERIR-ALUGUERES
             END-IF
           END-PERFORM

           OPEN I-O FICCLI

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICCLI NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-NIF = FS-NIF1 THEN
                  MOVE 1 TO BOOLEANO1
                  MOVE FS-NOME TO NOME1
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO1 = 1 THEN
             DISPLAY NOME1 AT 1338 FOREGROUND-COLOUR 6
           ELSE
             MOVE "CLIENTE NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             CLOSE FICCLI
             GO INSERIR-ALUGUERES
           END-IF

           CLOSE FICCLI

           MOVE "A DEVOLVER" TO FS-SITUACAO
           DISPLAY FUNCTION CONCATENATE (FS-SITUACAO) AT 1425
           FOREGROUND-COLOR 4 HIGHLIGHT

         END-PERFORM.

         DISPLAY "QUER INSERIR O ALUGUER (S/N)?: " AT 1613
         FOREGROUND-COLOR 4 HIGHLIGHT

         PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
           ACCEPT WS-CONFIRMAR AT 1644
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
         END-PERFORM

         MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

         IF WS-CONFIRMAR = "S" THEN
            WRITE REGISTO-AL
            INVALID KEY
            MOVE "ALUGUER COM ESSE CODIGO JA EXISTE" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO INSERIR-ALUGUERES
          NOT INVALID KEY
            MOVE "ALUGUER INTRODUZIDO COM SUCESSO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            END-WRITE
            GO INSERIR-ALUGUERES
         ELSE
            MOVE "ALUGUER NAO INTRODUZIDO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO INSERIR-ALUGUERES
         END-IF.

         CLOSE FICALU.

       CONSULTAR-ALUGUERES.

         OPEN I-O FICALU.

         MOVE "CONSULTAR ALUGUERES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-AL.
         MOVE 0 TO FS-CODALUGUER.
         ACCEPT WS-CHAVE5.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICALU
              INVALID KEY
              MOVE "ALUGUER NAO EXISTENTE!" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO CONSULTAR-ALUGUERES
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-ALUGUERES
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS5
             DISPLAY WS-DEVOLUCAO
             IF FS-SITUACAO = "A DEVOLVER" THEN
               DISPLAY FS-SITUACAO AT 1525 FOREGROUND-COLOR 4 HIGHLIGHT
             ELSE
               DISPLAY FS-SITUACAO AT 1525 FOREGROUND-COLOR 2 HIGHLIGHT
         END-IF.

         OPEN I-O FICLIV
         IF (FS <> "05") THEN
            PERFORM UNTIL (FS="10")
            READ FICLIV NEXT RECORD
            AT END
               CONTINUE
            NOT AT END
               IF FS-CODLIVRO = FS-CODLIVRO1 THEN
               MOVE FS-TITULO TO TITULO1
               DISPLAY TITULO1 AT 1227 FOREGROUND-COLOR 6
               CONTINUE
               END-IF
            END-READ
            END-PERFORM
         END-IF.

         CLOSE FICLIV.

         OPEN I-O FICCLI

         IF (FS <> "05") THEN
           PERFORM UNTIL (FS="10")
           READ FICCLI NEXT RECORD
           AT END
              CONTINUE
           NOT AT END
              IF FS-NIF = FS-NIF1 THEN
                MOVE FS-NOME TO NOME1
                DISPLAY NOME1 AT 1338 FOREGROUND-COLOUR 6
              END-IF
           END-READ
           END-PERFORM
         END-IF.

         CLOSE FICCLI

         MOVE "ENTER PARA CONTINUAR" TO WS-MSG-ERRO
         PERFORM MOSTRA-ERRO
         GO CONSULTAR-ALUGUERES

         CLOSE FICALU.

       ALTERAR-ALUGUERES.

         OPEN I-O FICALU.
         MOVE 0 TO FS-CODALUGUER.
         MOVE 0 TO FS-DATA-DIA1.
         MOVE 0 TO FS-DATA-MES1.
         MOVE 0 TO FS-DATA-ANO1.
         MOVE 0 TO FS-CODLIVRO1.
         MOVE 0 TO FS-NIF1.
         MOVE 0 TO DIVISAO.
         MOVE 0 TO RESTO.
         MOVE 0 TO BOOLEANO.
         MOVE 0 TO BOOLEANO1.
         MOVE 0 TO FS-NIF.
         MOVE 0 TO FS-CODLIVRO.
         MOVE SPACES TO FS-TITULO.
         MOVE SPACES TO FS-NOME.
         MOVE SPACES TO NOME1.
         MOVE SPACES TO TITULO1.
         MOVE SPACES TO WS-CONFIRMAR.
         MOVE SPACES TO FS-SITUACAO.
         MOVE 0 TO FS-CODALUGUER.
         MOVE "ALTERAR ALUGUERES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-AL.
         ACCEPT WS-CHAVE4.

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-ALUGUERES
         END-IF.

         PERFORM WITH TEST AFTER UNTIL VALIDA-ALUGUER
             IF NOT VALIDA-ALUGUER THEN
               MOVE "COD-ALUGUER TEM DE SER DE 00001 ATE 99999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
             END-IF
         END-PERFORM

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICALU
             INVALID KEY MOVE "ALUGUER NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-ALUGUERES
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF FS-SITUACAO = "ENTREGUE" THEN
             MOVE "ALUGUER JA DEVOLVIDO" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ALTERAR-ALUGUERES
         END-IF

         IF (FS-CANCELA) THEN
             MOVE "ERRO AO ALTERAR" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO INICIO-ALUGUERES
         END-IF.

         IF (FS-OK) THEN
           ACCEPT WS-DADOS4

           PERFORM

           PERFORM WITH TEST AFTER UNTIL VALIDA-DIA1 AND VALIDA-MES1
           AND VALIDA-ANO1
               IF NOT VALIDA-DIA1 THEN
                   MOVE "DATA INVALIDA (DIA)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO ALTERAR-ALUGUERES
               END-IF
               IF NOT VALIDA-MES1 THEN
                   MOVE "DATA INVALIDA (MES)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO ALTERAR-ALUGUERES
               END-IF
               IF NOT VALIDA-ANO1 THEN
                   MOVE "DATA INVALIDA (ANO)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO ALTERAR-ALUGUERES
               END-IF
           END-PERFORM

           IF ((FS-DATA-DIA1>30) AND (FS-DATA-MES1=04 OR FS-DATA-MES1=06
             OR FS-DATA-MES1=09 OR FS-DATA-MES1=11)) THEN
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
           END-IF

           DIVIDE FS-DATA-ANO1 BY 4 GIVING DIVISAO REMAINDER RESTO

           IF ((FS-DATA-DIA1>28) AND (RESTO > 0) AND
           (FS-DATA-MES1 = 02)) OR ((RESTO = 0) AND
           (FS-DATA-MES1 = 02) AND (FS-DATA-DIA1 >29))
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
           END-IF

           PERFORM WITH TEST AFTER UNTIL VALIDA-LIVRO1
             IF NOT VALIDA-LIVRO1 THEN
               MOVE "COD-LIVRO TEM DE SER DE 0001 ATE 9999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
             END-IF
           END-PERFORM

           OPEN I-O FICLIV

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICLIV NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODLIVRO = FS-CODLIVRO1 THEN
                  MOVE 1 TO BOOLEANO
                  MOVE FS-TITULO TO TITULO1
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO = 1 THEN
             DISPLAY TITULO1 AT 1227 FOREGROUND-COLOUR 6
           ELSE
             MOVE "LIVRO NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             CLOSE FICLIV
             GO ALTERAR-ALUGUERES
           END-IF

           CLOSE FICLIV

           PERFORM WITH TEST AFTER UNTIL VALIDA-NIF1
             IF NOT VALIDA-NIF1 THEN
               MOVE "NIF-CLIENTE TEM DE SER DE 100000000 "
               &"ATE 999999999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
             END-IF
           END-PERFORM

           OPEN I-O FICCLI

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICCLI NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-NIF = FS-NIF1 THEN
                  MOVE 1 TO BOOLEANO1
                  MOVE FS-NOME TO NOME1
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           IF BOOLEANO1 = 1 THEN
             DISPLAY NOME1 AT 1338 FOREGROUND-COLOUR 6
           ELSE
             MOVE "CLIENTE NAO EXISTE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             CLOSE FICCLI
             GO ALTERAR-ALUGUERES
           END-IF

           CLOSE FICCLI

           DISPLAY FS-SITUACAO AT 1425 FOREGROUND-COLOR 4 HIGHLIGHT

           END-PERFORM

           DISPLAY "QUER ALTERAR O ALUGUER (S/N)?: " AT 1613
           FOREGROUND-COLOR 4 HIGHLIGHT

           PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
               ACCEPT WS-CONFIRMAR AT 1644
                 IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
           END-PERFORM

           MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

           IF WS-CONFIRMAR = "S" THEN
               REWRITE REGISTO-AL
               END-REWRITE
               MOVE "ALTERADO COM SUCESSO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
           ELSE
               MOVE "LIVRO NAO ALTERADO" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ALTERAR-ALUGUERES
           END-IF

         END-IF.

         CLOSE FICALU.

       ELIMINAR-ALUGUERES.

         OPEN I-O FICALU.
         MOVE "ELIMINAR ALUGUERES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE SPACES TO REGISTO-AL.
         MOVE 0 TO FS-CODALUGUER.
         MOVE SPACES TO WS-CONFIRMAR.
         ACCEPT WS-CHAVE5.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
             READ FICALU
             INVALID KEY
             MOVE "ALUGUER NAO EXISTE!" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO ELIMINAR-ALUGUERES
             END-READ
         ELSE
             MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-ALUGUERES
         END-IF.

         IF (FS-OK) THEN
             DISPLAY WS-DADOS5
             DISPLAY WS-DEVOLUCAO
             IF FS-SITUACAO = "A DEVOLVER" THEN
               DISPLAY FS-SITUACAO AT 1525 FOREGROUND-COLOR 4 HIGHLIGHT
             ELSE
               DISPLAY FS-SITUACAO AT 1525 FOREGROUND-COLOR 2 HIGHLIGHT
         END-IF.

         OPEN I-O FICLIV
         IF (FS <> "05") THEN
            PERFORM UNTIL (FS="10")
            READ FICLIV NEXT RECORD
            AT END
               CONTINUE
            NOT AT END
               IF FS-CODLIVRO = FS-CODLIVRO1 THEN
               MOVE FS-TITULO TO TITULO1
               DISPLAY TITULO1 AT 1227 FOREGROUND-COLOR 6
               CONTINUE
               END-IF
            END-READ
            END-PERFORM
         END-IF.

         CLOSE FICLIV.

         OPEN I-O FICCLI

         IF (FS <> "05") THEN
           PERFORM UNTIL (FS="10")
           READ FICCLI NEXT RECORD
           AT END
              CONTINUE
           NOT AT END
              IF FS-NIF = FS-NIF1 THEN
                MOVE FS-NOME TO NOME1
                DISPLAY NOME1 AT 1338 FOREGROUND-COLOUR 6
              END-IF
           END-READ
           END-PERFORM
         END-IF.

         CLOSE FICCLI.

         DISPLAY "TEM A CERTEZA QUE QUER ELIMINAR (S/N)? " AT 1714
         FOREGROUND-COLOR 4 HIGHLIGHT

             PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
              ACCEPT WS-CONFIRMAR AT 1753
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
             END-PERFORM

             MOVE FUNCTION UPPER-CASE (WS-CONFIRMAR) TO WS-CONFIRMAR
             IF WS-CONFIRMAR = "S" THEN
               DELETE FICALU
               END-DELETE
               MOVE "ELIMINADO COM SUCESSO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-ALUGUERES
             ELSE
               MOVE "ALUGUER NAO ELIMINADO. ENTER PARA CONTINUAR"
               TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO ELIMINAR-ALUGUERES
         END-IF.

         CLOSE FICALU.

       LISTAR-ALUGUERES.

         OPEN I-O FICALU.
         MOVE "LISTAR ALUGUERES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         MOVE 1 TO WS-PAGINA.
         MOVE 1 TO WS-LINHAS-PAGINA.
         MOVE 9 TO WS-LINHA.
         MOVE 0 TO FS-CODALUGUER.
         DISPLAY MENU.
         DISPLAY LAYOUT-LISTAR-ALUGUERES.

         IF (FS-CANCELA) THEN
               GO INICIO-ALUGUERES
         END-IF.

         START FICALU KEY > FS-CODALUGUER
            INVALID KEY MOVE "FICHEIRO VAZIO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
         END-START.

         IF (FS <> "05") THEN
            PERFORM UNTIL (FS="10")
            READ FICALU NEXT RECORD
               AT END
                 ADD 2 TO WS-LINHA
                 DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                 AT 0337 FOREGROUND-COLOR 6
                 DISPLAY FUNCTION CONCATENATE
                 (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                 AT 0380 FOREGROUND-COLOR 6
                 DISPLAY "*****************************************"
                 &"************************************************"
                 AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                 ADD 1 TO WS-LINHA
                 DISPLAY "Prima ENTER para sair."
                 LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                 HIGHLIGHT
                 CONTINUE
               NOT AT END
                 DISPLAY FUNCTION CONCATENATE ("Pagina: ",WS-PAGINA)
                 AT 0337 FOREGROUND-COLOR 6
                 DISPLAY FUNCTION CONCATENATE
                 (WRK-DIA,"-",WRK-MES,"-",WRK-ANO)
                 AT 0380 FOREGROUND-COLOR 6
                 DISPLAY FS-CODALUGUER LINE WS-LINHA COL 03
                 DISPLAY FUNCTION CONCATENATE (FS-DATA-DIA1,"-",
                 FS-DATA-MES1,"-",FS-DATA-ANO1) LINE WS-LINHA COL 14
                 DISPLAY FUNCTION CONCATENATE (FS-DATA-DIA2,"-",
                 FS-DATA-MES2,"-",FS-DATA-ANO2) LINE WS-LINHA COL 28
                 DISPLAY FS-CODLIVRO1 LINE WS-LINHA COL 44
                 DISPLAY FS-NIF1 LINE WS-LINHA COL 56
                 IF FS-SITUACAO = "A DEVOLVER" THEN
                   DISPLAY FS-SITUACAO LINE WS-LINHA COL 73
                   FOREGROUND-COLOR 4 HIGHLIGHT
                 ELSE
                   DISPLAY FS-SITUACAO LINE WS-LINHA COL 74
                   FOREGROUND-COLOR 2 HIGHLIGHT
                 END-IF
                 ADD 1 TO WS-LINHA
                 ADD 1 TO WS-LINHAS-PAGINA
                 IF (WS-LINHAS-PAGINA>10) THEN
                   ADD 1 TO WS-LINHA
                   DISPLAY "*******************************************"
                   & "**********************************************"
                   AT LINE WS-LINHA COL 01 FOREGROUND-COLOR 6
                   ADD 1 TO WS-LINHA
                   DISPLAY "Prima ENTER para continuar."
                   LINE WS-LINHA COL 20 FOREGROUND-COLOR 3
                   HIGHLIGHT
                   ACCEPT OMITTED LINE WS-LINHA COL 48
                   ADD 1 TO WS-PAGINA
                   DISPLAY CLS
                   DISPLAY LAYOUT-INICIAL
                   DISPLAY LAYOUT-LISTAR-ALUGUERES
                   DISPLAY MENU
                   MOVE 9 TO WS-LINHA
                   MOVE 1 TO WS-LINHAS-PAGINA
                 END-IF
            END-READ
            END-PERFORM
         END-IF.

         ACCEPT OMITTED AT 2501.
         CLOSE FICALU.
         GO INICIO-ALUGUERES.

       DEVOLVER-ALUGUERES.

         OPEN I-O FICALU.
         MOVE 0 TO FS-CODALUGUER.
         MOVE 0 TO FS-DATA-DIA2.
         MOVE 0 TO FS-DATA-MES2.
         MOVE 0 TO FS-DATA-ANO2.
         MOVE 0 TO FS-CODLIVRO1.
         MOVE 0 TO FS-NIF1.
         MOVE 0 TO DIVISAO.
         MOVE 0 TO RESTO.
         MOVE 0 TO FS-NIF.
         MOVE 0 TO FS-CODLIVRO.
         MOVE SPACES TO FS-TITULO.
         MOVE SPACES TO FS-NOME.
         MOVE SPACES TO NOME1.
         MOVE SPACES TO TITULO1.
         MOVE SPACES TO WS-CONFIRMAR.
         MOVE SPACES TO FS-SITUACAO.
         MOVE "DEVOLVER ALUGUERES" TO WS-OP.
         MOVE "ESC PARA SAIR" TO WS-ESTADO.
         DISPLAY LAYOUT-INICIAL.
         DISPLAY MENU.
         DISPLAY FUNCTION CONCATENATE (WRK-DIA,"-",WRK-MES,"-",
         WRK-ANO) AT 0380 FOREGROUND-COLOR 6.
         ACCEPT WS-CHAVE5

         IF (COB-CRT-STATUS = COB-SCR-ESC) THEN
               GO INICIO-ALUGUERES
         END-IF.

         PERFORM WITH TEST AFTER UNTIL VALIDA-ALUGUER
             IF NOT VALIDA-ALUGUER THEN
               MOVE "COD-ALUGUER TEM DE SER DE 00001 ATE 99999" TO
               WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO DEVOLVER-ALUGUERES
             END-IF
         END-PERFORM.

         IF (NOT COB-CRT-STATUS=COB-SCR-ESC) THEN
              READ FICALU
              INVALID KEY
              MOVE "COD-ALUGUER NAO EXISTENTE!" TO WS-MSG-ERRO
              PERFORM MOSTRA-ERRO
              GO DEVOLVER-ALUGUERES
         ELSE
              MOVE 99 TO FS
         END-IF.

         IF (FS-CANCELA) THEN
             GO INICIO-ALUGUERES
         END-IF.

         IF (FS-OK) THEN
            IF FS-SITUACAO = "ENTREGUE" THEN
             MOVE "LIVRO JA ENTREGUE" TO WS-MSG-ERRO
             PERFORM MOSTRA-ERRO
             GO DEVOLVER-ALUGUERES
            ELSE
             DISPLAY WS-DADOS5
             OPEN I-O FICLIV
             IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICLIV NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-CODLIVRO = FS-CODLIVRO1 THEN
                  MOVE FS-TITULO TO TITULO1
                  DISPLAY TITULO1 AT 1227 FOREGROUND-COLOUR 6
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           CLOSE FICLIV

           OPEN I-O FICCLI

           IF (FS <> "05") THEN
             PERFORM UNTIL (FS="10")
             READ FICCLI NEXT RECORD
               AT END
                  CONTINUE
               NOT AT END
                  IF FS-NIF = FS-NIF1 THEN
                  MOVE FS-NOME TO NOME1
                  DISPLAY NOME1 AT 1338 FOREGROUND-COLOUR 6
                  CONTINUE
             END-READ
             END-PERFORM
           END-IF

           CLOSE FICCLI

         END-IF.

         ACCEPT WS-DEVOLUCAO

         PERFORM WITH TEST AFTER UNTIL VALIDA-DIA2 AND VALIDA-MES2
           AND VALIDA-ANO2
               IF NOT VALIDA-DIA2 THEN
                   MOVE "DATA INVALIDA (DIA)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO DEVOLVER-ALUGUERES
               END-IF
               IF NOT VALIDA-MES2 THEN
                   MOVE "DATA INVALIDA (MES)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO DEVOLVER-ALUGUERES
               END-IF
               IF NOT VALIDA-ANO2 THEN
                   MOVE "DATA INVALIDA (ANO)" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
                   GO DEVOLVER-ALUGUERES
               END-IF
           END-PERFORM

           IF ((FS-DATA-DIA2>30) AND (FS-DATA-MES2=04 OR FS-DATA-MES2=06
             OR FS-DATA-MES2=09 OR FS-DATA-MES2=11)) THEN
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO DEVOLVER-ALUGUERES
           END-IF

           DIVIDE FS-DATA-ANO2 BY 4 GIVING DIVISAO REMAINDER RESTO

           IF ((FS-DATA-DIA2>28) AND (RESTO > 0) AND
           (FS-DATA-MES2 = 02)) OR ((RESTO = 0) AND
           (FS-DATA-MES2 = 02) AND (FS-DATA-DIA2 >29))
               MOVE "DATA INVALIDA" TO WS-MSG-ERRO
               PERFORM MOSTRA-ERRO
               GO DEVOLVER-ALUGUERES
           END-IF

           MOVE "ENTREGUE" TO FS-SITUACAO
           DISPLAY FUNCTION CONCATENATE (FS-SITUACAO) AT 1525
           FOREGROUND-COLOR 2 HIGHLIGHT

         DISPLAY "QUER INSERIR A DEVOLUCAO (S/N)?: " AT 1613
         FOREGROUND-COLOR 4 HIGHLIGHT

         PERFORM WITH TEST AFTER UNTIL VALIDA-CONFIRMAR
           ACCEPT WS-CONFIRMAR AT 1647
               IF NOT VALIDA-CONFIRMAR THEN
                   MOVE "TEM DE RESPONDER S OU N" TO WS-MSG-ERRO
                   PERFORM MOSTRA-ERRO
         END-PERFORM

         MOVE FUNCTION UPPER-CASE(WS-CONFIRMAR) TO WS-CONFIRMAR

         IF WS-CONFIRMAR = "S" THEN
            REWRITE REGISTO-AL
            END-REWRITE
            MOVE "ALTERADO COM SUCESSO. ENTER PARA CONTINUAR"
            TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO DEVOLVER-ALUGUERES
         ELSE
            MOVE "LIVRO NAO ALTERADO" TO WS-MSG-ERRO
            PERFORM MOSTRA-ERRO
            GO DEVOLVER-ALUGUERES
         END-IF.

         CLOSE FICALU.

         MOSTRA-ERRO.

         DISPLAY LAYOUT-ERRO.
         ACCEPT OMITTED AT LINE WS-NUML COL 60.
         DISPLAY ESTADO.

       END PROGRAM livro.
