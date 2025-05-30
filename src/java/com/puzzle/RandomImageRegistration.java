/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.puzzle;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Java
 */
public class RandomImageRegistration extends HttpServlet {

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
            out.println("<title>Servlet RandomImageRegistration</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RandomImageRegistration at " + request.getContextPath() + "</h1>");
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
       
        
        
        
        
        
        
              String name = null;
             String[] nn= new String[5];
        HttpSession session1 = request.getSession(true);
        
           Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        
         String Username=session1.getAttribute("Username").toString();
        String Account=session1.getAttribute("Account_No").toString();
        
        System.err.println("UserName"+Username);
       System.err.println("Account"+Account);
        
       
       //D:\SoftwarePuzzle\web\images
        String TempUploadDirectory = "d:\\SoftwarePuzzle";
         
        System.out.println("AAAAAAAAAAAAAAAAAAAAA" + TempUploadDirectory);
        File file1 = new File(TempUploadDirectory);
        if (!(file1.exists())) {
            file1.mkdir();
        }
        
        
         TempUploadDirectory = "d:\\SoftwarePuzzle\\web";
         
        System.out.println("AAAAAAAAAAAAAAAAAAAAA" + TempUploadDirectory);
        File file = new File(TempUploadDirectory);
        if (!(file.exists())) {
            file.mkdir();
        }
        
        TempUploadDirectory = "d:\\SoftwarePuzzle\\web\\images";
         
        System.out.println("AAAAAAAAAAAAAAAAAAAAA" + TempUploadDirectory);
        File file3 = new File(TempUploadDirectory);
        if (!(file3.exists())) {
            file3.mkdir();
        }
        
         TempUploadDirectory = "d:\\SoftwarePuzzle\\web\\images\\Random";
         
        System.out.println("AAAAAAAAAAAAAAAAAAAAA" + TempUploadDirectory);
        File file4 = new File(TempUploadDirectory);
        if (!(file4.exists())) {
            file4.mkdir();
        }
        
        
        
        
        
        
        
        TempUploadDirectory = TempUploadDirectory+"\\"+Account;
         
        System.out.println("AAAAAAAAAAAAAAAAAAAAA" + TempUploadDirectory);
        File file2 = new File(TempUploadDirectory);
        if (!(file2.exists())) {
            file2.mkdir();
        }
        
        int count=0;
        
   
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
               // String nn = "";
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        
                        name = new File(item.getName()).getName();
                        item.write(new File(TempUploadDirectory + File.separator + name));
                        nn[count]=name;
                        System.out.println("Random Image Name List ==============="+count+"==="+nn[count]);
                        count++;
                    }
                    //System.out.println("file name 1 is"+nn[count]);
                }
               // System.out.println("file name 1 is"+nn[0]);
                // System.out.println("file name 1 is"+nn[1]);
            }
            
            
            
            catch (Exception ex) 
            {
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }
        
        
        
    }
        
        else
        {
            System.out.println(" File not Upload");
        }
        
        
        try
        {
            
        
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/softwarepuzzle","root","password");
           st=con.createStatement();
          String qr="update registration set image1='"+nn[0]+"',image2 ='"+nn[1]+"' ,image3 ='"+nn[2]+"' ,image4 ='"+nn[3]+"' ,image5 ='"+nn[4]+"' where accno = '"+Account+"'";
          //update table emp set salary=2000 where empid=200"
           int count1 = st.executeUpdate(qr);
         if(count1>0)
            {
                 //session1.setAttribute("AccNo",Account);
           response.sendRedirect("registration_successfully.jsp");
                System.out.println("if statement");
          
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
