<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>    
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

<script>

var carros=["imagens/honda.jpg","imagens/renault.jpg","imagens/seat.jpg",
	"imagens/mercedes.jpg","imagens/toyota.jpg"];

function mostra_imagem(desc_marca){
	
	document.frm.newmarca.value=desc_marca;
	
	if (frm.txt_marca.value==5){
		document.getElementById('nmarca').style.display='block';
		document.getElementById('ddmarca').style.display='none';
		document.getElementById('fig').src="imagens/noimage.png";
	}
	else{
		document.getElementById('nmarca').style.display='none';
		document.getElementById('ddmarca').style.display='block';
		document.getElementById('fig').src=carros[frm.txt_marca.value];
	}   

}	

</script>

</head>
<body onload="document.getElementById('nmarca').style.display='none';">

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
         
    	<form method="POST" name="frm" action="guardar.jsp">
	    	<table>
	    		<tr>
	    		  	<td>Marca:</td>
	    		  	<td>
	    		  	   <select id="ddmarca" required name="txt_marca" onchange="mostra_imagem(this.options[this.selectedIndex].text)">
	    		  	 		<option value=0>Honda</option>
	    		  	 		<option value=1>Renault</option>
	    		  	 		<option value=2>Seat</option>
	    		  	 		<option value=3>Mercedes</option>
	    		  	 		<option value=4>Toyota</option>
	    		  	 		<option value=5>Nova Marca</option>
	    		  	 	</select>	
	    		  	 		<input id="nmarca" type="text" name="newmarca" placeholder="Escreva a Marca">		  	 	
                    </td>
                    
  	    		</tr>
	   		    <tr>
	    		  	<td>Modelo:</td>
	    		  	<td><input type="text" required name="txt_modelo"></td>
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

