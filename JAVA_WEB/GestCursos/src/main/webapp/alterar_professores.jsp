<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %> 
<%@page import="java.util.*" %>  
<%@page import="java.util.Date" %>
<%@page import="java.text.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Alterar Professores</title>
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
    
    ResultSet rs=st.executeQuery("select * from professores where Codigo_Professor="+walterar);
    
    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
    
    String CodigoProfessor="";
    String NomeProfessor="";
    String Data="";
    
    while (rs.next()){
    	   CodigoProfessor=(rs.getString(1));
    	   NomeProfessor=(rs.getString(2));
    	   Data=(rs.getString(3));
    	
    }
    
%>

<form method="POST" action="gravar_professores.jsp">
                
                <div class="form-group">
                    <label>Código do Professor:</label>
                    <input value='<%=CodigoProfessor%>' type="text" class="form-control" name="idprofessor" required readonly>
                </div><br>
                <div class="form-group">
                    <label>Nome do Professor:</label>
                    <input value='<%=NomeProfessor%>' type="text" class="form-control" placeholder="insira o nome do professor" name="nome" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Data de Nascimento:</label>
                    <input value='<%=Data%>' type="date" class="form-control" name="data" required>
                </div>
                <br>
                
                <br>
                <input type="submit" class="button1" value="Alterar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">
                <br><br>
                
                <div id="aviso"></div>
            
            
            </form>
</body>
</html>