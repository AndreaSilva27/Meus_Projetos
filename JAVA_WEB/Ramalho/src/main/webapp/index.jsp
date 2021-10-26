<%@ page language="java" contentType="text/html; utf-8"
 pageEncoding="utf-8"%>
<%@page import="javax.mail.*" %>    
<%@page import="javax.mail.internet.*" %>
<%@page import="java.util.*" %>  
<%@page import="java.sql.*" %>
<%@page import="ligarBD.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="Pizaria Ramalho">
<meta name="author" content="Andrea">
<meta http-equiv="refresh" content="120">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pizaria Ramalho</title>
<link rel="stylesheet" href="css/estilo_piza.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="icon" href="icons/piza_icon.png">
<style>
body{
	background-image:url("imagens/piza5.jpg");
    background-repeat: no-repeat;
    background-align:center;
}
</style>

</head>
<body>
<h1 class="title">Pizaria Ramalho</h1>

<p class="text1" style="font-size:25px;"><strong>Gestão de Pedidos</strong></p>

<div class="radio1" >
  <p>Tamanho</p>
      <form method="post" action="enviar.jsp">
        <input type="radio" id="pequena" name="piza" value="pequena" onclick="tipoPiza()">
        <label for="pequena">Pequena</label>
        <input type="radio" id="media" name="piza" value="media" onclick="tipoPiza()">
        <label for="media">Média</label>
        <input type="radio" id="grande" name="piza" value="grande" onclick="tipoPiza()">
        <label for="grande">Grande</label><br>
        
        <p>Ingredientes</p>
        <input type="radio" id="2" name="extra" value="2">
        <label for="2">2</label>
        <input type="radio" id="3" name="extra" value="3">
        <label for="3">3</label>
        <input type="radio" id="4" name="extra" value="4">
        <label for="4">4</label>
        <input type="radio" id="5" name="extra" value="5">
        <label for="5">5</label><br><br>
       
        <input type="button" class="button3" value="Calcular" onclick="meuTotal()">
        
        <p style="text-align:left">
        <label for="total">Total:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" id="total" name="total" style="width:40px;">&nbsp;<br>
        
        <label for="data">Data:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="datetime-local" id="data" name="data"><br>
        
        <label for="contato" style="text-align:justify">Contato:</label>&nbsp;
        <input type="tel" id="contato" name="contato" placeholder="Insira Contato" required><br>
        
        <label for="email" style="text-align:justify">Email:</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="email" id="email" name="email" placeholder="Insira Email" required><br>
        
        <label for="assunto" style="text-align:justify">Assunto:</label>
        <input type="text" id="assunto" name="assunto" value="Dados do Seu Pedido"><br>
        
        <label for="mensagem" style="text-align:justify">Mensagem:</label><br>
        <textarea id="mensagem" name="mensagem" rows="12" cols="40"></textarea><br></p>
        
        
        
        <input type="submit" class="button1" value="Guardar">&nbsp;&nbsp;&nbsp;
        <input type="reset" class="button2" value="Cancelar"><br>
        <div id="aviso"></div>
               
   </form>
  </div>
       
       
      <div>
      <script>
           
           function tipoPiza(){
        	   var tipo;
        	   
        	   if(document.getElementById("pequena").checked)
        		   tipo=5;
        	   if(document.getElementById("media").checked)
        		   tipo=7;
        	   if(document.getElementById("grande").checked)
        		   tipo=9;
        	   alert("Valor Selecionado: " + tipo + "€");
        	   
           }
           
           function meuTotal(){
              var x; 
              var y;
              var piza;
              var extra;
                 if(document.getElementById("pequena").checked){
                    x=5;
                    piza="Pequena";
                 }   
                 if(document.getElementById("media").checked){
                    x=7;
                    piza= "Média";
                 }   
                 if(document.getElementById("grande").checked){
                   x=9;
                   piza= "Grande";
                 }  
           	          if(document.getElementById("2").checked){
           	             y=0.40;
           	             extra=2;
           	          }
           	          if(document.getElementById("3").checked){
           	             y=0.60;
           	             extra=3;
           	          }   
           	          if(document.getElementById("4").checked){
           	             y=0.80;
           	             extra=4;
           	          }   
           	          if(document.getElementById("5").checked){
           	             y=1.0;
           	             extra=5;
                      }
           	
           	 var total=x+y; 
           	 
           	 document.getElementById("total").value = total + " €";
           	 document.getElementById("mensagem").value = "     *******Pizaria Ramalho*******\n\nDados do Pedido\nPiza: " + piza + "\nIngredientes: " + extra + "\nTotal do Pedido: " + total + " €\n\n*******Obrigado e Volte Sempre!*******";
           }
               
                
     </script>
     </div>
     <br><br>
      
<div class="rodape" >Pizaria Ramalho&reg;&nbsp;&nbsp;Todos os Direitos Reservados</div>      
</body>
</html>