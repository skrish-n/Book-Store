package com.inoesis.sendmail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
	public static void sendMail(String to,String msg){
		 Properties property=new Properties();
		 property.put("mail.smtp.host", "smtp.gmail.com");
		 property.put("mail.smtp.socketFactory.port", "465");
		 property.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		 property.put("mail.smtp.auth", "true");
		 property.put("mail.smtp.port", "465");
		 
		 Session session=Session.getDefaultInstance(property, new javax.mail.Authenticator() {    
	         protected PasswordAuthentication getPasswordAuthentication() {    
	         return new PasswordAuthentication("saik@gmail.com","asdf123");  
	         }    
	        });    
		 //compose message
		 try {    
	         MimeMessage message = new MimeMessage(session);    
	         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
	         message.setSubject("feedback");    
	         message.setText(msg);    
	         //send message  
	         Transport.send(message);    
	         System.out.println("message sent successfully");    
	        } catch (MessagingException e) {throw new RuntimeException(e);}    
	           
	  }  
	public static void main(String[] args) {
	
	
	     sendMail("bhabani.prasad93@gmail.com","How r u?");  
	    
	
	}

}
