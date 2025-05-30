<%-- 
    Document   : Login
    Created on : 4 Feb, 2016, 7:17:01 PM
    Author     : Java
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>SoftWare Puzzle</title>
    
        <link rel="stylesheet" href="css/Login.css">
        
        <script type="text/javascript">
               

</script>
        


</head>
<body>

<%
           String AccoutNo=session.getAttribute("AccNo").toString();
           System.out.println("checking acconut no =="+AccoutNo);
           session.setAttribute("AccoutNo",AccoutNo);
            %>
<div class="wrapper">
	<div class="container">
		<h1>Welcome</h1>
		
		<form name="form" method="post" action="Login"  id ="frm">			
			<input type="text" required title="Username required"  placeholder="Username " name="UserName" id="Uname" >
			<input type="password" required title="Password required"  placeholder="Password" name="PassWord" id="Upass">
		    <button type="submit" value="LogIn" id="Ulogin">Login </button>
		    	    	    
			<br>
			<br>
				<a href="Index.jsp">Home Page</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				
				
				<a href="Login.jsp">Reset</a>
			<br>
			<br>
			<a href="#">Forgot PassWord?</a>
			
			
			
			

		</form>
		
		
		
		
		
	</div>
					
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    
    
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

     
        <script src="js/Login.js"></script>

</body>
</html>