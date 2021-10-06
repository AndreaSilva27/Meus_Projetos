<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="ligarBD.*" %> 
 <%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Reservar</title>
</head>
<body>
<% 
  // recolher os dados do formulário provenientes do POST
  String wdata=request.getParameter("datareserva");
  String wmail=request.getParameter("mail");
  String wpessoas=request.getParameter("pessoas");
  String wrefeicao=request.getParameter("refeicao");
  
  // cria a ligação a base de dados
  Connection cn=ligacaoMySql.criarLigacaoMySql();
  
  // criar uma instancia da classe statement
  
  Statement st=cn.createStatement();
  
  // executar o comando para inserir os dados na tabela
  st.executeUpdate("insert into reservas(data,email,pessoas,refeicao) values ('"+wdata+"','"+wmail+"','"+wpessoas+"','"+wrefeicao+"')");
  
   out.println("<h1>Reserva efetuada!</h1>");
  
  %>
  <a href="index.jsp">Voltar</a>
</body>
</html>