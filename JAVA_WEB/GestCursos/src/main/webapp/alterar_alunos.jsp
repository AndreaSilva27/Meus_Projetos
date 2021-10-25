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
<title>Alterar Alunos</title>
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
    
    ResultSet rs=st.executeQuery("select * from alunos where Codigo_Aluno="+walterar);
    
    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
    
    String CodigoAluno="";
    String NomeAluno="";
    String Data="";
    String Localidade="";
    String CodigoPostal="";
    String Foto="";
    
    while (rs.next()){
    	   CodigoAluno=(rs.getString(1));
    	   NomeAluno=(rs.getString(2));
    	   Data=(rs.getString(3));
    	   CodigoPostal=(rs.getString(4));
           Foto=(rs.getString(5));
    	
    }
    
%>
<form method="POST" action="gravar_alunos.jsp">
            
                <div class="form-group">
                    <label>Código do Aluno:</label>
                    <input value='<%=CodigoAluno%>' type="text" class="form-control" name="idaluno" required readonly>
                </div><br>
                        
                <div class="form-group">
                    <label>Nome do Aluno:</label>
                    <input value='<%=NomeAluno%>' type="text" class="form-control"  name="nome" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Data de Nascimento:</label>
                    <input value='<%=Data%>' type="date" class="form-control" name="data" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código Postal:</label>
                    <input value='<%=CodigoPostal%>' type="text" class="form-control"  name="postal" required>
                </div>
                <br>
                
                <br>
                <div class="form-group">
                    <label>Foto:</label>
                    <input value='<%=Foto%>' type="file" accept="image/*" class="form-control" name="foto" required>
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