<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Menu</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
    <style>
        body{
            margin:0px;
            background-image:url("imagens/bloc.png");
            height:100%;
        }
        .botoes{
            background-color:steelblue;
            color:white;
            padding:15px;
            font-size:45px;
            border:none;
            cursor:pointer;
        }
        .escolha{
            position:relative;
            display:inline-block;
        }
        .escolha2{
            display:none;
            position:absolute;
            background-color:lightsteelblue;
            min-width:160px;
            box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index:1;
        }
        .escolha2 a{
            color:darkblue;
            padding:12px;
            text-decoration:none;
            display:block;
        }
        .escolha2 a:hover{
            background-color:whitesmoke;
        }
        .escolha:hover  .escolha2{
            display:block;
        }
        .escolha:hover .botoes{
            background-color:lightsteelblue; 
        }
        .footer {
            position:absolute;
            bottom:0;
            width:100%;
        }
    </style>
<body>
      <div style="width:100%; background-color:steelblue;">
      
          <div class="escolha">
              <button class="botoes">Cursos</button>
              <div class="escolha2">
                  <a href="form_cursos.jsp">Novo Curso</a>
                  <a href="list_cursos.jsp">Listagem</a>
                  
              </div>
          </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <div class="escolha">
              <button class="botoes">Alunos</button>
              <div class="escolha2">
                  <a href="form_alunos.jsp">Novo Aluno</a>
                  <a href="list_alunos.jsp">Listagem</a>
                  
              </div>
          </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <div class="escolha">
              <button class="botoes">Professores</button>
              <div class="escolha2">
                  <a href="form_professores.jsp">Novo Professor</a>
                  <a href="list_professores.jsp">Listagem</a>
                  
              </div>
          </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <div class="escolha">
              <button class="botoes">Inscrições</button>
              <div class="escolha2">
                  <a href="form_movimentos.jsp">Nova Inscrição</a>
                  <a href="list_movimentos.jsp">Listagem</a>
                  
              </div>
          </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
           <div class="escolha">
              <button class="botoes">Código-Postal</button>
              <div class="escolha2">
                  <a href="form_postal.jsp">Nova Inscrição</a>
                  <a href="list_postal.jsp">Listagem</a>
                  
              </div>
          </div>
          
          <div class="escolha">
              <button class="botoes">Log Out</button>
              <div class="escolha2">
                  <a href="index.jsp">Sair</a>
                  <a href="criar.jsp">Novo Utilizador</a>
                  
              </div>
          </div>
      </div>
      
      <!-- <footer class="footer"><div class="rodape">GestCursos&reg;&nbsp;&nbsp;Todos os Direitos Reservados</div></footer>-->  
</body>
</html>