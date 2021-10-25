<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Listagem de Códigos Postais</title><!--ctrl F5 para refresh da pag e pegar o css-->
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>

<%@include file="menu.jsp"%>
     <h1>Listagem de Códigos Postais</h1>
     <hr>
     <table id="listarTabelas">
         <tr> 
             <th>Código Postal</th>
             <th>Localidade</th>
             <th>Eliminar</th>
             <th>Alterar</th>
             
         </tr>
         
         <%
            Connection cn=ligacaoMySql.criarLigacaoMySql();
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select * from codigos_postais");
            
            while (rs.next()){
            	out.println("<tr>");
            	out.println("<td>" + rs.getString(1)+ "</td>");
            	out.println("<td>" + rs.getString(2)+ "</td>");
            	out.println("<td><a href='apagar_postal.jsp?eliminar3="+ rs.getString(1)+ "'><input type='button' class='buttonEli' value='Eliminar'></a></td>");
            	out.println("<td><a href='alterar_postal.jsp?alterar="+ rs.getString(1)+ "'><input type='button' class='buttonAlt' value='Alterar'></a></td>");
            	out.println("</tr>");
            	
            }
         %>
     </table>
     <br>
     <button class="button1" onclick="document.location='menu.jsp'">Voltar ao Menu</button>
</body>
</html>