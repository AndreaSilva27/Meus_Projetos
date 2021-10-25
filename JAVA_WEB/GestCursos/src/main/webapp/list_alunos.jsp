<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>  
<%@page import="java.util.Date" %>
<%@page import="java.text.*" %>       
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
<%@include file="menu.jsp"%>

     <h1>Listagem de Alunos</h1>
     <hr>
     
     <form method="post" action="list_alunos.jsp">
         
         <select name="cp">
         	<option value="*">Tudo</option>
         	<%
         	    Connection cn1=ligacaoMySql.criarLigacaoMySql();
         	    Statement st1=cn1.createStatement();
         	    ResultSet rs1=st1.executeQuery("select * from codigos_postais");
         	    while(rs1.next()){
         	    	out.println("<option value="+rs1.getString(1)+">"+rs1.getString(1)+"-"+rs1.getString(2)+"</option>");
         	    }
         	    cn1.close();
         	%>
         </select>
         <input class="botao" type="submit" value="Filtrar por código postal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <button class="botao" onclick="document.location='list_movimentos.jsp'">Limpar o Filtro</button>
     </form><br>
     <table id="listarTabelas">
         <tr> 
             <th>Código do Aluno</th>
             <th>Nome</th>
             <th>Data de Nascimento</th>
             <th>Código Postal</th>
             <th>Localidade</th>
             <th>Foto</th>
             <th>Eliminar</th>
             <th>Alterar</th>
             
         </tr>
         
         <%
            
            String escolha=request.getParameter("cp");
         
            Connection cn=ligacaoMySql.criarLigacaoMySql();
            Statement st=cn.createStatement();
            ResultSet rs=null;
            
            if(escolha==null || escolha.equals("*")){
                    rs=st.executeQuery("select alunos.Codigo_Aluno, alunos.Nome, alunos.Data_Nascimento "+
            		", alunos.Codigo_Postal, codigos_postais.Local, alunos.Foto from alunos, codigos_postais "+
            		" where alunos.Codigo_Postal=codigos_postais.Codigo_Postal");
            }
            else{
            	    rs=st.executeQuery("select alunos.Codigo_Aluno, alunos.Nome, alunos.Data_Nascimento "+
                		", alunos.Codigo_Postal, codigos_postais.Local, alunos.Foto from alunos, codigos_postais "+
                		" where alunos.Codigo_Postal=codigos_postais.Codigo_Postal and alunos.Codigo_Postal='"+escolha+"'");
            }
            SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
            
            while (rs.next()){
            	String datan=df.format(rs.getDate(3));
            	out.println("<tr>");
            	out.println("<td>" + rs.getString(1)+ "</td>");
            	out.println("<td>" + rs.getString(2)+ "</td>");
            	out.println("<td>" + datan + "</td>");
            	out.println("<td>" + rs.getString(4)+ "</td>");
            	out.println("<td>" + rs.getString(5)+ "</td>");
            	out.println("<td><img class='foto' src=alunos/"+rs.getString(6)+"></td>");
            	
            	out.println("<td><a href='apagar_alunos.jsp?eliminar2="+ rs.getString(1)+ "'><input type='button' class='buttonEli' value='Eliminar'></a></td>");
            	out.println("<td><a href='alterar_alunos.jsp?alterar="+ rs.getString(1)+ "'><input type='button' class='buttonAlt' value='Alterar'></a></td>");
            	out.println("</tr>");
            	
            }
            cn.close();
         %>
     </table>
     <br>
     <button class="button1" onclick="document.location='menu.jsp'">Voltar ao Menu</button>
</body>
</html>