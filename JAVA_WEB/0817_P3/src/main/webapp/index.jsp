<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*" %> 
<%@page import ="java.text.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> Sorna Hotel</title>
<link rel="icon" href="icons/hotel.png">
<script>
      function verificadatas(){
    	  var dtinicial=new Date(document.getElementById("inicio").value);
    	  var dtfinal=new Date(document.getElementById("fim").value);
    	  
    	  if(dtinicial>dtfinal){
    		  alert("Datas inválidas!");
    	  }
      }
</script>
<style>
    body{
    margin: 0px;
    background-color:#FBEFF2;
    }
    #div1{
     text-align:center;
     background-color:#e6b3cc;
     width:100%;
     color:white;
     font-size:70px;
     font-family: Kunstler Script, Verdana, Arial;
     padding: 10px;
 }
 #div2{
     text-align:center;
      }
 #div3{
     text-align:center;
     font-family: 'Century Schoolbook';
     color:#F781BE;
     font-size:14px;
 }
 #div4{
     text-align:center;
     background-color:#e6b3cc;
     width:100%;
     color:white;
     font-size:30px;
     font-family: Kunstler Script, Verdana, Arial;
     padding: 10px;
 }
 input[type=submit],input[type=reset]{
        background-color:#e6b3cc;
        color:white;
        font-size:14px;
        padding:5px;
        border:none;
        }
 
</style>
</head>
<body>
    <div id="div1">
        Sorna Hotel
    </div> 
    <div id="div2"><br>
      <div id="Image">
      <img height="200" width="570" id="imageToSwap" src="imagens/hotel3.jpg">
      </div> 
     <form method="post" action="reservas.jsp">
     </form>
    </div>
    
        <div id="div3">
        <i>Faça Aqui a Sua Reserva <br></i>
        <form method="POST" action="reservas.jsp">
             <br>Data de Entrada<br>
             <input id="inicio" type="date" name="checkin" required onchange="verificadatas()"><br> 
             <br>Data de Saída<br>
             <input id="fim" type="date" name="checkout" required onchange="verificadatas()"><br>
             <br>Contato<br>
             <input type="mail" name="contato" required><br>
             <br><label for="Quarto" >Tipo de Quarto<br>
             <select onchange="changeImage(this)" name ="quarto" style="width:100px" required>
             <option value="">Selecione</option>
             <option value="Individual">Individual</option>
             <option value="Duplo">Duplo</option>
             <option value="Casal">Casal</option>
             <option value="Triplo">Triplo</option>
             <option value="Quadruplo">Quádruplo</option>
             <option value="Suite Master">Suíte Master</option>
             </select></label> <br>
             
             
             <script>
    function changeImage(el) {
      if (el.value == "Individual") {
    document.getElementById("imageToSwap").src = "imagens/individual.jpg";
      }
      else if (el.value == "Duplo") {
    document.getElementById("imageToSwap").src = "imagens/duplo.jpg";
      }
    else if (el.value == "Casal") {
    document.getElementById("imageToSwap").src = "imagens/quartocasal.png";
      }
    else if (el.value == "Triplo") {
    document.getElementById("imageToSwap").src = "imagens/triplo.jpg";
      }
     else if (el.value == "Quadruplo") {
    document.getElementById("imageToSwap").src = "imagens/quadruplo.jpg";
      }
     else if (el.value == "Suite Master") {
    	    document.getElementById("imageToSwap").src = "imagens/suite.jpg";
    	      }
     
    }
     </script>
    
        <br><input type="submit" value="Reservar">
        <input type="reset" value="Limpar"><br><br>
        </form>
        
       
    </div><br><br>
    <div id="div4">
    Venha Viver Uma Experiência Incrível Connosco!
    </div>

</body>
</html>