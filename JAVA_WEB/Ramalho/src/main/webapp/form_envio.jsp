<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="javax.mail.*" %>    
<%@page import="javax.mail.internet.*" %>
<%@page import="java.util.*" %>  
<%@page import="java.sql.*" %>
<%@page import="ligarBD.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="Pizaria Ramalho">
<meta name="author" content="Andrea">
<meta http-equiv="refresh" content="120">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pizaria Ramalho</title>
<link rel="stylesheet" href="css/estilo_piza.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="icon" href="icons/piza_icon.png">

<style>
body{
	background-image:url("imagens/piza5.jpg");
    background-repeat: no-repeat;
    background-align:center;
}
</style>
</head>
<body>
      <h1 class="title">Pizaria Ramalho</h1>
      
      <p class="text1">Dados do Pedido</p>
      <div  align="center" class="radio1" style="text-align:left;width:320px;margin-left:580px;">
           <form method="post" action="enviar.jsp">
                <label for="email">Para:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="email" id="email" name="email"><br>
                <label for="assunto">Assunto:</label>
                <input type="text" id="assunto" name="assunto" value="Dados do Pedido"><br>
                <label for="mensagem">Mensagem:</label><br>
                <textarea id="mensagem" name="mensagem" rows="12" cols="24" ></textarea><br><br>
    &nbsp;&nbsp;<input align="center" class="button1" type="submit" value="Enviar">&nbsp;&nbsp;&nbsp;&nbsp;
                <input align="center" class="button2" type="reset" value="Cancelar">
           </form>
       </div>
<a href="pizaria.jsp" target="_blank" style="color:linen;font-size:200%;">Novo Pedido</a><br><br><br><br><br><br><br>
<div class="rodape" >Pizaria Ramalho&reg;&nbsp;&nbsp;Todos os Direitos Reservados</div>        
</body>
</html>