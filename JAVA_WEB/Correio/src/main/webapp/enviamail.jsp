<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@page import="javax.mail.*" %>    
<%@page import="javax.mail.internet.*" %>
<%@page import="java.util.*" %>  

      
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Enviar Email</title>
</head>
<body>
    <%
        //criar uma var para guardar a situação do envio do email
        String resultado;
        
        //obter os dados do formulário
        final String para=request.getParameter("txt_para");
        final String assunto=request.getParameter("txt_assunto");
        final String mensagem=request.getParameter("txt_mensagem");
        
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
              resultado="Mensagem foi enviada com sucesso!";
              
        }
        catch(MessagingException e){
        	 resultado=e.getMessage();
        }
          out.println(resultado);
    %>
</body>
</html>