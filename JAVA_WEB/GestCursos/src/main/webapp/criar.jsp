<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registo de Utilizador</title>
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



         <div class="container" style="background-color:mintcream">
            <h2>Novo Utilizador</h2>
            <form method="POST" action="criar.jsp">
            
                <div class="form-group">
                    <label>Nome:</label>
                    <input type="text" class="form-control" placeholder="insira o nome" name="nome" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="text" class="form-control" name="pass" placeholder="insira a password" required>
                </div>
                <br>
                
                    
                <input type="submit" class="button1" value="Registar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">&nbsp;&nbsp;&nbsp;
                
                <br><br>
            
            </form>
            </div>
            
            <%
    
        // codigo da base de dados
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     
     String wuser=request.getParameter("nome");
     String wpass=request.getParameter("pass");
  
     
     if(wuser==null || wpass==null  ){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into utilizadores(nome,password) values ('"+wuser+"','"+wpass+"')");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:green'>Registo efetuado!</h2>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:firebrick'>Erro ao registar!</h2>";
     
     </script>
     <%
     }
     }
     %>
     
     <br><br><br><br>
     <button class="button1" onclick="document.location='menu.jsp'">Ir ao Menu</button>
            
</body>
</html>