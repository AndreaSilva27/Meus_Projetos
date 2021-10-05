<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="ligarBD.*" %> 
 <%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registar</title>
</head>
<body>
<% 
  // recolher os dados do formulário provenientes do POST
  String wmarca=request.getParameter("marca");
  String wmodelo=request.getParameter("modelo");
  String wmatricula=request.getParameter("matricula");
  String wano=request.getParameter("ano");
  
  // cria a ligação a base de dados
  Connection cn=ligacaoMySql.criarLigacaoMySql();
  
  // criar uma instancia da classe statement
  
  Statement st=cn.createStatement();
  
  // executar o comando para inserir os dados na tabela
  st.executeUpdate("insert into registo(marca,modelo,matricula,ano) values ('"+wmarca+"','"+wmodelo+"','"+wmatricula+"','"+wano+"')");
  
   out.println("<h1>Registo efetuado!</h1>");
  
  %>
  <a href="index.jsp">Voltar</a>
</body>
</html>