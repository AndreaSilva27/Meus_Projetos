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
<title>Alterar Movimentos</title>
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
    
    ResultSet rs=st.executeQuery("select * from tab_movimentos where Codigo_Mov="+walterar);
    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
    
    String CodigoMov="";
    String DataInicial="";
    String DataFinal="";
    String CodigoAluno="";
    String CodigoProfessor="";
    String CodigoCurso="";
    String NotaFinal="";
    
    while (rs.next()){
    	   CodigoMov=(rs.getString(1));
    	   DataInicial=(rs.getString(2));
    	   DataFinal=(rs.getString(3));
    	   CodigoAluno=(rs.getString(4));
    	   CodigoProfessor=(rs.getString(5));
    	   CodigoCurso=(rs.getString(6));
    	   NotaFinal=(rs.getString(7));
    	
    }
    
%>

<form method="POST" action="gravar_movimentos.jsp">

                <div class="form-group">
                    <label>Código do Movimento:</label>
                    <input value='<%=CodigoMov%>' type="text" class="form-control" name="idmov" required readonly>
                </div><br>
                <div class="form-group">
                    <label>Data Inicial:</label>
                    <input value='<%=DataInicial%>' type="date" class="form-control" name="data_inicio" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Data Final:</label>
                    <input value='<%=DataFinal%>' type="date" class="form-control" name="data_fim" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código do Aluno:</label>
                    <input value='<%=CodigoAluno%>' type="number" class="form-control" name="cod_aluno" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código do Professor:</label>
                    <input value='<%=CodigoProfessor%>' type="number" class="form-control" name="cod_prof" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código do Curso:</label>
                    <input value='<%=CodigoCurso%>' type="number" class="form-control" name="cod_curso" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Nota Final:</label>
                    <input value='<%=NotaFinal%>' type="number" class="form-control" name="nota" min="0" max="20" required>
                </div>
                <br>
                <input type="submit" class="button1" value="Alterar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">
                <br><br>
                
                <div id="aviso"></div>
            
           
            </form>
</body>
</html>