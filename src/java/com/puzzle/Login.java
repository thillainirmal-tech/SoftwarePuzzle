/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.puzzle;

import static com.puzzle.Registration.properties;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;
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
public class Login extends HttpServlet {
private String dbURL = "jdbc:mysql://localhost:3306/softwarepuzzle";
    private String dbUser = "root";
    private String dbPass = "Pantech@987";
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
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     HttpSession session1=request.getSession();
        
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        
        try
        {
            int  c=0, d=0, swap=0,n=100,p=0,swapp=0;
            int array[] = new int[n];
            int arrayp[] = new int[n];
         
            String AccoutNo=session1.getAttribute("AccoutNo").toString();
           String Username=request.getParameter("UserName");
            String Password=request.getParameter("PassWord");
         // String AccountNo=request.getParameter("AccoutNo");
            System.out.println("Account is  ="+AccoutNo);
          System.out.println("Username="+Username+"    "+"password ="+Password);
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/softwarepuzzle","root","password");
            st=con.createStatement();
            
           //rs=st.executeQuery("Select * from registration where accno='"+AccoutNo+'"');
            rs=st.executeQuery("Select * from registration where accno='"+AccoutNo+"'");
           //where username='"+Username+"' and password='"+Password+"'");
          if(rs.next())
            {
               String dname=rs.getString("username");
               String dpws=rs.getString("password");
               String regemail =rs.getString("email");
             
          char[] charbdname = dname.toCharArray();
          char[] charbdpes  = dpws.toCharArray();
            Arrays.sort(charbdname);
            Arrays.sort(charbdpes);
            String newWordname = new String(charbdname);
            String newWordpws = new String(charbdpes);
       
            for (c = 0,p=0; c < n; c++) 
            for (c = 0; c < ( n - 1 ); c++) {
         for (d = 0; d < n - c - 1; d++) {
        if ((array[d] > array[d+1])&((array[d] > array[d+1])))
        {
          swap       = array[d];
          array[d]   = array[d+1];
          array[d+1] = swap;      
           swapp       = arrayp[d];
          arrayp[d]   = arrayp[d+1];
          arrayp[d+1]          = swapp;
        }
        }
        }
            char[] charjspname = Username.toCharArray();
            char[] charjsppes= Password.toCharArray();
            Arrays.sort(charjspname);
            Arrays.sort(charjsppes);
            String newWordname1 = new String(charjspname);
            String newWordpws1 = new String(charjsppes);
            
            
                         if((newWordname.equals(newWordname1))&&(newWordpws.equals(newWordpws1)))
             {
                 System.out.println("Successful");
                 
                 session1.setAttribute("Account_no", AccoutNo);
                 session1.setAttribute("regemail",regemail);
                 response.sendRedirect("captchaiamge.jsp");
             }
              
                else
             {
                 
                 
                   ///////////////Mail/////////////////////////////////////
            ///////////////////////////////////////////////////////
            
             final String  from="thillai05@gmail.com";
               final String password="admin@pwd";
               final String to="thillai05@gmail.com";
           
           
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
         message.setText("someone may have logged into your Account level 1 Security");
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
     
            
            //////////////////////////////////////////////////////
            
            //Mail end
            ///////////////////////////////////////////////////
                 
                 
                 
                    response.sendRedirect("Index.jsp");
                 
                 
                 
                  System.out.println("failed");
                 
                 
                 
             }
             
               
            }
           else
            {
                
            }
            
        }
        catch(Exception ex)
        {
            //ex.printStackTrace();
            System.out.println(ex);
        }
        
        
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
