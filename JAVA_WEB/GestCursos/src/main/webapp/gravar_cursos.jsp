<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Guardar Cursos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
<%@include file="menu.jsp"%>
<%
//Recolher os dados do form provenientes do POST

String wcodigo=request.getParameter("idcurso");
String wcurso=request.getParameter("curso");
String wpreco=request.getParameter("preco");

//criar ligação a base de dados

Connection cn=ligacaoMySql.criarLigacaoMySql();

Statement st=cn.createStatement();
try{
st.executeUpdate("update cursos set Curso='"+wcurso+"', Preco_Curso='"+wpreco+"' where Codigo_Curso='"+wcodigo+"'");

    out.println("Registo do curso foi alterado");
}
catch(SQLException e){
    //out.println("Erro ao alterar o curso");
	out.println(e.getMessage());
	
}
%>

<a href="list_cursos.jsp">Voltar à listagem</a>

</body>
</html>