<%-- 
    Document   : captchaiamge
    Created on : 7 Feb, 2016, 11:33:31 AM
    Author     : Java
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>




<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>xgallery</title>
<link href="images/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
    
    <%
            String Account_NO=session.getAttribute("Account_no").toString();
        //String user="kalai";
            %>
            
<div id ="container">
  <div id = "navdiv">
    <ul class = "mainlinks">
      <li><a href="Index.jsp" >home <%=Account_NO %></a></li>
    </ul>
  </div>
    
    
    
    
    
  <div id="content">
    <ul id="picturelist">
        
        
        
        
        
        
        
        <%
          
            
            ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<6; i++) {
            list.add(new Integer(i));
        }
        Collections.shuffle(list);
        for (int i=0; i<6; i++) {
        
          %><%if(list.get(i)==0)
          {%>
          
          
          
          
          <li><a href="PuzzleAes.jsp"><img src="images/puzzle/<%=Account_NO%>/<%=list.get(i)%>.jpg" alt="mesas in the desert"/></a></li>
         <% }
          else
          {%>
          <li><a href="captchamsg"><img src="images/Random/<%=Account_NO%>/<%=list.get(i)%>.jpg" alt="mesas in the desert"/></a></li>
         <% }
          }
        
          %>
            
             <div>				
				<button type="submit" id="login">Submit</button>
	</div>
          
          
    
    </ul>
  </div>
</div>
</body>
</html>

