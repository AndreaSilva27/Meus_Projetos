<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Validar Utilizador</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
    <%
        String wuser=request.getParameter("utilizador");
        String wpass=request.getParameter("password");
     
        Connection cn=ligacaoMySql.criarLigacaoMySql();
        Statement st=cn.createStatement();
        
        
        ResultSet rs=st.executeQuery("select * from utilizadores where nome='"+wuser+"' and password='"+wpass+"'");
        		
        if (rs.next()){
        	response.sendRedirect("menu.jsp");
        }
        else{
        	out.println("<h3>Utilizador ou passsword inválidos.</h3>");
        	out.println("<a href='index.jsp'>Login</a>");
        	out.println("<br><a href='criar.jsp'>Criar utilizador</a>");	
        }
    
    %>
    <br><br><br>
    <div>
    <button class="button1" onclick="document.location='criar_utilizador.jsp'">Novo Utilizador</button>
    </div>
</body>
</html>