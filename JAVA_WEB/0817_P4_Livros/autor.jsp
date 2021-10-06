<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="ligarBD.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Novo Autor</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="icon" href="icons/escritor.png">
<link rel="stylesheet" href="css/estilos2.css">
<style>
body{
	background-image:url("imagens/flor2.jpg");
    background-repeat: no-repeat;
    background-align:center;
}
</style>
</head>
<body>
     <div class="container" style="background-color:#FA5858">
          <h3>Novo Autor</h3>
          <form method="POST" action="autor.jsp">
               <div class="form-group" >
               <label>Nome do Autor</label>
               <input type="text" class="form-control" name="nome" placeholder="insira aqui o nome do autor" required>
               <br>
               <label>Foto do Autor</label>
               <input type="file" accept="image/*" class="form-control" name="foto" required>
               </div>
               <br>
               <input type="submit" class="btn btn-secondary" value="Guardar">
               <input type="reset" class="btn btn-danger" value="Cancelar">
               <br>
               <div id="aviso"></div>
               <br>
          
          </form>
     </div>
     <%
     
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     String wnome=request.getParameter("nome");
     String wfoto=request.getParameter("foto");
     
     if(wnome==null||wfoto==null){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into escritores (nome,foto) values ('"+wnome+"','"+wfoto+"')");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<h3 style='color:green'>Autor registado</h3>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<h3 style='color:white'>Erro ao registar o autor</h3>";
     
     </script>
     <%
     }
     }
     %>
     <br><br><a href="livros.jsp" >Registar Livro</a>
</body>
</html>