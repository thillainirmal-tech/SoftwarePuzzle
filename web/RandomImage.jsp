<%-- 
    Document   : RandomImage
    Created on : 8 Mar, 2016, 11:35:37 AM
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
        //String user="kalai";
            %>

<div class="wrapper">
	<div class="container">
		<h1>RANDOM IMAGE REGISTRATION </h1>
                <h1>WELCOME <%=user%></h1>
		
		<form  method="post" action="RandomImageRegistration" enctype="multipart/form-data" >
                <br>
    
		 <td><div align="center">RANDOM IMAGE1</div></td>  
    
			
                        <input type="file" required title="Image1 required"  placeholder="image select1" name="image1" id="RegUpass " accept="image/*">
                        
                 <td><div align="center">RANDOM IMAGE2</div></td>  
    
			
                        <input type="file" required title="Image2 required"  placeholder="image select2" name="image2" id="RegUpass " accept="image/*">
                
                        
                 <td><div align="center">RANDOM IMAGE3</div></td>  
    
			
                        <input type="file" required title="Image2 required"  placeholder="image select3" name="image3" id="RegUpass " accept="image/*">
                
                 <td><div align="center">RANDOM IMAGE4</div></td>  
    
			
                        <input type="file" required title="Image3 required"  placeholder="image select4" name="image4" id="RegUpass " accept="image/*">
                
                 <td><div align="center">RANDOM IMAGE5</div></td>  
    
			
                        <input type="file" required title="Image4 required"  placeholder="image select5" name="image5" id="RegUpass " accept="image/*">
                                
                                
                        
                        
                         
                        
                         
                        <br>
                        
   
		    <button type="submit" value="LogIn" id="Ulogin">Login </button>
		    	    	    
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
