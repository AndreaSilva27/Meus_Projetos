<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Alterar Código Postal</title>
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
    
    ResultSet rs=st.executeQuery("select * from codigos_postais where Codigo_Postal='"+walterar+"'");
    
    String CodigoPostal="";
    String Localidade="";
    
    
    while (rs.next()){
    	   CodigoPostal=(rs.getString(1));
    	   Localidade=(rs.getString(2));
    	   
    	
    }
    
%>

<form method="POST" action="gravar_postal.jsp">
            
                <div class="form-group">
                    <label>Código Postal:</label>
                    <input value='<%=CodigoPostal%>' type="text" class="form-control" name="postal" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Local:</label>
                    <input value='<%=Localidade%>' type="text" class="form-control" name="local"  required>
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