<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Gestão de Cursos</title>
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
            <h2>Novo Curso</h2>
            <form method="POST" action="form_cursos.jsp">
            
                <div class="form-group">
                    <label>Nome do Curso:</label>
                    <input type="text" class="form-control" placeholder="insira o nome do curso" name="curso" required>
                </div>
                <br>
                <div class="form-group">
                    <label>Preço do Curso:</label>
                    <input type="number" class="form-control" placeholder="insira o valor do curso" name="preco" required>
                </div>
                <br>
                <input type="submit" class="button1" value="Registar">&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button2" value="Cancelar">&nbsp;&nbsp;&nbsp;
                <button class="button1" onclick="document.location='menu.jsp'">Voltar ao Menu</button>
                <br><br>
                
                <div id="aviso"></div>
            
                
                  
            
            </form>
            </div>
            <br><br>
            
            
        <%
		// dados do form
		String fcurso=request.getParameter("curso");
		String fpreco=request.getParameter("preco");
		
		if (fcurso==null && fpreco==null){
			%>
				<script>
					document.getElementById('aviso').style.visibility='hidden';
				</script>
			<%
		}
		else{
			if (fcurso!=null && Integer.parseInt(fpreco)>0){
			// guardar o pedido
			Connection cn=ligacaoMySql.criarLigacaoMySql();
			Statement st=cn.createStatement();
			
			try{
				st.executeUpdate("insert into cursos (curso, preco_curso) values ('"+fcurso+"','"+fpreco+"')");
				%>
				<script>
					document.getElementById('aviso').style.visibility='visible';
					document.getElementById('aviso').innerHTML="<h2 style='color:green'>Curso registado.</h3>";
				</script>					
				<%
			}
			catch(SQLException e){
				
			}
		}
		else{
				%>
				<script>
					document.getElementById('aviso').style.visibility='visible';
					document.getElementById('aviso').innerHTML="<h2 style='color:green'>Erro ao registar o curso.</h3>";
				</script>					
				<%	
				
			}
		}
		
	%>
</body>
</html>