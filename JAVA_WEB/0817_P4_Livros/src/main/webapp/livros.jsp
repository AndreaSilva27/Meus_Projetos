<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="ligarBD.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Novo Livro</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="icon" href="icons/livro.png">

<style>
body{
	background-image:url("imagens/livros3.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    margin: 0px;
}
</style>
</head>
<body>
     <div class="container" style="background-color:#BDBDBD">
          <h3>Novo Livro</h3>
          <form method="POST" action="livros.jsp">
               <div class="form-group" >
               <label>Título</label>
               <input type="text" class="form-control" name="titulo" placeholder="insira aqui o titulo do livro" required>
               <br>
               <label>Data de Aquisição</label><br>
               <input type="date" name="data_aquisicao" required >
               </div>
               <br>
               <label>Código do Tema</label>
               <input type="text" class="form-control" name="cod_tema" placeholder="insira aqui o código do tema do livro" required>
               <br>
               <label>Código do Autor</label>
               <input type="text" class="form-control" name="cod_escritor" placeholder="insira aqui o código do autor" required>
               <br>
               <label>Ano de Publicação</label>
               <input type="number" min="1500" max="2021"   class="form-control" name="ano_publicacao" placeholder="insira aqui o ano de publicação do livro" required>
               <br>
               <label>Preço</label>
               <input type="number" min="0,01" max="10000000,00"  class="form-control" name="preco" placeholder="insira aqui o preço do autor" required>
               <br>
               <input type="submit" class="btn btn-warning" value="Guardar">
               <input type="reset" class="btn btn-danger" value="Cancelar">
               <br>
               <div id="aviso"></div>
               <br>
          
          </form>
     </div>
     <%
     
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     String wtitulo=request.getParameter("titulo");
     String wdata_aquisicao=request.getParameter("data_aquisicao");
     String wcod_tema=request.getParameter("cod_tema");
     String wcod_escritor=request.getParameter("cod_escritor");
     String wpreco=request.getParameter("preco");
     String wano_publicacao=request.getParameter("ano_publicacao");
     
     if(wtitulo==null||wdata_aquisicao==null||wcod_tema==null||wcod_escritor==null||wpreco==null||wano_publicacao==null){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into livros (data_aquisicao,cod_tema,titulo,cod_escritor,ano_publicacao,preco) values ('"+wdata_aquisicao+"','"+wcod_tema+"','"+wtitulo+"','"+wcod_escritor+"','"+wano_publicacao+"','"+wpreco+"')");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<h3 style='color:#0431B4'>Livro registado</h3>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<h3 style='color:red'>Erro ao registar o livro</h3>";
     
     </script>
     <%
     }
     }
     %>
     <a href="tema.jsp" >Registar Tema</a>
</body>
</html>