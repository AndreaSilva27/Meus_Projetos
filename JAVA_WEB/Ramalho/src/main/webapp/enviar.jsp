<%@ page language="java" contentType="text/html; charset=utf-8"
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
<title>Pizaria Ramalho Envio do Pedido</title>
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
    <div >
      <%
         // codigo do Email
        //criar uma var para guardar a situação do envio do email
        String resultado;
        
        //obter os dados do formulário
        final String para=request.getParameter("email");
        final String assunto=request.getParameter("assunto");
        final String mensagem=request.getParameter("mensagem");
        
        // o utilizador e a password do email que vamos usar
        final String de="pizariaramalho@gmail.com";
        final String password="Ab123$567!";
        
        //definir o smtp do servidor
        String host="smtp.gmail.com";
        
        //criar uma instância da classe properties para configurar o smtp
        Properties p=new Properties();
        p.put("mail.smtp.host",host);
        p.put("mail.transport.protocol","smtp");
        p.put("mail.smtp.auth","true");
        p.put("mail.smtp.starttls.enable","true");
        p.put("mail.user",de);
        p.put("mail.password",password);
        p.put("mail.port","465");  //pode usar a porta 587
        
        //criar sessão
        Session ms=Session.getInstance(p,new Authenticator(){
        	protected PasswordAuthentication getPasswordAuthentication(){
        		return new PasswordAuthentication(de,password);
        	}
        });
        
        
        //envio do email
        try{
            MimeMessage msg=new MimeMessage(ms);
              //personalizar o de/from
              msg.setFrom(new InternetAddress(de));
              //personalizar o para /to
              msg.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
              //personalizar o assunto
              msg.setSubject(assunto);
              //mensagem
              msg.setText(mensagem);
              //enviar
              Transport.send(msg);
              resultado="<h1 style='color:linen;text-align:left;font-size:200%'>Mensagem foi enviada com sucesso!</h1>";
              
        }
        catch(MessagingException e){
        	 resultado=e.getMessage();
        }
          out.println(resultado);
    %>
    
    
    </div>
    <div>
    
    <%
    
        // codigo da base de dados
     
     Connection cn=ligacaoMySql.criarLigacaoMySql();
     Statement st=cn.createStatement();
     String wpiza=request.getParameter("piza");
     String wextra=request.getParameter("extra");
     String wtotal=request.getParameter("total");
     String wdata=request.getParameter("data");
     String wcontato=request.getParameter("contato");
     String wemail=request.getParameter("email");
     
     if(wpiza==null || wextra==null  ||wtotal==null || wdata==null || wcontato==null || wemail==null   ){
    	 
     
     %>
     <script>
     document.getElementById('aviso').style.visibility='hidden';
     </script>
     <%
     }
     else{
     try{
     st.executeUpdate("insert into pedido(piza,extra,total,data,contato,email) values ('"+wpiza+"','"+wextra+"','"+wtotal+"' ,'"+wdata+"','"+wcontato+"','"+wemail+"' )");
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:green'>Pedido Registado!</h2>";
     
     </script>
     <%
     }
     catch(Exception e){
     %>
     <script>
     document.getElementById('aviso').style.visibility='visible';
     document.getElementById('aviso').innerHTML="<br><br><h2 style='color:firebrick'>Erro ao registar pedido!</h2>";
     
     </script>
     <%
     }
     }
     %>
     <br><br><br><br><a href="index.jsp" style="color:linen; font-size:200%">Novo Pedido</a>
     </div>
</body>
</html>