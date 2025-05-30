<%-- 
    Document   : puzzleimagereg
    Created on : 7 Mar, 2016, 7:30:29 PM
    Author     : Java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>SoftWare Puzzle</title>
    
        <link rel="stylesheet" href="css/Login_1.css">
        
        <script type="text/javascript">
               

</script>
        


</head>
<body>
<%
            String user=session.getAttribute("Username").toString();
       
            %>

<div class="wrapper">
	<div class="container">
		<h1>Image Registration Form  <%=user%></h1>
		
		<form  method="post" action="ImageRegistration" enctype="multipart/form-data" >
                <br>
    
		 <td><div align="center">SELECT CAPTCHA IMAGE </div></td>  
    
			
                        <input type="file" required title="Captcha required"  placeholder="Captcha image select" name="Cimage" id="RegUpass " accept="image/*">
                        
                         <td><div align="center">Puzzle IMAGE </div></td>  
                         
                        <input type="file" required title="Captcha required"  placeholder="Captcha image select" name="Puzzle" id="RegUpass " accept="image/*">
                        
                        <br>
                        
   
		    <button type="submit" value="LogIn" id="Ulogin">Submit</button>
		    	    	    
			<br>
			<br>
				
				<a href="Index.jsp">Home</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				
				<a href="RegisterLoginForm.jsp">Reset</a>
			<br>
			<br>
			
			
			 
			
			

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


