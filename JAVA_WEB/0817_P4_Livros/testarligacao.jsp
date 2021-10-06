<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ligarBD.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Testar Ligação</title>
</head>
<body>
<%
    ligacaoMySql.criarLigacaoMySql();
    out.println(ligacaoMySql.estadoLigacao());
%>
</body>
</html>