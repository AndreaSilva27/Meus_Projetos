<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Movimentos</title>
<link rel="stylesheet" href="css/boostrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="icon" href="icons/curso1.png">

<style>
body{
	background-image:url("imagens/bloc.png");
    background-repeat: no-repeat;
    background-align:center;
    background-color:aliceblue;
	color:steelblue;
	
}
.button1{
	background-color:steelblue;
	color:linen;
	padding:8px 12px;
	border-radius:12px;
	font-size:15px;
}
.button1:hover {
	background-color:dodgerblue;
	color:linen;
}
.button2{
	background-color:firebrick;
	color:linen;
	padding:8px 12px;
	border-radius:12px;
	font-size:15px;
}
.button2:hover {
	background-color:tomato;
	color:linen;
}
</style>

</head>
<body>
<%@include file="menu.jsp"%>
<br><br><br><br><br>
      <div class="container" style="background-color:whitesmoke">
            <h2>Movimentos</h2>
            <form method="POST" action="movimentos.jsp">
            
                <div class="form-group">
                    <label>Data Inicial:</label>
                    <input type="date" class="form-control" name="data_inicio" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Data Final:</label>
                    <input type="date" class="form-control" name="data_fim" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código do Aluno:</label>
                    <input type="number" class="form-control" name="cod_aluno" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código do Professor:</label>
                    <input type="number" class="form-control" name="cod_prof" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Código do Curso:</label>
                    <input type="number" class="form-control" name="cod_curso" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Nota Final:</label>
                    <input type="number" class="form-control" name="nota" min="0" max="20" required>
                </div>
                <br>
                <input type="submit" class="button1" value="Registar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">&nbsp;&nbsp;&nbsp;
                <button class="button1" onclick="document.location='menu.jsp'">Voltar ao Menu</button>
                <br><br>
                
                <div id="aviso"></div>
            
           
            </form>
             </div>
            
            <%
    
        // codigo da base de dados
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     String fdata_inicio=request.getParameter("data_inicio");
     String fdata_fim=request.getParameter("data_fim");
     String fcod_aluno=request.getParameter("cod_aluno");
     String fcod_prof=request.getParameter("cod_prof");
     String fcod_curso=request.getParameter("cod_curso");
     String fnota=request.getParameter("nota");
     
     
     if(fdata_inicio==null || fdata_fim==null  ||fcod_aluno==null ||fcod_prof==null ||fcod_curso==null ||fnota==null  ){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into tab_movimentos(Data_inicio,Data_fim,Codigo_Aluno,Codigo_Professor,Codigo_Curso,Nota_Final) values ('"+fdata_inicio+"','"+fdata_fim+"','"+fcod_aluno+"' ,'"+fcod_prof+"','"+fcod_curso+"','"+fnota+"' )");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:green'>Aluno Registado!</h2>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:firebrick'>Erro ao registar aluno!</h2>";
     
     </script>
     <%
     }
     }
     %>
     
            
</body>
</html>