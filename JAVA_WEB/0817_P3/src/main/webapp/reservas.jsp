<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="ligarBD.*" %> 
 <%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sorna Reservas</title>
<link rel="icon" href="icons/hotel.png">
<style>
    body{
    margin: 0px;
    background-color:#FBEFF2;
    
    }
    #div1{
     text-align:center;
     background-color:#e6b3cc;
     width:100%;
     color:white;
     font-size:70px;
     font-family: Kunstler Script, Verdana, Arial;
     padding: 10px;
 }
 #div2{
     text-align:center;
      }
</style>      
</head>
<body>
<div id="div1">
        Sorna Hotel
    </div> 
    <div id="div2"><br>
      <div id="Image">
      <img height="200" width="570" id="imageToSwap" src="imagens/hotel3.jpg">
      </div> 
      <form method="post" action="reservas.jsp">
    </div>
<% 
  // recolher os dados do formulário provenientes do POST
  String wcheckin=request.getParameter("checkin");
  String wcheckout=request.getParameter("checkout");
  String wcontato=request.getParameter("contato");
  String wquarto=request.getParameter("quarto");
  
  // cria a ligação a base de dados
  Connection cn=ligacaoMySql.criarLigacaoMySql();
  
  // criar uma instancia da classe statement
  
  Statement st=cn.createStatement();
  
  // executar o comando para inserir os dados na tabela
  st.executeUpdate("insert into reservas(checkin,checkout,contato,quarto) values ('"+wcheckin+"','"+wcheckout+"','"+wcontato+"','"+wquarto+"')");
  
  // out.println("<h1>Reserva  Efetuada!</h1>");
  
   
  
  %>
  <div id="div1">
        
        Reserva  Efetuada!
    </div> 
  <a href="index.jsp">Voltar a Nossa Homepage</a>
</body>
</html>