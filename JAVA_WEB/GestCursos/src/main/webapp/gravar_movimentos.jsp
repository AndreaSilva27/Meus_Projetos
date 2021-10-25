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
<title>Guardar Movimentos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
<%@include file="menu.jsp"%>
<%
//Recolher os dados do form provenientes do POST

String wcodigo=request.getParameter("idmov");
String wdata_inicio=request.getParameter("data_inicio");
String wdata_fim=request.getParameter("data_fim");
String wcod_aluno=request.getParameter("cod_aluno");
String wcod_prof=request.getParameter("cod_prof");
String wcod_curso=request.getParameter("cod_curso");
String wnota=request.getParameter("nota");

//criar ligação a base de dados

Connection cn=ligacaoMySql.criarLigacaoMySql();
SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
Statement st=cn.createStatement();
try{
st.executeUpdate("update tab_movimentos set Data_Inicio='"+wdata_inicio+"', Data_Fim='"+wdata_fim+"', Codigo_Aluno='"+wcod_aluno+"', Codigo_Professor='"+wcod_prof+"', Codigo_Curso='"+wcod_curso+"', Nota_Final='"+wnota+"' where Codigo_Mov='"+wcodigo+"'");

    out.println("Registo do movimento foi alterado");
}
catch(SQLException e){
    //out.println("Erro ao alterar o movimento");
	out.println(e.getMessage());
	
}
%>

<a href="list_movimentos.jsp">Voltar à listagem</a>

</body>
</html>