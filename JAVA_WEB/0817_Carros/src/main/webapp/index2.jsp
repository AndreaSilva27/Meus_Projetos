<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>   
<%@page import="ligarBD.*"%>
<%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/jpg" sizes="128x128" href="icones/car1.png">
<title>Oficina BDauto</title>
<style>
	body{
		background-color: #f6e1b1;
		margin: 0px;
		color: white;
	}
	
	input[type=submit],input[type=reset]{
		background-color: #E74C3C;
		color: white;
		width: 100px;
		height: 30px;
		border-radius: 5px;
	}
    img{
    	width: 250px;
    	height: 170px;
    }
</style>


</head>
<body>

<%
    // java.util - contém as classes de data e hora
    // java.text - contém as classes de formatação
        
	DateFormat fd=new SimpleDateFormat("MM-yyyy");
    String da=fd.format(new java.util.Date());
%>
	<table style="width:100%;height:80%;background-color:#E74C3C;font-size:180%">
		<tr>
			<td style="width:80%">BD Auto</td>
			<td style="width:20%;text-align:right"><%=da%></td>
		</tr>
	</table>
    <div align="center">
  <br>
     <img id="fig" src="imagens/honda.jpg">
         
    	<form method="POST" name="frm" action="guardar1.jsp">
	    	<table>
	    		<tr>
	    		  	<td>Marca:</td>
	    		  	<td>
	    		  	  
	    		  	  <select id="ddmarca" required name="txt_marca">
	  
	  				  <%
	  				  		Connection cn=ligacaoMySql.criarLigacaoMySql();
	  				  
	  				        Statement st=cn.createStatement();
	  				        
	  				        ResultSet rs=st.executeQuery("select idmarca,marca from tab_marcas");
	  				        
	  				        while(rs.next()){
	  				        	out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
	  				        }
	  				        
	  				        cn.close();
	  				  %>	
	  					
	    		  	  </select>	
	    		  	 			  	 	
                    </td>
                    
  	    		</tr>
	   		    <tr>
	    		  	<td>Modelo:</td>
	    		  	<td><input type="text" required name="txt_modelo" ></td>
	    		</tr>   
	   		    <tr>
	    		  	<td>Matricula:</td>
	    		  	<td><input type="text" required name="txt_matricula"></td>	    
	    		</tr>  
	   		    <tr>
	   		    <td>Ano:</td>
	   		    <td>
	    		  	   <select required name="txt_ano">
	    		  	   
	    		  	   <%
	    		  	   		int ano=1990;
	    		  	   	    while (ano<=2021){
	    		  	   	    	out.println("<option value="+ano+">"+ano+"</option>");
	    		  	   	    	ano++;
	    		  	   	    }
	    		  	   %>		
	    		  	 		
	    		  	   </select>	 
	    		 </td> 	 	 
	    		</tr>     		  		 		
	    	</table>
	    
    	<br>
    	<input type="submit" value="Registar">
    	<input type="reset" value="Cancelar" onclick="mostra_imagem()">
    </form>	
    </div> 	
</body>
</html>

