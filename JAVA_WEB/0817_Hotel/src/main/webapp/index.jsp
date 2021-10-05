<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Sorna</title>
	<link rel="icon" href="icones/hotel.png">
	<link rel="stylesheet" href="css/estilos.css">
	
	<script>
		function verificadatas(){
			var dtinicial=new Date(document.getElementById("inicio").value);
			var dtfinal=new Date(document.getElementById("fim").value);
			
			if(dtinicial>dtfinal){
				alert("Datas inválidas!!!");
			}
			
		}
	</script>
	
</head>
<body>
	<h1 style="text-align:center">Hotel Sorna - Reservas</h1>
	
	<div align="center">
	
		<form name="reservar" method="POST"  action="reservar.jsp">
			Check in<br>
			<input id="inicio" type="date" name="checkin" required onchange="verificadatas()"><br>
			Check out<br>
			<input id="fim" type="date" name="checkout" required onchange="verificadatas()"><br>
			Contacto<br>
			<input type="text" name="contacto" required><br>			
		    Quarto<br>
		    <select name="quarto" required>
		        <option value="">Selecione tipo de quarto</option>
		    	<option value="Simples">Quarto simples</option>
		    	<option value="Duplo">Quarto duplo</option>
		    </select>
		    <br><br>
		    <input type="submit" value="Reservar">
		    <input type="reset" value="Cancelar">
		</form>
	
	</div>
</body>
</html>