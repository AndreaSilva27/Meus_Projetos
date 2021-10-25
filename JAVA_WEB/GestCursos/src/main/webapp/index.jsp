<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Gestão de Cursos</title>
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


       <div class="container" style="background-color:whitesmoke">
            <h2>Login</h2>
            <form method="POST" action="ver_utilizador.jsp">
            
                <div class="form-group">
                    <label>Utilizador:</label>
                    <input type="text" class="form-control" placeholder="nome" name="utilizador" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" class="form-control"  placeholder="digite a sua senha" name="password" required>
                </div>
                <br>
                <input type="submit" class="button1" value="Registar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">&nbsp;&nbsp;&nbsp;
                
   
            </form>
            </div>
            <br><br>
            
            
        
</body>
</html>