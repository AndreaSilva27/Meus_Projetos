<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Gestão de Alunos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">

<style>
body{
	background-image:url("imagens/bloc.png");
    background-repeat: no-repeat;
    background-align:center;
    background-color:aliceblue;
	color:steelblue;
	
}
.button1{
	background-color:steelblue;
	color:linen;
	padding:8px 12px;
	border-radius:12px;
	font-size:15px;
}
.button1:hover {
	background-color:dodgerblue;
	color:linen;
}
.button2{
	background-color:firebrick;
	color:linen;
	padding:8px 12px;
	border-radius:12px;
	font-size:15px;
}
.button2:hover {
	background-color:tomato;
	color:linen;
}
</style>

</head>
<body>
      <div class="container" style="background-color:linen">
            <h2>Registo de Alunos</h2>
            <form method="POST" action="form_alunos.jsp">
            
                <div class="form-group">
                    <label>Nome do Aluno:</label>
                    <input type="text" class="form-control" placeholder="insira o nome do aluno" name="nome" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Data de Nascimento:</label>
                    <input type="date" class="form-control" name="data" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código Postal:</label>
                    <input type="text" class="form-control" placeholder="insira o código postal" name="postal" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Foto:</label>
                    <input type="file" accept="image/*" class="form-control" name="foto" required>
                </div>
                <br>
                <br>
                <input type="submit" class="button1" value="Registar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">
                <br><br>
                
                <div id="aviso"></div>
            
            
            </form>
            </div>
<%
    
        // codigo da base de dados
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     String fnome=request.getParameter("nome");
     String fdata=request.getParameter("data");
     String fpostal=request.getParameter("postal");
     String ffoto=request.getParameter("foto");
     
     if(fnome==null || fdata==null  ||fpostal==null ||ffoto==null   ){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into alunos(Nome,Data_Nascimento,Codigo_Postal,Foto) values ('"+fnome+"','"+fdata+"','"+fpostal+"' ,'"+ffoto+"' )");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:green'>Aluno Registado!</h2>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:firebrick'>Erro ao registar aluno!</h2>";
     
     </script>
     <%
     }
     }
     %>
     
     </body>
</html>