/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.puzzle;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.commondb.Common_DB;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import javax.servlet.ServletException;
    import javax.servlet.annotation.MultipartConfig;
    import javax.servlet.annotation.WebServlet;
    import javax.servlet.http.HttpServlet;
     import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;
    import javax.servlet.http.Part;
import com.puzzle.Recognization;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.imageio.ImageIO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.oreilly.servlet.MultipartRequest;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Java
 */

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class Registration extends HttpServlet {
// database connection settings
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
            out.println("<title>Servlet Registration</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registration at " + request.getContextPath() + "</h1>");
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
        // gets values of text fields
        //JSP INFORMATION 
        HttpSession session1 = request.getSession(true);
         String name = null;
           try{
         
         
      /*  String reguser1="asdf";
         final String UPLOAD_DIRECTORY = "D:/" +reguser1;
           File file = new File(UPLOAD_DIRECTORY);
           if (!(file.exists())) {
            file.mkdir();
        }
       
           if (ServletFileUpload.isMultipartContent(request)) {
           
                String nn = "";
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        name = new File(item.getName()).getName();
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
                        nn = name;
                        
                        System.out.println("deva your file upload file name"+name);
                    }
                }
            }
           */
         
      
       System.out.println("hioiio");
    
       
       int Accont_NO=1;
            String reguser=request.getParameter("UserName");
            String regpass=request.getParameter("PassWord");
            String regdob=request.getParameter("dob");
            String regdob1=request.getParameter("dob1");
            String regdob2=request.getParameter("dob2");
            String reggender=request.getParameter("Gender");
            String regage=request.getParameter("Age");
            String regemail=request.getParameter("email");
            String regmobile=request.getParameter("mobileno");
            
            String regadd;
            regadd = request.getParameter("Address");
            String regcity=request.getParameter("city");
            String regstate=request.getParameter("state");
            String regnation=request.getParameter("nation");
            System.out.println("The no Is = "+Accont_NO);
            System.out.println("The name Is = "+reguser);
            System.out.println("The pws Is  =  "+regpass);
            System.out.println("The dob Is  =  "+regdob);
            System.out.println("The dob1 Is  =  "+regdob1);
            System.out.println("The dob2 Is  =  "+regdob2);
            System.out.println("The Genter Is  =  "+reggender);
            System.out.println("The age Is  =  "+regage);
            

            System.out.println("The email Is  =  "+regemail);
            System.out.println("The mobile Is  =  "+regmobile);
            System.out.println("The Address Is  =  "+regadd);
            System.out.println("The city Is  =  "+regcity);
            System.out.println("The state Is  =  "+regstate);
            System.out.println("The nation Is  =  "+regnation);
            
            
            InputStream inputStream = null; // input captcha stream of the upload file
            InputStream inputStream1 = null;// inpu puzzle image stream of the upload file
            

     // obtains the upload file part in this multipart request
       
           
            /*
           //AccountNo Generation
            */
            
            
            
              
                               ArrayList list=new ArrayList();
                               ResultSet rs2=Common_DB.ViewTable("softwarepuzzle","registration");          
                               while(rs2.next())            
                                {
                                  int n=rs2.getInt(1);              
                                  list.add(n);             
                                }
                               if(!(list.isEmpty())) 
                               {
                               for(int ij=0; ij<list.size(); ij++)                   
                                {
                                
                                    System.out.println("AccountNo======"+list.get(ij));
                                    Accont_NO=(int) list.get(ij);
                                 } 
                                System.out.println("last Account No Is "+Accont_NO);
                                Accont_NO=Accont_NO+1;
                               }
                               
                              
                                else {                                 
                               
                                     }
                             /////////////////////////////////////////////////////////////////////////end AccountNo
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
         
        System.out.println("111111asdf");
     Connection conn = null; // connection to the database
      // message will be sent back to client

      
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            
           
            
            
            
            
            
            
            
            
            
            
            

           String sql=("INSERT INTO registration (accno, username, password, dob,gender,age,email,mobile,address,city,state,nation) values (?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?,?)");
         PreparedStatement statement = conn.prepareStatement(sql);
         
         statement.setInt(1,Accont_NO);
         statement.setString(2,reguser);
         statement.setString(3,regpass);
         statement.setString(4,regdob);
         statement.setString(5,reggender);
          statement.setString(6,regage);
          statement.setString(7,regemail);
           statement.setString(8,regmobile);
            statement.setString(9,regadd);
             statement.setString(10,regcity);
              statement.setString(11,regstate);
               statement.setString(12,regnation);
          
         
       // statement.setString(3, Key);

        
        

        // sends the statement to the database server
        int row = statement.executeUpdate();
        
        if (row > 0) {
            
       
            
            
            ///////////////Mail/////////////////////////////////////
            ///////////////////////////////////////////////////////
            
            
              
               final String  from="prabuit05@gmail.com";
               final String password="yogeshprabu";
               final String to="prabuit05@gmail.com";
           
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(regemail));
         message.setSubject("public key:" + "Private key");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText("Name == "+reguser+"\n"+"Pws =="+regpass+"\n"+"And Your  Account No =="+Accont_NO);
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
     
            
            //////////////////////////////////////////////////////
            
            //Mail end
            ///////////////////////////////////////////////////
            
            
            
            
            
            System.out.println(" File Upload Successfully");
            
            response.sendRedirect("puzzleimagereg.jsp");
            
            
            session1.setAttribute("Account_No",Accont_NO);
            session1.setAttribute("Username",reguser);
            
            
        }
        
        else
        {
            
            System.err.println(" mail send failed");
        }
      } catch (Exception  ex) {
        
          System.out.println("Error :"+ex);
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
