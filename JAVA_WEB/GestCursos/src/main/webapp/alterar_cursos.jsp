<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Alterar Cursos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">
</head>
<body>
<%@include file="menu.jsp"%>
<br><br><br><br><br>
<%

    String walterar=request.getParameter("alterar");
    
    Connection cn=ligacaoMySql.criarLigacaoMySql();
    Statement st=cn.createStatement();
    
    ResultSet rs=st.executeQuery("select * from cursos where Codigo_Curso="+walterar);
    
    String CodigoCurso="";
    String NomeCurso="";
    String PrecoCurso="";
    
    while (rs.next()){
    	   CodigoCurso=(rs.getString(1));
    	   NomeCurso=(rs.getString(2));
    	   PrecoCurso=(rs.getString(3));
    	
    }
    
%>


<div class="container" style="background-color:linen">
            <h2>Alterar Curso</h2>
            <form method="POST" action="gravar_cursos.jsp">
            
                <div class="form-group">
                    <label>Código do Curso:</label>
                    <input value='<%=CodigoCurso%>' type="text" class="form-control" name="idcurso" required readonly>
                </div><br>
                        
                <div class="form-group">
                    <label>Nome do Curso:</label>
                    <input value='<%=NomeCurso%>' type="text" class="form-control"  name="curso" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Preço do Curso:</label>
                    <input value='<%=PrecoCurso%>' type="number" class="form-control"  name="preco" required>
                </div>
                <br>
                <input type="submit" class="button1" value="Alterar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">
                <br><br>
                
                <div id="aviso"></div>
            
            
            </form>
            </div>
</body>
</html>