<%-- 
    Document   : summa
    Created on : 27 Feb, 2016, 10:55:01 PM
    Author     : Java
--%>

<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="org.bouncycastle.jce.provider.JDKKeyFactory.RSA"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>






<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>xgallery</title>

</head>
<body>
<div id ="container">
  <div id = "navdiv">
    <ul class = "mainlinks">
      <li><a href="Index.jsp" >home</a></li>
    </ul>
  </div>
    
    
    
    
    
  <div id="content">
    <ul id="picturelist">
        
        <%
      // String user=session.getAttribute("username").toString();
        %>
        
        
        <%   Blob image = null; 
            byte[ ] imgData = null ; 
            
        HttpSession session1=request.getSession(true); 
       String Username="asdf";
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;  
try
{                                       
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/softwarepuzzle","root","Pantech@987");
             st=con.createStatement();
             rs=st.executeQuery("Select * from registration where username='"+Username+"'");
             
             if(rs.next())
               {
          String group=rs.getString("username");
          System.out.println("name xcvbxcvb ===="+group);
          image = rs.getBlob("puzzleimage");
System.out.println("asdfasdfasdfasdfasdf");
        imgData = image.getBytes(1,(int)image.length());
        // display the image

        response.setContentType("image/jpg");

    OutputStream o = response.getOutputStream();

    o.write(imgData);

    o.flush();

    o.close();

            %>
           
                              
            <% }  
             
             else
             {
                  System.out.println("else");
             }
             
           }
           catch(Exception  ex)
             {
               System.out.println(ex.getMessage());
             }
            %>
        
        
        
        
        
        
        
        
        
        
    
    </ul>
  </div>
</div>
</body>
</html>


