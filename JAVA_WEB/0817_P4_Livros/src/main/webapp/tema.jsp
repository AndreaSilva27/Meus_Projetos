<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="ligarBD.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Novo Tema</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="icon" href="icons/tema1.png">
<link rel="stylesheet" href="css/estilos.css">
<style>
body{
	background-image:url("imagens/livros2.jpg");
    background-repeat: no-repeat;
    
}
</style>
</head>
<body>
     <div class="container" style="background-color:#FE2E2E">
          <h3>Novo Tema</h3>
          <form method="POST" action="tema.jsp">
               <div class="form-group">
               <label>Descrição do Tema</label>
               <input type="text" class="form-control" name="tema" placeholder="insira aqui o novo tema" required>
               </div>
               <br>
               <input type="submit" class="btn btn-success" value="Guardar">
               <input type="reset" class="btn btn-secondary" value="Cancelar">
               <br>
               <div id="aviso"></div>
               <br>
          
          </form>
     </div>
     <%
     
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     String wtema=request.getParameter("tema");
     
     if(wtema==null){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into temas (tema) values ('"+wtema+"')");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<h3 style='color:green'>Tema registado</h3>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<h3 style='color:yellow'>Erro ao registar o tema</h3>";
     
     </script>
     <%
     }
     }
     %>
    <br><br><a href="autor.jsp" >Registar Autor</a>
</body>
</html>