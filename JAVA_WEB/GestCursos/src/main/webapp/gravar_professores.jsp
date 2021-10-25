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
<title>Guardar Professores</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>

<%@include file="menu.jsp"%>
<%
//Recolher os dados do form provenientes do POST

String wcodigo=request.getParameter("idprofessor");
String wnome=request.getParameter("nome");
String wdata=request.getParameter("data");

//criar ligação a base de dados

Connection cn=ligacaoMySql.criarLigacaoMySql();
SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");

Statement st=cn.createStatement();
try{
st.executeUpdate("update professores set Nome='"+wnome+"', Data_Admissao='"+wdata+"' where Codigo_Professor='"+wcodigo+"'");

    out.println("Registo do professor foi alterado");
}
catch(SQLException e){
    //out.println("Erro ao alterar o professor");
	out.println(e.getMessage());
	
}
%>

<a href="list_professores.jsp">Voltar à listagem</a>

</body>
</html>