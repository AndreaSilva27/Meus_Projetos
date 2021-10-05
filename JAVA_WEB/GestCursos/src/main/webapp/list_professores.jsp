<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Listagem de Professores</title><!--ctrl F5 para refresh da pag e pegar o css-->
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
     <h1>Listagem de Professores</h1>
     <hr>
     <table id="listarTabelas">
         <tr> 
             <th>Código do Professor</th>
             <th>Nome</th>
             <th>Data da Admissão</th>
             
         </tr>
         
         <%
            Connection cn=ligacaoMySql.criarLigacaoMySql();
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select * from professores order by Codigo_Professor");
            
            while (rs.next()){
            	out.println("<tr>");
            	out.println("<td>" + rs.getString(1)+ "</td>");
            	out.println("<td>" + rs.getString(2)+ "</td>");
            	out.println("<td>" + rs.getString(3)+ "</td>");
            	out.println("</tr>");
            	
            }
         %>
     </table>
</body>
</html>