<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Listagem de Alunos</title><!--ctrl F5 para refresh da pag e pegar o css-->
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
     <h1>Listagem de Alunos</h1>
     <hr>
     <table id="listarTabelas">
         <tr> 
             <th>Código do Aluno</th>
             <th>Nome</th>
             <th>Data de Nascimento</th>
             <th>Código Postal</th>
             <th>Localidade</th>
             <th>Foto</th>
             
             
         </tr>
         
         <%
            Connection cn=ligacaoMySql.criarLigacaoMySql();
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select alunos.Codigo_Aluno, alunos.Nome, alunos.Data_Nascimento "+
            		", alunos.Codigo_Postal, codigos_postais.Local, alunos.Foto from alunos, codigos_postais "+
            		" where alunos.Codigo_Postal=codigos_postais.Codigo_Postal order by Codigo_Aluno");
            while (rs.next()){
            	out.println("<tr>");
            	out.println("<td>" + rs.getString(1)+ "</td>");
            	out.println("<td>" + rs.getString(2)+ "</td>");
            	out.println("<td>" + rs.getString(3)+ "</td>");
            	out.println("<td>" + rs.getString(4)+ "</td>");
            	out.println("<td>" + rs.getString(5)+ "</td>");
            	out.println("<td>" + rs.getString(6)+ "</td>");
            	out.println("</tr>");
            	
            }
         %>
     </table>
</body>
</html>