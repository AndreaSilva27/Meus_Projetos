<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registo de Código Postal</title>
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
            <h2>Registo de Código Postal</h2>
            <form method="POST" action="form_postal.jsp">
            
                <div class="form-group">
                    <label>Código Postal:</label>
                    <input type="text" class="form-control" placeholder="insira o código postal" name="postal" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Local:</label>
                    <input type="text" class="form-control" name="local" placeholder="insira o local" required>
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
     String fpostal=request.getParameter("postal");
     String flocal=request.getParameter("local");
     
     if(fpostal==null || flocal==null  ){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into codigos_postais(Codigo_Postal,Local) values ('"+fpostal+"','"+flocal+"' )");
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
     
            
</body>
</html>