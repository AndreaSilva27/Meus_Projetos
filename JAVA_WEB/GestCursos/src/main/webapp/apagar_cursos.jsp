<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Eliminar Cursos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
    <%
        String wcurso=request.getParameter("eliminar");
        
     
        Connection cn=ligacaoMySql.criarLigacaoMySql();
        Statement st=cn.createStatement();
        
        try{
        st.executeUpdate("delete from cursos where Codigo_Curso="+wcurso);
        		
        }
        catch(SQLException e){
        	
        	out.println("Erro ao eliminar! Verifique movimentos.");
        }
        cn.close();     //sempre fechar a ligação
        //refresh da pág
        
        //response.sendRedirect("list_cursos.jsp");
        
       
             
    %>
    	<br>
    	<br>
     <a href="list_cursos.jsp"><input type="button" class="button1" value="Voltar a Cursos"></a> 
      
    
</body>
</html>