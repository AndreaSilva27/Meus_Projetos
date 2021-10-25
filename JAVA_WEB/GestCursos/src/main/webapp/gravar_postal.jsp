<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Guardar Código Postal</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>

<%@include file="menu.jsp"%>
<%
//Recolher os dados do form provenientes do POST

String wpostal=request.getParameter("postal");
String wlocal=request.getParameter("local");


//criar ligação a base de dados

Connection cn=ligacaoMySql.criarLigacaoMySql();

Statement st=cn.createStatement();
try{
st.executeUpdate("update codigos_postais set Codigo_Postal='"+wpostal+"', Local='"+wlocal+"' where Codigo_Postal='"+wpostal+"' and Local='"+wlocal+"'");

    out.println("Registo do código postal foi alterado");
}
catch(SQLException e){
    //out.println("Erro ao alterar o código postal");
	out.println(e.getMessage());
	
}
%>

<a href="list_postal.jsp">Voltar à listagem</a>

</body>
</html>