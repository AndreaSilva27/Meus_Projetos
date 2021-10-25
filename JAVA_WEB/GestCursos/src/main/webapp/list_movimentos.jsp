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
<title>Movimentos</title><!--ctrl F5 para refresh da pag e pegar o css-->
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
<%@include file="menu.jsp"%>
     <h1>Movimentos</h1>
     <hr>
     
     <form method="post" action="list_movimentos.jsp"> <!-- primeiro form -->
         
         <select name="cp">
         	<option value="*">Tudo</option>
         	<%
         	    Connection cn1=ligacaoMySql.criarLigacaoMySql();
         	    Statement st1=cn1.createStatement();
         	    ResultSet rs1=st1.executeQuery("select * from alunos");
         	    while(rs1.next()){
         	    	out.println("<option value="+rs1.getString(1)+">"+rs1.getString(1)+"-"+rs1.getString(2)+"</option>");
         	    }
         	    cn1.close();
         	%>
         </select>
         <input class="botao" type="submit" value="Filtrar por aluno">
     </form><br>
     
     
     <form method="post" action="list_movimentos.jsp"> <!--  segundo form -->
         
         <select name="cp">
         	<option value="*">Tudo</option>
         	<%
         	    Connection cn2=ligacaoMySql.criarLigacaoMySql();
         	    Statement st2=cn2.createStatement();
         	    ResultSet rs2=st2.executeQuery("select * from professores");
         	    while(rs2.next()){
         	    	out.println("<option value="+rs2.getString(1)+">"+rs2.getString(1)+"-"+rs2.getString(2)+"</option>");
         	    }
         	    cn2.close();
         	%>
         </select>
         <input class="botao" type="submit" value="Filtrar por professor">
     </form><br>
     
     
     <form method="post" action="list_movimentos.jsp"> <!-- terceiro form -->
         
         <select name="cp">
         	<option value="*">Tudo</option>
         	<%
         	    Connection cn3=ligacaoMySql.criarLigacaoMySql();
         	    Statement st3=cn3.createStatement();
         	    ResultSet rs3=st3.executeQuery("select * from cursos");
         	    while(rs3.next()){
         	    	out.println("<option value="+rs3.getString(1)+">"+rs3.getString(1)+"-"+rs3.getString(2)+"</option>");
         	    }
         	    cn3.close();
         	%>
         </select>
         <input class="botao" type="submit" value="Filtrar por curso">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <button class="botao" onclick="document.location='list_movimentos.jsp'">Limpar o Filtro</button>
     </form>
     <br>
     <table id="listarTabelas">
         <tr> 
             <th>Código do Movimento</th>
             <th>Data Início</th>
             <th>Data Fim</th>
             <th>Código do Aluno</th>
             <th>Código do Professor</th>
             <th>Código do Curso</th>
             <th>Nota Final</th>
             <th>Eliminar</th>
             <th>Alterar</th>
             
         </tr>
         
         <%
            String escolha=request.getParameter("cp");
           
            
            Connection cn=ligacaoMySql.criarLigacaoMySql();
            Statement st=cn.createStatement();
            ResultSet rs=null;
            
            //filtro aluno
            if(escolha==null || escolha.equals("*")){
                 rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
            		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
            		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso");
            }
            else{
            	rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
                		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
                		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso and tab_movimentos.Codigo_Aluno='"+
                		escolha+"'");
            }
            
            //filtro professor
            if(escolha==null || escolha.equals("*")){
            	rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
                		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
                		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso");
            }
            
            else{
            	rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
                		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
                		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso and tab_movimentos.Codigo_Professor='"+
                		escolha+"'");
            }
           
            //filtro curso
            if(escolha==null || escolha.equals("*")){
            	rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
                		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
                		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso");
            }
            
            else{
            	rs=st.executeQuery("select tab_movimentos.Codigo_Mov, tab_movimentos.Data_Inicio, tab_movimentos.Data_Fim "+
                		", alunos.Nome, professores.Nome, cursos.Curso, tab_movimentos.Nota_Final from tab_movimentos, alunos, professores, cursos "+
                		" where tab_movimentos.Codigo_Aluno=alunos.Codigo_Aluno and tab_movimentos.Codigo_Professor=professores.Codigo_Professor and tab_movimentos.Codigo_Curso=cursos.Codigo_Curso and tab_movimentos.Codigo_Curso='"+
                		escolha+"'");
            }
            
            
            
            SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
            
            while (rs.next()){
            	String datai=df.format(rs.getDate(2));
            	String dataf=df.format(rs.getDate(3));
            	out.println("<tr>");
            	out.println("<td>" + rs.getString(1)+ "</td>");
            	out.println("<td>" + datai + "</td>");
            	out.println("<td>" + dataf + "</td>");
            	out.println("<td>" + rs.getString(4)+ "</td>");
            	out.println("<td>" + rs.getString(5)+ "</td>");
            	out.println("<td>" + rs.getString(6)+ "</td>");
            	out.println("<td>" + rs.getString(7)+ "</td>");
            	out.println("<td><a href='apagar_movimentos.jsp?eliminar5="+ rs.getString(1)+ "'><input type='button' class='buttonEli' value='Eliminar'></a></td>");
            	out.println("<td><a href='alterar_movimentos.jsp?alterar="+ rs.getString(1)+ "'><input type='button' class='buttonAlt' value='Alterar'></a></td>");
            	out.println("</tr>");
            	
            }
            cn.close();
         %>
     </table>
     <br>
     <button class="button1" onclick="document.location='menu.jsp'">Voltar ao Menu</button>
</body>
</html>