<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="ligarBD.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Testar Ligação Pizaria Ramalho</title>
</head>
<body>
  <%
    ligacaoMySql.criarLigacaoMySql();
    out.println(ligacaoMySql.estadoLigacao());
%>
</body>
</html>