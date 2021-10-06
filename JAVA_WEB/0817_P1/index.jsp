<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*" %> 
<%@page import ="java.text.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Restaurante Paga Pouco</title>
<link rel="icon" href="icones/pp.ico">
<style>
    body{
    margin: 0px;
    background-color:#FEF5E7;
    }
    #div1{
     background-color:#F39C12;
     width:100%;
     color:white;
     font-size:24px;
     font-family: Colibri, Verdana, Arial;
     padding: 8px;
 }
    #div2{
     text-align:center;
     font-family: 'comic sans ms';
     color:orange;
     font-size:18px;
 }
    #div3{
     text-align:center;
     font-family: 'comic sans ms';
     color:orange;
     font-size:14px;
 }
 
 input[type=submit],input[type=reset]{
        background-color:orange;
        color:white;
        font-size:14px;
        padding:10px;
        border:none;
        }
 
</style>
</head>
<body>
    <div id="div1">
        Paga Pouco
    </div> 
    <div id="div2"><br>
        <%
            Calendar cal=Calendar.getInstance();
            int ds=cal.get(Calendar.DAY_OF_WEEK);
        
        switch(ds){
            
            
            case 1:
        		out.println("Hoje é Domingo!<br>");
        		out.println("O prato do dia é Peixe Frito!<br>");
        		out.println("<img src='imagens/canguru.png'>");
        		break;
        	case 2:
        		out.println("Hoje é Segunda-Feira!<br>");
        		out.println("O prato do dia é Bacalhau com Todos!<br>");
        		out.println("<img src='imagens/bacalhau.png'>");
        		break;
        	case 3:
        		out.println("Hoje é Terça-Feira!<br>");
        		out.println("O prato do dia é Lula Recheada!<br>");
        		out.println("<img src='imagens/lontra.png'>");
        		break;
        	case 4:
        		out.println("Hoje é Quarta-Feira!<br>");
        		out.println("O prato do dia é Ovos Escalfados!<br>");
        		out.println("<img src='imagens/redon.png'>");
        		break;
        	case 5:
        		out.println("Hoje é Quinta-Feira!<br>");
        		out.println("O prato do dia é Carapaus Assados!<br>");
        		out.println("<img src='imagens/sardinhas.jpg'>");
        		break;
        	case 6:
        		out.println("Hoje é Sexta-Feira!<br>");
        		out.println("O prato do dia é Tainha Assada com Batatas!<br>");
        		out.println("<img src='imagens/tainhas.jpg'>");
        		break;
        	case 7:
        		out.println("Hoje é Sábado!<br>");
        		out.println("O prato do dia é Medalhão ao Queijo!<br>");
        		out.println("<img src='imagens/cabra.jpg'>");
        		break;
        	default:
        		out.println("Erro!");
        		break;
        }
        %>
        </div>
        <div id="div3">
        <br><i>Faça aqui a sua reserva<br></i>
        <form method="POST" action="reservar.jsp">
             <br>Data<br>
             <input type="date" name="datareserva"><br>
             <br>Email<br>
             <input type="email" name="mail"><br>
             <br>Nº Pessoas<br>
             <input type="number" name="pessoas" style="width:50px"><br>
             <br>Refeição<br>
             <select  name="refeicao" style="width:80px">
             <option value="A">Almoço</option>
             <option value="B">Jantar</option>
             </select><br>
             <br><input type="submit" value="Reservar">
             <input type="reset" value="Limpar">
             
        </form>
    </div>
    

</body>
</html>