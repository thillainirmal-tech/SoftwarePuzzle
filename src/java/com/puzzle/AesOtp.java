/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.puzzle;

import static com.puzzle.Login.properties;
import static com.puzzle.captchamsg.properties;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.Random;
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
public class AesOtp extends HttpServlet {
    
    Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session1=request.getSession();
 
        
         String regemail=session1.getAttribute("regemail").toString();
           
           System.out.println("asdfasd msg"+regemail);
           
           
           
            String Account_no=session1.getAttribute("Account_no").toString();
           
           System.out.println("asdfasd aco"+Account_no);
        
String dCase = "abcdefghijklmnopqrstuvwxyz";
   String uCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 Random r=new  Random();  
        String pass = "";
		 while (pass.length () != 8)
{
            int rPick = r.nextInt(2);
            if (rPick == 0){
                int spot = r.nextInt(26);
                pass += dCase.charAt(spot);
            } else if (rPick == 1) {
                int spot = r.nextInt (26);
                pass += uCase.charAt(spot);

            }
        }


        System.out.println("OTP "+pass); 
        
         try
             {
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/softwarepuzzle","root","Pantech@987");
           st=con.createStatement();
          String qr="update registration set otp='"+pass+"' where accno = '"+Account_no+"'";
          //update table emp set salary=2000 where empid=200"
           int count1 = st.executeUpdate(qr);
         if(count1>0)
            {
                 response.sendRedirect("OTP.jsp");
                System.out.println("ifsdfgsdfgdfgdfg statement");
          
                 ///////////////Mail/////////////////////////////////////
            ///////////////////////////////////////////////////////
            
            
              
              final String  from="chennai.training@pantechmail.com";
               final String password="webinar@2020";
               final String to="chennai.training@pantechmail.com";
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(regemail));
         message.setSubject("OTP MESSAGE");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText(pass);
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
     
            
            //////////////////////////////////////////////////////
            
            //Mail end
            ///////////////////////////////////////////////////
                
                
                
            }
         else
         {
              System.out.println("else statement");
         }
                 
                 
             
             }
             catch(Exception ex)
        {
            //ex.printStackTrace();
            System.out.println(ex);
        }
           
          
        
        
        
        
        
        
        
        
    }

  

}
