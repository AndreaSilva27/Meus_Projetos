<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>  
<%@page import="java.sql.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registar</title>
</head>
<body>

<%
// Recolher os dados do formulário 
String temp_marca=request.getParameter("txt_marca");
String temp_modelo=request.getParameter("txt_modelo");
String temp_matricula=request.getParameter("txt_matricula");
String temp_ano=request.getParameter("txt_ano");

%>

<table>
	<tr>
		<td>Marca</td>
		<td><%=temp_marca%></td>
    </tr>
	<tr>
		<td>Modelo</td>
		<td><%=temp_modelo%></td>
    </tr>
	<tr>
		<td>Matricula</td>
		<td><%=temp_matricula%></td>
    </tr>
	<tr>
		<td>Ano</td>
		<td><%=temp_ano%></td>
    </tr>
	         
</table>
<br>
<%

// criar a ligação à base de dados
Connection cn=ligacaoMySql.criarLigacaoMySql();

// Criar uma instância da classe Statement
Statement st=cn.createStatement();

// Método para inserir os dados
st.executeUpdate("insert into tab_carros (idmarca,modelo,matricula,ano) values('"+temp_marca+
		"','"+temp_modelo+"','"+temp_matricula+"','"+temp_ano+"')");

%>
<h1>Registo de viatura efetuado</h1>
<br>
<p style="text-align:center">
	<a href="index1.jsp">Voltar</a>
	<br>
	<a href="listagem.jsp">Listagem de carros</a>
</p>
</body>
</html>