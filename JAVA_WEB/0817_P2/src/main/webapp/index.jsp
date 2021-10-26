<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*" %> 
<%@page import ="java.text.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>AS Auto</title>
<link rel="icon" href="icons/camaroblue-icon.png">
<style>
    body{
    margin: 0px;
    background-color:lightblue;
    }
    #div1{
     background-color:darkblue;
     width:100%;
     color:white;
     font-size:24px;
     font-family: Colibri, Verdana, Arial;
     padding: 8px;
 }
 #div2{
     text-align:center;
      }
 #div3{
     text-align:center;
     font-family: 'comic sans ms';
     color:darkblue;
     font-size:14px;
 }
 
 input[type=submit],input[type=reset]{
        background-color:darkblue;
        color:white;
        font-size:14px;
        padding:10px;
        border:none;
        }
 
</style>
</head>
<body>
    <div id="div1">
        AS Auto
    </div> 
    <div id="div2"><br>
      <div id="Image">
      <img height="250" width="370" id="imageToSwap" src="imagens/bmw2.jpg">
      </div> 
      <form method="post" action="reservar.jsp">
    </div>
    
        <div id="div3">
        <br><i>Escolha a Marca do Automóvel <br></i>
        <form method="POST" action="reservar.jsp">
             <br><label for="marca" >Marca:<br>
             <select onchange="changeImage(this)" name ="marca" style="width:90px"><br>
             <option value="Audi">Audi</option>
             <option value="Mercedes">Mercedes</option>
             <option value="Tesla">Tesla</option>
             <option value="BMW">BMW</option>
             <option value="Porche">Porche</option>
             <option value="Honda">Honda</option>
             <option value="Ferrari">Ferrari</option>
             <option value="McLaren">McLaren</option>
             </select></label> <br>
             </form>
             <script>
    function changeImage(el) {
      if (el.value == "Audi") {
    document.getElementById("imageToSwap").src = "imagens/audi.jpg";
      }
      else if (el.value == "Mercedes") {
    document.getElementById("imageToSwap").src = "imagens/mbenz3.jpg";
      }
    else if (el.value == "Tesla") {
    document.getElementById("imageToSwap").src = "imagens/tesla1.jpg";
      }
    else if (el.value == "BMW") {
    document.getElementById("imageToSwap").src = "imagens/bmw2.jpg";
      }
     else if (el.value == "Porche") {
    document.getElementById("imageToSwap").src = "imagens/porche.jpg";
      }
     else if (el.value == "Honda") {
    	    document.getElementById("imageToSwap").src = "imagens/honda2.jpg";
    	      }
     else if (el.value == "Ferrari") {
    	    document.getElementById("imageToSwap").src = "imagens/ferrari.jpg";
    	      }
     else if (el.value == "McLaren") {
    	    document.getElementById("imageToSwap").src = "imagens/mclaren.jpg";
    	      }
    }
    </script>
             <br>Modelo<br>
             <input type="model" name="modelo"><br>
             <br>Matrícula<br>
             <input type="text" name="matricula"><br>
             <br>Ano<br>
             <select  name="ano" style="width:100px"><br>
             <option value="1971 a 1980">1971 a 1980</option>
             <option value="1981 a 1990">1981 a 1990</option>
             <option value="1991 a 2000">1991 a 2000</option>
             <option value="2001 a 2010">2001 a 2010</option>
             <option value="2011 a 2021">2011 a 2021</option>
             </select><br>
             
             <br><input type="submit" value="Registar">
             <input type="reset" value="Limpar">
         </form>    
        
    </div>
    

</body>
</html>