<%-- 
    Document   : AdminLogin
    Created on : 4 Feb, 2016, 10:55:58 PM
    Author     : Java
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>SoftWare Puzzle</title>
    
        <link rel="stylesheet" href="css/Login_2.css">
        
        <script type="text/javascript">
               

</script>
        


</head>
<body>


<div class="wrapper">
	<div class="container">
		<h1>AdminLogin</h1>
		
		<form name="form" method="post" action="AdminLogin"  id ="frm">			
			<input type="text" required title="Username required"  placeholder="User Name" name="UserName" id="adminUname" >
			<input type="password" required title="Username required"  placeholder="Password" name="Password" id="adminUpws" >
			
		    <button type="submit" value="LogIn" id="Ulogin">Login </button>
		    	    	    
			
			

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