<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Movimentos</title><!--ctrl F5 para refresh da pag e pegar o css-->
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
     <h1>Movimentos</h1>
     <hr>
     <table id="listarTabelas">
         <tr> 
             <th>Código do Movimento</th>
             <th>Data Início</th>
             <th>Data Fim</th>
             <th>Código do Aluno</th>
             <th>Código do Professor</th>
             <th>Código do Curso</th>
             <th>Nota Final</th>
             
             
         </tr>
         
         <%
            Connection cn=ligacaoMySql.criarLigacaoMySql();
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
            		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
            		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso");
            while (rs.next()){
            	out.println("<tr>");
            	out.println("<td>" + rs.getString(1)+ "</td>");
            	out.println("<td>" + rs.getString(2)+ "</td>");
            	out.println("<td>" + rs.getString(3)+ "</td>");
            	out.println("<td>" + rs.getString(4)+ "</td>");
            	out.println("<td>" + rs.getString(5)+ "</td>");
            	out.println("<td>" + rs.getString(6)+ "</td>");
            	out.println("<td>" + rs.getString(7)+ "</td>");
            	out.println("</tr>");
            	
            }
         %>
     </table>
</body>
</html>