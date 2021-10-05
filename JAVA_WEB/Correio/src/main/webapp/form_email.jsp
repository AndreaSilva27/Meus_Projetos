<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Enviar Email com JavaMail</title>
</head>
<body>
    <form method="POST" action="enviamail.jsp">
       <table>
           <tr>
               <td>Para/To:</td>
               <td><input type="email" name="txt_para" required></td>
           <tr>
            
           <tr>
               <td>Assunto/Subject:</td>
               <td><input type="text" name="txt_assunto"></td>
           <tr>
           
           <tr>
               <td>Mensagem/Message:</td>
               <td><textarea rows="10" name="txt_mensagem"></textarea></td>
           <tr>
           
           <tr> 
               <td><input type="submit" value="Enviar"></td>
               <td><input type="reset" value="Cancelar"></td>
           </tr>  
                
       </table>
    </form>
</body>
</html>