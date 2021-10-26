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
	// Recolher os dados do formulário provenientes do POST
	String win=request.getParameter("checkin");
	String wout=request.getParameter("checkout");
	String wcontacto=request.getParameter("contacto");
	String wquarto=request.getParameter("quarto");
	
	// cria a ligação à base de dados
	Connection cn=ligacaoMySql.criarLigacaoMySql();
	
	//criar uma instância da classe statement
	Statement st=cn.createStatement();
	
	//executar o comando para inserir os dados na tabela
	st.executeUpdate("insert into reservas (checkin,checkout,contacto,quarto) values('"+win+"','"+wout+"','"+wcontacto+"','"+wquarto+"')");
	
	out.println("<h1>Reserva efetuada.</h1>");
	%>
	<a href="index.jsp">Voltar</a>
</body>
</html>