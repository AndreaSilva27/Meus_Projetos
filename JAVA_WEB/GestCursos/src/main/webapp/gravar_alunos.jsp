<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %> 
<%@page import="java.util.*" %>  
<%@page import="java.util.Date" %>
<%@page import="java.text.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Guardar Alunos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
<%@include file="menu.jsp"%>
<br><br><br><br><br>
<%
//Recolher os dados do form provenientes do POST

String wcodigo=request.getParameter("idaluno");
String wnome=request.getParameter("aluno");
String wdata=request.getParameter("data");
String wpostal=request.getParameter("postal");
String wfoto=request.getParameter("foto");

//criar ligação a base de dados

Connection cn=ligacaoMySql.criarLigacaoMySql();

SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");

Statement st=cn.createStatement();
try{
st.executeUpdate("update alunos set Nome='"+wnome+"', Data_Nascimento='"+wdata+"', Codigo_Postal='"+wpostal+"', Foto='"+wfoto+"' where Codigo_Aluno='"+wcodigo+"'");

    out.println("Registo do aluno foi alterado");
}
catch(SQLException e){
    //out.println("Erro ao alterar o curso");
	out.println(e.getMessage());
	
}
%>

<a href="list_alunos.jsp">Voltar à listagem</a>

</body>
</html>