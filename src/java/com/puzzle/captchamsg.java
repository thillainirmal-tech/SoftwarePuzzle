/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.puzzle;

import static com.puzzle.Login.properties;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Java
 */
public class captchamsg extends HttpServlet {
static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
         HttpSession session1=request.getSession();
         System.out.println("asdfasdfasdfasd");
          response.sendRedirect("Index.jsp");
           String regemail=session1.getAttribute("regemail").toString();
           
           System.out.println("asdfasd msg"+regemail);
          
          ///////////////Mail/////////////////////////////////////
            ///////////////////////////////////////////////////////
            
            
             try
             {
      final String  from="thillai@tech";
               final String password="webinar@2020";
               final String to="thillai@tech";
                      
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(regemail));
         message.setSubject("Alert msg");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText("someone may have logged into your Account captcha level 2 Security");
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
     
             }
             catch(Exception ex)
        {
            //ex.printStackTrace();
            System.out.println(ex);
        }
            //////////////////////////////////////////////////////
            
            //Mail end
            ///////////////////////////////////////////////////
          
          
          
    }

   

}
